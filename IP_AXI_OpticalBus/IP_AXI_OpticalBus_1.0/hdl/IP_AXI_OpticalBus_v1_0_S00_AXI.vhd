library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IP_AXI_OpticalBus_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 6
	);
	port (
		-- Users to add ports here
        CE_external : in std_logic;                         -- разрешение работы
        CLK_external : in std_logic;                        -- синхросигнал
        DATA_external : in std_logic_vector(3 downto 0);    -- параллельно/последовательная шина;
        ERROR_external : in std_logic;                      -- ошибка
        SYN_external : in std_logic;                        -- фазировка ШИМ
        
        CE : out std_logic := '1';                         -- разрешение работы
        CLK_out : out std_logic := '1';                    -- синхросигнал
        DATA : out std_logic_vector(3 downto 0) := x"0";   -- параллельно/последовательная шина;
        ERROR : out std_logic  := '0';                     -- ошибка
        SYN : out std_logic  := '1';                       -- фазировка ШИМ

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end IP_AXI_OpticalBus_v1_0_S00_AXI;

architecture arch_imp of IP_AXI_OpticalBus_v1_0_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 3;
	------------------------------------------------
	---- Signals for user logic register space example
	signal ReceiveCheckID :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterData0 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterData1 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterData2 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterData3 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal ControlCRCtoCPU :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"0000000F";
	signal ErrorToCPU :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal ReceivingLineBusy :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitingLineBusy :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
	signal CE_external_prev : std_logic := '1';
	signal CLK_external_prev  : std_logic := '1';
	
	signal ReceiveResetCntCLK :std_logic_vector(7 downto 0) := x"00";                         -- счетчик задержки тактирующих сигналов
	signal ReceiveResetCntCE :std_logic_vector(23 downto 0) := x"000000";                     -- счетчик задержки сигналов рарешения
	type   Receive is (ReceiveWaiting, ReceiveData, ReceiveCRC, CheckCRC);   
	signal ReceiveState: Receive := ReceiveWaiting;
	
	signal ReceiveBitCnt : integer range 0 to 31 := 0;                              -- счетчик битов приема
	signal ReceiveCntCRCKey : integer range 0 to 39 := 0;                                  -- счетчик битов при подсчете CRC

    signal ReceiveCRCKey0 : std_logic_vector(7 downto 0) := x"FF";                  -- ключи для CRC
    signal ReceiveCRCKey1 : std_logic_vector(7 downto 0) := x"FF";
    signal ReceiveCRCKey2 : std_logic_vector(7 downto 0) := x"FF";
    signal ReceiveCRCKey3 : std_logic_vector(7 downto 0) := x"FF";
	signal DataReceived : std_logic := '0';                                            -- Сигнал о получении данных и начале проверки CRC
	
	signal RegisterDataBuf0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);         -- регистры записи данных с линии
	signal RegisterDataBuf1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterDataBuf2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterDataBuf3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
	
	signal RegisterCRCBuf0 : std_logic_vector(7 downto 0);                             -- регистры записи CRC с линии
	signal RegisterCRCBuf1 : std_logic_vector(7 downto 0);                             
	signal RegisterCRCBuf2 : std_logic_vector(7 downto 0);
	signal RegisterCRCBuf3 : std_logic_vector(7 downto 0);
	
	signal RegisterDataTempBuf0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);     -- регистры обработки ключом
	signal RegisterDataTempBuf1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterDataTempBuf2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal RegisterDataTempBuf3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
	signal LatchSuccessfulMessage : std_logic := '0';
	signal LatchSuccessfulMessage_prev : std_logic := '0';
	signal ReceiveCountSuccessfulMessage : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitCountSuccessfulMessage : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
	signal slv_reg5_prev : std_logic := '0';
	
	type   Transmit is (TransmitWaiting, TransmitDataStart, TransmitData, TransmitCRC);   
	signal TransmitState: Transmit := TransmitWaiting;
	
	signal TransmitData0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitDataBuf0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitData1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitDataBuf1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitData2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitDataBuf2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitData3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal TransmitDataBuf3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
	signal TransmitCheckID : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
	signal TransmitCRCKey0 : std_logic_vector(7 downto 0) := x"FF";                  -- ключи для CRC
    signal TransmitCRCKey1 : std_logic_vector(7 downto 0) := x"FF";
    signal TransmitCRCKey2 : std_logic_vector(7 downto 0) := x"FF";
    signal TransmitCRCKey3 : std_logic_vector(7 downto 0) := x"FF";
	signal DataPreparedToSend : std_logic := '0'; 
	
	signal TransmitBitCnt : integer range -1 to 31 := 0;                              -- счетчик битов приема
	signal TransmitCntCRCKey : integer range 0 to 39 := 0;                                  -- счетчик битов при подсчете CRC
	
	signal CountDivCLK : std_logic_vector(7 downto 0) := x"00";                        -- счетчик делителя 
	signal CountDivCLKconst : std_logic_vector(7 downto 0) := x"07";                   -- значение, до которого считает счетчик делителя
	signal CLKsignal : std_logic := '1';                                               -- защелка для тактирования протокола
	
	signal ErrorTimeOutCLK : std_logic := '1';
	signal ErrorTimeOutCE : std_logic := '1'; 
	signal ErrorCE : std_logic := '1'; 
	--------------------------------------------------
	---- Number of Slave Registers 16
	signal slv_reg0	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg1	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg2	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg4	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg5	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg6	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg7	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg8	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg9	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg10	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg11	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg12	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg13	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg14	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg15	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	: std_logic;

begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	      aw_en <= '1';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	           axi_awready <= '1';
	           aw_en <= '0';
	        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
	           aw_en <= '1';
	           axi_awready <= '0';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      slv_reg0 <= (others => '0');
	      slv_reg1 <= (others => '0');
	      slv_reg2 <= (others => '0');
	      slv_reg3 <= (others => '0');
	      slv_reg4 <= (others => '0');
	      slv_reg5 <= (others => '0');
	      slv_reg6 <= (others => '0');
	      slv_reg7 <= (others => '0');
	      slv_reg8 <= (others => '0');
	      slv_reg9 <= (others => '0');
	      slv_reg10 <= (others => '0');
	      slv_reg11 <= (others => '0');
	      slv_reg12 <= (others => '0');
	      slv_reg13 <= (others => '0');
	      slv_reg14 <= (others => '0');
	      slv_reg15 <= (others => '0');
	    else
	      loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	      if (slv_reg_wren = '1') then
	        case loc_addr is
	          when b"0000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"0001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 1
	                slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"0010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 2
	                slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"0011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"0100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 4
	                slv_reg4(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"0101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 5
	                slv_reg5(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"0110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 6
	                slv_reg6(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"0111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 7
	                slv_reg7(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 8
	                slv_reg8(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 9
	                slv_reg9(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 10
	                slv_reg10(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 11
	                slv_reg11(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 12
	                slv_reg12(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 13
	                slv_reg13(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 14
	                slv_reg14(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"1111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 15
	                slv_reg15(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when others =>
	            slv_reg0 <= slv_reg0;
	            slv_reg1 <= slv_reg1;
	            slv_reg2 <= slv_reg2;
	            slv_reg3 <= slv_reg3;
	            slv_reg4 <= slv_reg4;
	            slv_reg5 <= slv_reg5;
	            slv_reg6 <= slv_reg6;
	            slv_reg7 <= slv_reg7;
	            slv_reg8 <= slv_reg8;
	            slv_reg9 <= slv_reg9;
	            slv_reg10 <= slv_reg10;
	            slv_reg11 <= slv_reg11;
	            slv_reg12 <= slv_reg12;
	            slv_reg13 <= slv_reg13;
	            slv_reg14 <= slv_reg14;
	            slv_reg15 <= slv_reg15;
	        end case;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"0000" =>
	        reg_data_out <= ReceiveCheckID;                            -- идентификатор текущей посылки приема (пока не используется)
	      when b"0001" =>
	        reg_data_out <= RegisterData0;                             -- данные
	      when b"0010" =>
	        reg_data_out <= RegisterData1;                             -- данные
	      when b"0011" =>
	        reg_data_out <= RegisterData2;                             -- данные
	      when b"0100" =>
	        reg_data_out <= RegisterData3;                             -- данные
	      when b"0101" =>
	        reg_data_out <= ControlCRCtoCPU;                           -- контрольная сумма
	      when b"0110" =>
	        reg_data_out <= ErrorToCPU;                                -- ошибки
	      when b"0111" =>
	        reg_data_out <= ReceiveCheckID;                            -- идентификатор текущей посылки приема, должен совпадать с первым регистром
	      when b"1000" =>
	        reg_data_out <= ReceivingLineBusy;                         -- идет прием сообщения если 1
	      when b"1001" =>
	        reg_data_out <= TransmitingLineBusy;                       -- идет передача сообщения если 1
	      when b"1010" =>
	        reg_data_out <= ReceiveCountSuccessfulMessage;             -- счетчик успешных приемов
	      when b"1011" =>
	        reg_data_out <= TransmitCountSuccessfulMessage;            -- счетчик успешных отправок               
	      when b"1100" =>
	        reg_data_out <= TransmitCheckID;                           -- идентификатор последней посылки, должен проверяться когда TransmitingLineBusy = 0, а счетчик TransmitCountSuccessfulMessage изменился на единицу
	      when b"1101" =>
	        reg_data_out <= slv_reg13;
	      when b"1110" =>
	        reg_data_out <= slv_reg14;
	      when b"1111" =>
	        reg_data_out <= slv_reg15;
	      when others =>
	        reg_data_out  <= (others => '0');
	    end case;
	end process; 

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	        -- When there is a valid read address (S_AXI_ARVALID) with 
	        -- acceptance of read address by the slave (axi_arready), 
	        -- output the read dada 
	        -- Read address mux
	          axi_rdata <= reg_data_out;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;


	-- Add user logic here
	
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	   if (CE_external = '0') then
          -- проверка таймаута тактирующего сигнала
               if CLK_external_prev = CLK_external then 
                    if ReceiveResetCntCLK < x"0F" then
                       ReceiveResetCntCLK <= ReceiveResetCntCLK + 1;
--                       ErrorTimeOutCLK <= '0';
                    else 
                       ReceiveState <= ReceiveWaiting;
                       ErrorTimeOutCLK <= '1';
                    end if;	  
               else 			
                   ReceiveResetCntCLK <= x"00";
               end if;          
          -- состояние протокола
                       case ReceiveState is
                           when ReceiveWaiting => 
                               ReceiveBitCnt <= 31;
                               ReceiveCRCKey0 <= x"FF";
                               ReceiveCRCKey1 <= x"FF";
                               ReceiveCRCKey2 <= x"FF";
                               ReceiveCRCKey3 <= x"FF";
                               DataReceived <= '0';
                               ReceiveCntCRCKey <= 0;
                               LatchSuccessfulMessage <= '0';
                               ReceivingLineBusy(0) <= '0'; 	                       
                               if CE_external = '0' and CE_external_prev = '1' then
                                   ReceiveState <= ReceiveData;
--                                   ErrorCE <= '0';
                               end if;  
                           when ReceiveData =>
                               if CLK_external = '1' and CLK_external_prev = '0' then
                                   RegisterDataBuf0(ReceiveBitCnt) <= Data_external(0);
                                   RegisterDataBuf1(ReceiveBitCnt) <= Data_external(1);
                                   RegisterDataBuf2(ReceiveBitCnt) <= Data_external(2);
                                   RegisterDataBuf3(ReceiveBitCnt) <= Data_external(3);
                                   if ReceiveBitCnt /= 0 then
                                       ReceiveBitCnt <= ReceiveBitCnt - 1;
                                   else
                                       ReceiveBitCnt <= 7;
                                       ReceiveState <= ReceiveCRC;
                                   end if;
                               end if;
                               ReceivingLineBusy(0) <= '1';
                           when ReceiveCRC =>  
                               if ReceiveBitCnt = 7 then
                                   RegisterDataTempBuf0 <= RegisterDataBuf0;
                                   RegisterDataTempBuf1 <= RegisterDataBuf1;
                                   RegisterDataTempBuf2 <= RegisterDataBuf2;
                                   RegisterDataTempBuf3 <= RegisterDataBuf3;
                                   DataReceived <= '1';
                               end if;
                               if CLK_external = '1' and CLK_external_prev = '0' then
                                   RegisterCRCBuf0(ReceiveBitCnt) <= Data_external(0);
                                   RegisterCRCBuf1(ReceiveBitCnt) <= Data_external(1);
                                   RegisterCRCBuf2(ReceiveBitCnt) <= Data_external(2);
                                   RegisterCRCBuf3(ReceiveBitCnt) <= Data_external(3);
                                   if ReceiveBitCnt /= 0 then
                                       ReceiveBitCnt <= ReceiveBitCnt - 1;
                                   else
                                       ReceiveBitCnt <= 31;
                                       ReceiveState <= CheckCRC;
                                   end if;
                               end if;
                           when CheckCRC => 
                               if DataReceived = '0' then
                                    if (RegisterCRCBuf0 = ReceiveCRCKey0) then
                                        ControlCRCtoCPU(0) <= '0';
                                        RegisterData0 <= RegisterDataBuf0;
                                    else  
                                        ControlCRCtoCPU(0) <= '1';
                                    end if;
                                    if (RegisterCRCBuf1 = ReceiveCRCKey1) then
                                        ControlCRCtoCPU(1) <= '0';
                                        RegisterData1 <= RegisterDataBuf1;
                                    else  
                                        ControlCRCtoCPU(1) <= '1';
                                    end if;
                                    if (RegisterCRCBuf2 = ReceiveCRCKey2) then
                                        ControlCRCtoCPU(2) <= '0';
                                        RegisterData2 <= RegisterDataBuf2;
                                    else  
                                        ControlCRCtoCPU(2) <= '1';
                                    end if;
                                    if (RegisterCRCBuf3 = ReceiveCRCKey3) then
                                        ControlCRCtoCPU(3) <= '0';
                                        RegisterData3 <= RegisterDataBuf3;
                                    else  
                                        ControlCRCtoCPU(3) <= '1';
                                    end if;
                                    LatchSuccessfulMessage <= '1';
                                    ReceiveState <= ReceiveWaiting;
                                else
                                    ReceiveState <= ReceiveWaiting;
                                end if;
                            when others => 	
                                ReceiveState <= ReceiveWaiting;		   
                        end case;     
               
               if DataReceived = '1' then
                   if ReceiveCRCKey0(7) = '1' then
                        ReceiveCRCKey0(7) <= ReceiveCRCKey0(6) xor '0';
                        ReceiveCRCKey0(6) <= ReceiveCRCKey0(5) xor '0';
                        ReceiveCRCKey0(5) <= ReceiveCRCKey0(4) xor '1';
                        ReceiveCRCKey0(4) <= ReceiveCRCKey0(3) xor '1';
                        ReceiveCRCKey0(3) <= ReceiveCRCKey0(2) xor '0';
                        ReceiveCRCKey0(2) <= ReceiveCRCKey0(1) xor '0';
                        ReceiveCRCKey0(1) <= ReceiveCRCKey0(0) xor '0';
                        ReceiveCRCKey0(0) <= RegisterDataTempBuf0(31) xor '1';
                    else
                        ReceiveCRCKey0(7) <= ReceiveCRCKey0(6) xor '0';
                        ReceiveCRCKey0(6) <= ReceiveCRCKey0(5) xor '0';
                        ReceiveCRCKey0(5) <= ReceiveCRCKey0(4) xor '0';
                        ReceiveCRCKey0(4) <= ReceiveCRCKey0(3) xor '0';
                        ReceiveCRCKey0(3) <= ReceiveCRCKey0(2) xor '0';
                        ReceiveCRCKey0(2) <= ReceiveCRCKey0(1) xor '0';
                        ReceiveCRCKey0(1) <= ReceiveCRCKey0(0) xor '0';
                        ReceiveCRCKey0(0) <= RegisterDataTempBuf0(31) xor '0';
                    end if;
                    
                    if ReceiveCRCKey1(7) = '1' then
                        ReceiveCRCKey1(7) <= ReceiveCRCKey1(6) xor '0';
                        ReceiveCRCKey1(6) <= ReceiveCRCKey1(5) xor '0';
                        ReceiveCRCKey1(5) <= ReceiveCRCKey1(4) xor '1';
                        ReceiveCRCKey1(4) <= ReceiveCRCKey1(3) xor '1';
                        ReceiveCRCKey1(3) <= ReceiveCRCKey1(2) xor '0';
                        ReceiveCRCKey1(2) <= ReceiveCRCKey1(1) xor '0';
                        ReceiveCRCKey1(1) <= ReceiveCRCKey1(0) xor '0';
                        ReceiveCRCKey1(0) <= RegisterDataTempBuf1(31) xor '1';
                    else
                        ReceiveCRCKey1(7) <= ReceiveCRCKey1(6) xor '0';
                        ReceiveCRCKey1(6) <= ReceiveCRCKey1(5) xor '0';
                        ReceiveCRCKey1(5) <= ReceiveCRCKey1(4) xor '0';
                        ReceiveCRCKey1(4) <= ReceiveCRCKey1(3) xor '0';
                        ReceiveCRCKey1(3) <= ReceiveCRCKey1(2) xor '0';
                        ReceiveCRCKey1(2) <= ReceiveCRCKey1(1) xor '0';
                        ReceiveCRCKey1(1) <= ReceiveCRCKey1(0) xor '0';
                        ReceiveCRCKey1(0) <= RegisterDataTempBuf1(31) xor '0';
                    end if;
                    
                    if ReceiveCRCKey2(7) = '1' then
                        ReceiveCRCKey2(7) <= ReceiveCRCKey2(6) xor '0';
                        ReceiveCRCKey2(6) <= ReceiveCRCKey2(5) xor '0';
                        ReceiveCRCKey2(5) <= ReceiveCRCKey2(4) xor '1';
                        ReceiveCRCKey2(4) <= ReceiveCRCKey2(3) xor '1';
                        ReceiveCRCKey2(3) <= ReceiveCRCKey2(2) xor '0';
                        ReceiveCRCKey2(2) <= ReceiveCRCKey2(1) xor '0';
                        ReceiveCRCKey2(1) <= ReceiveCRCKey2(0) xor '0';
                        ReceiveCRCKey2(0) <= RegisterDataTempBuf2(31) xor '1';
                    else
                        ReceiveCRCKey2(7) <= ReceiveCRCKey2(6) xor '0';
                        ReceiveCRCKey2(6) <= ReceiveCRCKey2(5) xor '0';
                        ReceiveCRCKey2(5) <= ReceiveCRCKey2(4) xor '0';
                        ReceiveCRCKey2(4) <= ReceiveCRCKey2(3) xor '0';
                        ReceiveCRCKey2(3) <= ReceiveCRCKey2(2) xor '0';
                        ReceiveCRCKey2(2) <= ReceiveCRCKey2(1) xor '0';
                        ReceiveCRCKey2(1) <= ReceiveCRCKey2(0) xor '0';
                        ReceiveCRCKey2(0) <= RegisterDataTempBuf2(31) xor '0';
                    end if;
                    
                    if ReceiveCRCKey3(7) = '1' then
                        ReceiveCRCKey3(7) <= ReceiveCRCKey3(6) xor '0';
                        ReceiveCRCKey3(6) <= ReceiveCRCKey3(5) xor '0';
                        ReceiveCRCKey3(5) <= ReceiveCRCKey3(4) xor '1';
                        ReceiveCRCKey3(4) <= ReceiveCRCKey3(3) xor '1';
                        ReceiveCRCKey3(3) <= ReceiveCRCKey3(2) xor '0';
                        ReceiveCRCKey3(2) <= ReceiveCRCKey3(1) xor '0';
                        ReceiveCRCKey3(1) <= ReceiveCRCKey3(0) xor '0';
                        ReceiveCRCKey3(0) <= RegisterDataTempBuf3(31) xor '1';
                    else
                        ReceiveCRCKey3(7) <= ReceiveCRCKey3(6) xor '0';
                        ReceiveCRCKey3(6) <= ReceiveCRCKey3(5) xor '0';
                        ReceiveCRCKey3(5) <= ReceiveCRCKey3(4) xor '0';
                        ReceiveCRCKey3(4) <= ReceiveCRCKey3(3) xor '0';
                        ReceiveCRCKey3(3) <= ReceiveCRCKey3(2) xor '0';
                        ReceiveCRCKey3(2) <= ReceiveCRCKey3(1) xor '0';
                        ReceiveCRCKey3(1) <= ReceiveCRCKey3(0) xor '0';
                        ReceiveCRCKey3(0) <= RegisterDataTempBuf3(31) xor '0';
                    end if;
                    
                    
                    for i in 31  downto 1 loop
                        RegisterDataTempBuf0(i) <= RegisterDataTempBuf0(i - 1) xor '0';	
                        RegisterDataTempBuf1(i) <= RegisterDataTempBuf1(i - 1) xor '0';
                        RegisterDataTempBuf2(i) <= RegisterDataTempBuf2(i - 1) xor '0';
                        RegisterDataTempBuf3(i) <= RegisterDataTempBuf3(i - 1) xor '0';
                    end loop;
                        RegisterDataTempBuf0(0) <= '0';
                        RegisterDataTempBuf1(0) <= '0';
                        RegisterDataTempBuf2(0) <= '0';
                        RegisterDataTempBuf3(0) <= '0';
                    if ReceiveCntCRCKey < 39  then 
                        ReceiveCntCRCKey <= ReceiveCntCRCKey + 1;
                    else
                        DataReceived <= '0';
                        ReceiveCntCRCKey <= 0;
                    end if;		  		
               end if;
           end if;
           -- проверка таймаута сигнала разрешения
           if CE_external_prev = CE_external then 
               if ReceiveResetCntCE < x"FFFFFF" then                            -- значение счетчика завышено, по результатам испытаний необходимо изменить
                    ReceiveResetCntCE <= ReceiveResetCntCE + 1;
--                    ErrorTimeOutCE <= '0';
               else 
                    ReceiveState <= ReceiveWaiting;
                    ErrorTimeOutCE <= '1';
               end if;	  
           else 			
               ReceiveResetCntCE <= x"000000";
           end if;   
           -- проверка разрешения приема	   
           if CE_external = '1' and ReceiveState /= ReceiveWaiting then 
               ReceiveState <= ReceiveWaiting;
               ErrorCE <= '1';
           end if; 
           -- сброс ошибок
           if slv_reg6(0) = '1' then
               ErrorCE <= '0';
               ErrorTimeOutCE <= '0';
               ErrorTimeOutCLK <= '0'; 
               ControlCRCtoCPU <= x"00000000";
           end if;
           
	       LatchSuccessfulMessage_prev <= LatchSuccessfulMessage;
	       CE_external_prev <= CE_external;
	       CLK_external_prev <= CLK_external;
	   end if;
	end process;
	
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	       if ControlCRCtoCPU /= x"00000000" or ErrorTimeOutCLK = '1' or ErrorTimeOutCE = '1' or ErrorCE = '1' then
	           ERROR <= '1';
	       else
	           ERROR <= '0';
	       end if; 	  
	  end if;
	end process;
	
	ErrorToCPU(0) <= ErrorTimeOutCLK;
	ErrorToCPU(1) <= ErrorTimeOutCE;
	ErrorToCPU(2) <= ErrorCE;
	
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	       if LatchSuccessfulMessage_prev = '0' and LatchSuccessfulMessage = '1' and ControlCRCtoCPU = x"00000000" then
	           ReceiveCountSuccessfulMessage <= ReceiveCountSuccessfulMessage + 1;
	       end if; 	  
	  end if;
	end process;
	
	----------------------------------------------------------------------------------------------------------------------
	
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then	        
	       case TransmitState is
	           when TransmitWaiting =>
	                TransmitBitCnt <= 31;
				    TransmitCRCKey0 <= x"FF";                  -- ключи для CRC
                    TransmitCRCKey1 <= x"FF";
                    TransmitCRCKey2 <= x"FF";
                    TransmitCRCKey3 <= x"FF";
	                CE <= '1';
	                CountDivCLK <= x"00";
	                CLKsignal <= '1'; 
	                TransmitBitCnt <= 31;
	                TransmitingLineBusy(0) <= '0';
	                if slv_reg5(0) = '1' and slv_reg5_prev = '0'  then
                       TransmitState <= TransmitDataStart;
                       TransmitData0 <= slv_reg0;
                       TransmitDataBuf0 <= slv_reg0;
                       TransmitData1 <= slv_reg1;
                       TransmitDataBuf1 <= slv_reg1;
                       TransmitData2 <= slv_reg2;
                       TransmitDataBuf2 <= slv_reg2;
                       TransmitData2 <= slv_reg3;
                       TransmitDataBuf2 <= slv_reg3;
                       TransmitCheckID <= slv_reg4;
                       DataPreparedToSend <= '1';
                       TransmitingLineBusy(0) <= '1';
                   end if;
	           when TransmitDataStart =>
	                CE <= '0';
	                TransmitState <= TransmitData;	                
	           when TransmitData =>	 
	               if TransmitBitCnt = -1 then   
	                    TransmitBitCnt <= 7;
                        TransmitState <= TransmitCRC;                       
                   else 
                        if CountDivCLK < CountDivCLKconst and CLKsignal = '1' then
                           DATA(0) <= TransmitData0(TransmitBitCnt);
                           DATA(1) <= TransmitData1(TransmitBitCnt);
                           DATA(2) <= TransmitData2(TransmitBitCnt);
                           DATA(3) <= TransmitData3(TransmitBitCnt);
                           CLK_out <= '0';
                           CountDivCLK <= CountDivCLK + 1;
                        elsif CountDivCLK = CountDivCLKconst and CLKsignal = '1' then	                   
                           CountDivCLK <= x"00";
                           CLKsignal <= '0';	                   
                        elsif CountDivCLK < CountDivCLKconst and CLKsignal = '0' then 
                           CLK_out <= '1'; 
                           CountDivCLK <= CountDivCLK + 1;   
                        elsif CountDivCLK = CountDivCLKconst and CLKsignal = '0' then  
                           CountDivCLK <= x"00";
                           CLKsignal <= '1';
                           TransmitBitCnt <= TransmitBitCnt - 1;
                        end if; 
                        
                   end if;
               when TransmitCRC =>   
                   if TransmitBitCnt = -1 then  
                       TransmitState <= TransmitWaiting; 
                       TransmitCountSuccessfulMessage <= TransmitCountSuccessfulMessage + 1;
                   else 
                        if CountDivCLK < CountDivCLKconst and CLKsignal = '1' then
                           DATA(0) <= TransmitCRCKey0(TransmitBitCnt);
                           DATA(1) <= TransmitCRCKey1(TransmitBitCnt);
                           DATA(2) <= TransmitCRCKey2(TransmitBitCnt);
                           DATA(3) <= TransmitCRCKey3(TransmitBitCnt);
                           CLK_out <= '0';
                           CountDivCLK <= CountDivCLK + 1;
                        elsif CountDivCLK = CountDivCLKconst and CLKsignal = '1' then	                   
                           CountDivCLK <= x"00";
                           CLKsignal <= '0';	                   
                        elsif CountDivCLK < CountDivCLKconst and CLKsignal = '0' then 
                           CLK_out <= '1'; 
                           CountDivCLK <= CountDivCLK + 1;   
                        elsif CountDivCLK = CountDivCLKconst and CLKsignal = '0' then  
                           CountDivCLK <= x"00";
                           CLKsignal <= '1';
                           TransmitBitCnt <= TransmitBitCnt - 1;
                        end if;
                        
                   end if;                  
	           when others => 	
                    TransmitState <= TransmitWaiting;	
	       end case;
	       if DataPreparedToSend = '1' then
	           if TransmitCRCKey0(7) = '1' then
					TransmitCRCKey0(7) <= TransmitCRCKey0(6) xor '0';
					TransmitCRCKey0(6) <= TransmitCRCKey0(5) xor '0';
					TransmitCRCKey0(5) <= TransmitCRCKey0(4) xor '1';
					TransmitCRCKey0(4) <= TransmitCRCKey0(3) xor '1';
					TransmitCRCKey0(3) <= TransmitCRCKey0(2) xor '0';
					TransmitCRCKey0(2) <= TransmitCRCKey0(1) xor '0';
					TransmitCRCKey0(1) <= TransmitCRCKey0(0) xor '0';
					TransmitCRCKey0(0) <= TransmitDataBuf0(31) xor '1';
				else
					TransmitCRCKey0(7) <= TransmitCRCKey0(6) xor '0';
					TransmitCRCKey0(6) <= TransmitCRCKey0(5) xor '0';
					TransmitCRCKey0(5) <= TransmitCRCKey0(4) xor '0';
					TransmitCRCKey0(4) <= TransmitCRCKey0(3) xor '0';
					TransmitCRCKey0(3) <= TransmitCRCKey0(2) xor '0';
					TransmitCRCKey0(2) <= TransmitCRCKey0(1) xor '0';
					TransmitCRCKey0(1) <= TransmitCRCKey0(0) xor '0';
					TransmitCRCKey0(0) <= TransmitDataBuf0(31) xor '0';
				end if;
				
				if TransmitCRCKey1(7) = '1' then
					TransmitCRCKey1(7) <= TransmitCRCKey1(6) xor '0';
					TransmitCRCKey1(6) <= TransmitCRCKey1(5) xor '0';
					TransmitCRCKey1(5) <= TransmitCRCKey1(4) xor '1';
					TransmitCRCKey1(4) <= TransmitCRCKey1(3) xor '1';
					TransmitCRCKey1(3) <= TransmitCRCKey1(2) xor '0';
					TransmitCRCKey1(2) <= TransmitCRCKey1(1) xor '0';
					TransmitCRCKey1(1) <= TransmitCRCKey1(0) xor '0';
					TransmitCRCKey1(0) <= TransmitDataBuf1(31) xor '1';
				else
					TransmitCRCKey1(7) <= TransmitCRCKey1(6) xor '0';
					TransmitCRCKey1(6) <= TransmitCRCKey1(5) xor '0';
					TransmitCRCKey1(5) <= TransmitCRCKey1(4) xor '0';
					TransmitCRCKey1(4) <= TransmitCRCKey1(3) xor '0';
					TransmitCRCKey1(3) <= TransmitCRCKey1(2) xor '0';
					TransmitCRCKey1(2) <= TransmitCRCKey1(1) xor '0';
					TransmitCRCKey1(1) <= TransmitCRCKey1(0) xor '0';
					TransmitCRCKey1(0) <= TransmitDataBuf1(31) xor '0';
				end if;
				
				if TransmitCRCKey2(7) = '1' then
					TransmitCRCKey2(7) <= TransmitCRCKey2(6) xor '0';
					TransmitCRCKey2(6) <= TransmitCRCKey2(5) xor '0';
					TransmitCRCKey2(5) <= TransmitCRCKey2(4) xor '1';
					TransmitCRCKey2(4) <= TransmitCRCKey2(3) xor '1';
					TransmitCRCKey2(3) <= TransmitCRCKey2(2) xor '0';
					TransmitCRCKey2(2) <= TransmitCRCKey2(1) xor '0';
					TransmitCRCKey2(1) <= TransmitCRCKey2(0) xor '0';
					TransmitCRCKey2(0) <= TransmitDataBuf2(31) xor '1';
				else
					TransmitCRCKey2(7) <= TransmitCRCKey2(6) xor '0';
					TransmitCRCKey2(6) <= TransmitCRCKey2(5) xor '0';
					TransmitCRCKey2(5) <= TransmitCRCKey2(4) xor '0';
					TransmitCRCKey2(4) <= TransmitCRCKey2(3) xor '0';
					TransmitCRCKey2(3) <= TransmitCRCKey2(2) xor '0';
					TransmitCRCKey2(2) <= TransmitCRCKey2(1) xor '0';
					TransmitCRCKey2(1) <= TransmitCRCKey2(0) xor '0';
					TransmitCRCKey2(0) <= TransmitDataBuf2(31) xor '0';
				end if;
				
				if TransmitCRCKey3(7) = '1' then
					TransmitCRCKey3(7) <= TransmitCRCKey3(6) xor '0';
					TransmitCRCKey3(6) <= TransmitCRCKey3(5) xor '0';
					TransmitCRCKey3(5) <= TransmitCRCKey3(4) xor '1';
					TransmitCRCKey3(4) <= TransmitCRCKey3(3) xor '1';
					TransmitCRCKey3(3) <= TransmitCRCKey3(2) xor '0';
					TransmitCRCKey3(2) <= TransmitCRCKey3(1) xor '0';
					TransmitCRCKey3(1) <= TransmitCRCKey3(0) xor '0';
					TransmitCRCKey3(0) <= TransmitDataBuf3(31) xor '1';
				else
					TransmitCRCKey3(7) <= TransmitCRCKey3(6) xor '0';
					TransmitCRCKey3(6) <= TransmitCRCKey3(5) xor '0';
					TransmitCRCKey3(5) <= TransmitCRCKey3(4) xor '0';
					TransmitCRCKey3(4) <= TransmitCRCKey3(3) xor '0';
					TransmitCRCKey3(3) <= TransmitCRCKey3(2) xor '0';
					TransmitCRCKey3(2) <= TransmitCRCKey3(1) xor '0';
					TransmitCRCKey3(1) <= TransmitCRCKey3(0) xor '0';
					TransmitCRCKey3(0) <= TransmitDataBuf3(31) xor '0';
				end if;
				
				
				for i in 31  downto 1 loop
					TransmitDataBuf0(i) <= TransmitDataBuf0(i - 1) xor '0';	
					TransmitDataBuf1(i) <= TransmitDataBuf1(i - 1) xor '0';
					TransmitDataBuf2(i) <= TransmitDataBuf2(i - 1) xor '0';
					TransmitDataBuf3(i) <= TransmitDataBuf3(i - 1) xor '0';
				end loop;
					TransmitDataBuf0(0) <= '0';
					TransmitDataBuf1(0) <= '0';
					TransmitDataBuf2(0) <= '0';
					TransmitDataBuf3(0) <= '0';
				if TransmitCntCRCKey < 39  then 
					TransmitCntCRCKey <= TransmitCntCRCKey + 1;
				else
					DataPreparedToSend <= '0';
					TransmitCntCRCKey <= 0;
				end if;		  		
	       end if;
	       slv_reg5_prev <= slv_reg5(0);      
	  end if;
	end process;
	
	

	-- User logic ends

end arch_imp;
