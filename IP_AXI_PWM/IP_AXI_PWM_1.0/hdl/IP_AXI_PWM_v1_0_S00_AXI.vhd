library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity IP_AXI_PWM_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
	);
	port (
		-- Users to add ports here
		PWM_interrupt : out std_logic := '0';
        PWM_OUT : out std_logic_vector(15 downto 0) :=  x"FFFF";
        hardware_protection : in std_logic;
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
end IP_AXI_PWM_v1_0_S00_AXI;

architecture arch_imp of IP_AXI_PWM_v1_0_S00_AXI is

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
	constant OPT_MEM_ADDR_BITS : integer := 4;
	------------------------------------------------
	---- Signals for user logic register space example
	signal counter : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";
	signal updown : std_logic := '0';
	signal updown_prev : std_logic := '0';
    signal slv_reg_buf0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf4 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf5 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf6 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf7 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf8 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf9 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf10 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf11 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf12 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf13 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf14 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_buf15 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_4 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_5 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_6 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_7 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_8 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_9 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_10 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_11 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_12 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_13 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_14 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_15 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal PWMdirection : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);                  -- �����������
    signal PWMdirection_buf : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal PWMcounterMax : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";  -- ������ ����
    signal PWMcounterMax_buf : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";
    signal PWMsource : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";      -- �������� ���: 0 - ���-��������� IP_AXI_PWM, 1 - ��� ����������, 2 - ������ ����������
    signal PWMsource_buf : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";
--    signal PWMclosing : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";     -- ��������� ���: 0 - soft, 1 - hard
--    signal PWMclosing_buf : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";
    signal PWMfromCPU : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"FFFFFFFF";     -- ���������� �� ��� ����������
    signal PWMrightControl : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"FFFFFFFF"; -- ������ ����������
    signal PWMmask : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"FFFFFFFF";        -- �����
    signal PWMmask_buf : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"FFFFFFFF";
    signal PWMcounter : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";     -- ������� ����
    signal PWMstarting : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00000000";    -- ������� �� ����� ���
    signal PWMstarting_prev : std_logic := '0';
    signal latch_start : std_logic := '0';
    signal PWM_interrupt_buf : std_logic := '0';
    signal PWM_interrupt_count : std_logic_vector(3 downto 0) := x"0";
    signal PWM_OUT_buf : std_logic_vector(15 downto 0) :=  x"0000";
    --------------------------------------------------
	---- Number of Slave Registers 32
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
	signal slv_reg16	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg17	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg18	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg19	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg20	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg21	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg22	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg23	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg24	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg25	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg26	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg27	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg28	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg29	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg30	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg31	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
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
	      slv_reg16 <= (others => '0');
	      slv_reg17 <= (others => '0');
	      slv_reg18 <= (others => '0');
	      slv_reg19 <= (others => '0');
	      slv_reg20 <= (others => '0');
	      slv_reg21 <= (others => '0');
	      slv_reg22 <= (others => '0');
	      slv_reg23 <= (others => '0');
	      slv_reg24 <= (others => '0');
	      slv_reg25 <= (others => '0');
	      slv_reg26 <= (others => '0');
	      slv_reg27 <= (others => '0');
	      slv_reg28 <= (others => '0');
	      slv_reg29 <= (others => '0');
	      slv_reg30 <= (others => '0');
	      slv_reg31 <= (others => '0');
	    else
	      loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	      if (slv_reg_wren = '1') then
	        case loc_addr is
	          when b"00000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 1
	                slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 2
	                slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 4
	                slv_reg4(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 5
	                slv_reg5(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 6
	                slv_reg6(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"00111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 7
	                slv_reg7(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 8
	                slv_reg8(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 9
	                slv_reg9(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 10
	                slv_reg10(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 11
	                slv_reg11(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 12
	                slv_reg12(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 13
	                slv_reg13(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 14
	                slv_reg14(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 15
	                slv_reg15(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 16
	                slv_reg16(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 17
	                slv_reg17(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 18
	                slv_reg18(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 19
	                slv_reg19(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 20
	                slv_reg20(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 21
	                slv_reg21(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 22
	                slv_reg22(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 23
	                slv_reg23(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11000" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 24
	                slv_reg24(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11001" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 25
	                slv_reg25(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11010" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 26
	                slv_reg26(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11011" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 27
	                slv_reg27(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11100" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 28
	                slv_reg28(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11101" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 29
	                slv_reg29(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11110" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 30
	                slv_reg30(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11111" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 31
	                slv_reg31(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
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
	            slv_reg16 <= slv_reg16;
	            slv_reg17 <= slv_reg17;
	            slv_reg18 <= slv_reg18;
	            slv_reg19 <= slv_reg19;
	            slv_reg20 <= slv_reg20;
	            slv_reg21 <= slv_reg21;
	            slv_reg22 <= slv_reg22;
	            slv_reg23 <= slv_reg23;
	            slv_reg24 <= slv_reg24;
	            slv_reg25 <= slv_reg25;
	            slv_reg26 <= slv_reg26;
	            slv_reg27 <= slv_reg27;
	            slv_reg28 <= slv_reg28;
	            slv_reg29 <= slv_reg29;
	            slv_reg30 <= slv_reg30;
	            slv_reg31 <= slv_reg31;
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

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16, slv_reg17, slv_reg18, slv_reg19, slv_reg20, slv_reg21, slv_reg22, slv_reg23, slv_reg24, slv_reg25, slv_reg26, slv_reg27, slv_reg28, slv_reg29, slv_reg30, slv_reg31, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"00000" =>
	        reg_data_out <= counter;
	      when b"00001" =>
	        reg_data_out(C_S_AXI_DATA_WIDTH-1 downto 1) <= b"0000000000000000000000000000000";
	        reg_data_out(0) <= updown;
	      when b"00010" =>
	        reg_data_out <= slv_reg2;
	      when b"00011" =>
	        reg_data_out <= slv_reg3;
	      when b"00100" =>
	        reg_data_out <= slv_reg4;
	      when b"00101" =>
	        reg_data_out <= slv_reg5;
	      when b"00110" =>
	        reg_data_out <= slv_reg6;
	      when b"00111" =>
	        reg_data_out <= slv_reg7;
	      when b"01000" =>
	        reg_data_out <= slv_reg8;
	      when b"01001" =>
	        reg_data_out <= slv_reg9;
	      when b"01010" =>
	        reg_data_out <= slv_reg10;
	      when b"01011" =>
	        reg_data_out <= slv_reg11;
	      when b"01100" =>
	        reg_data_out <= slv_reg12;
	      when b"01101" =>
	        reg_data_out <= slv_reg13;
	      when b"01110" =>
	        reg_data_out <= slv_reg14;
	      when b"01111" =>
	        reg_data_out <= slv_reg15;
	      when b"10000" =>
	        reg_data_out <= slv_reg16;
	      when b"10001" =>
	        reg_data_out <= slv_reg17;
	      when b"10010" =>
	        reg_data_out <= slv_reg18;
	      when b"10011" =>
	        reg_data_out <= slv_reg19;
	      when b"10100" =>
	        reg_data_out <= slv_reg20;
	      when b"10101" =>
	        reg_data_out <= slv_reg21;
	      when b"10110" =>
	        reg_data_out <= slv_reg22;
	      when b"10111" =>
	        reg_data_out <= slv_reg23;
	      when b"11000" =>
	        reg_data_out <= slv_reg24;
	      when b"11001" =>
	        reg_data_out <= slv_reg25;
	      when b"11010" =>
	        reg_data_out <= slv_reg26;
	      when b"11011" =>
	        reg_data_out <= slv_reg27;
	      when b"11100" =>
	        reg_data_out <= slv_reg28;
	      when b"11101" =>
	        reg_data_out <= slv_reg29;
	      when b"11110" =>
	        reg_data_out <= slv_reg30;
	      when b"11111" =>
	        reg_data_out <= slv_reg31;
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
    --! @brief Simple counter 
    -- ������� ������������ ���� � ������ ���
    process( S_AXI_ACLK ) is
    begin
        if (rising_edge (S_AXI_ACLK)) then
            if latch_start = '1' then
                if (updown = '0') then 
                    if (counter < PWMcounter) then
                        counter <= counter + 1;
                    else
                        counter <= PWMcounterMAX_buf;
                        updown <= '1';
                    end if;
                else
                    if (counter > x"00000000") then
                        counter <= counter - 1;
                    else
                        counter <= x"00000000";
                        PWMcounter <= PWMcounterMAX_buf;
                        updown <= '0';
                    end if;
                end if;
                if PWMstarting(0) = '0' and PWMstarting_prev = '1' then 
                    latch_start <= '0';
                end if;
            else 
                updown <= '0';
                PWMdirection_buf <= PWMdirection;
                PWMcounter <= PWMcounterMAX;
                PWMcounterMAX_buf <= PWMcounterMAX;
                PWMsource_buf <= PWMsource;
--                PWMclosing_buf <= PWMclosing;
                --PWMfromCPU_buf <= PWMfromCPU;
                PWMmask_buf <= PWMmask; 
                counter <= x"00000000";
                if PWMstarting(0) = '1' and PWMstarting_prev = '0' then 
                    latch_start <= '1';
                end if;
            end if;
            
            PWMstarting_prev <= PWMstarting(0);
        end if;
    end process;
    
    -- ������� ������������ ���������� ��� ��������� ����������� ���� � ������ �� ������ ��������� ��� ���
    process( S_AXI_ACLK ) is
    begin
        if (rising_edge (S_AXI_ACLK)) then
            if (updown /= updown_prev) then
                PWM_interrupt_buf <= '1';
                PWM_interrupt_count <= x"0";
                
                slv_reg_0 <= slv_reg_buf0;
                slv_reg_1 <= slv_reg_buf1;
                slv_reg_2 <= slv_reg_buf2;
                slv_reg_3 <= slv_reg_buf3;
                slv_reg_4 <= slv_reg_buf4;
                slv_reg_5 <= slv_reg_buf5;
                slv_reg_6 <= slv_reg_buf6;
                slv_reg_7 <= slv_reg_buf7;
                slv_reg_8 <= slv_reg_buf8;
                slv_reg_9 <= slv_reg_buf9;
                slv_reg_10 <= slv_reg_buf10;
                slv_reg_11 <= slv_reg_buf11;
                slv_reg_12 <= slv_reg_buf12;
                slv_reg_13 <= slv_reg_buf13;
                slv_reg_14 <= slv_reg_buf14;
                slv_reg_15 <= slv_reg_buf15;               
                
            else 
                if PWM_interrupt_buf = '1' then
                    if PWM_interrupt_count < x"4" then
                        PWM_interrupt_count <= PWM_interrupt_count + 1;
                    else
                        PWM_interrupt_buf <= '0';
                        PWM_interrupt_count <= x"0";
                    end if;
                end if;
            end if;
            updown_prev <= updown;           
        end if;
    end process;
    PWM_interrupt <= PWM_interrupt_buf;
    
    --! @brief Updating buffer regs after AXI-buf had recieved new data
    process(S_AXI_ACLK) is
    begin
        if(rising_edge (S_AXI_ACLK)) then
            if( slv_reg_wren = '0' ) then                               
                slv_reg_buf0 <= slv_reg0;
                slv_reg_buf1 <= slv_reg1;
                slv_reg_buf2 <= slv_reg2;
                slv_reg_buf3 <= slv_reg3;
                slv_reg_buf4 <= slv_reg4;
                slv_reg_buf5 <= slv_reg5;
                slv_reg_buf6 <= slv_reg6;
                slv_reg_buf7 <= slv_reg7;
                slv_reg_buf8 <= slv_reg8;
                slv_reg_buf9 <= slv_reg9;
                slv_reg_buf10 <= slv_reg10;
                slv_reg_buf11 <= slv_reg11;
                slv_reg_buf12 <= slv_reg12;
                slv_reg_buf13 <= slv_reg13;
                slv_reg_buf14 <= slv_reg14;
                slv_reg_buf15 <= slv_reg15;
                PWMdirection <= slv_reg16;
                PWMcounterMax <= slv_reg17;
                PWMsource <= slv_reg18;
                PWMfromCPU <= slv_reg19;
                PWMrightControl <= slv_reg20;
                PWMmask <= slv_reg21; 
                PWMstarting <= slv_reg22;
            end if;
        end if;
    end process;
    
    --! @brief This process compares timing buffers with counter and assigns 
    --! PWM ountputs to 0 or 1 
    process(S_AXI_ACLK) is
    begin
         if( rising_edge (S_AXI_ACLK) ) then
            if( slv_reg_buf0 > counter ) then
                if( PWMdirection_buf(0) = '0') then
                    PWM_OUT_buf(0) <= '0';
                else 
                    PWM_OUT_buf(0) <= '1';
                end if;
            else
                if( PWMdirection_buf(0) = '0') then
                    PWM_OUT_buf(0) <= '1';
                else 
                    PWM_OUT_buf(0) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf1 > counter ) then
                if( PWMdirection_buf(1) = '0') then
                    PWM_OUT_buf(1) <= '0';
                else 
                    PWM_OUT_buf(1) <= '1';
                end if;
            else
                if( PWMdirection_buf(1) = '0') then
                    PWM_OUT_buf(1) <= '1';
                else 
                    PWM_OUT_buf(1) <= '0';
                end if;
            end if;
                       
            if( slv_reg_buf2 > counter ) then
                if( PWMdirection_buf(2) = '0') then
                    PWM_OUT_buf(2) <= '0';
                else 
                    PWM_OUT_buf(2) <= '1';
                end if;
            else
                if( PWMdirection_buf(2) = '0') then
                    PWM_OUT_buf(2) <= '1';
                else 
                    PWM_OUT_buf(2) <= '0';
                end if;
            end if;
             
            if( slv_reg_buf3 > counter ) then
                if( PWMdirection_buf(3) = '0') then
                    PWM_OUT_buf(3) <= '0';
                else 
                    PWM_OUT_buf(3) <= '1';
                end if;
            else
                if( PWMdirection_buf(3) = '0') then
                    PWM_OUT_buf(3) <= '1';
                else 
                    PWM_OUT_buf(3) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf4 > counter ) then
                if( PWMdirection_buf(4) = '0') then
                    PWM_OUT_buf(4) <= '0';
                else 
                    PWM_OUT_buf(4) <= '1';
                end if;
            else
                if( PWMdirection_buf(4) = '0') then
                    PWM_OUT_buf(4) <= '1';
                else 
                    PWM_OUT_buf(4) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf5 > counter ) then
                if( PWMdirection_buf(5) = '0') then
                    PWM_OUT_buf(5) <= '0';
                else 
                    PWM_OUT_buf(5) <= '1';
                end if;
            else
                if( PWMdirection_buf(5) = '0') then
                    PWM_OUT_buf(5) <= '1';
                else 
                    PWM_OUT_buf(5) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf6 > counter ) then
                if( PWMdirection_buf(6) = '0') then
                    PWM_OUT_buf(6) <= '0';
                else 
                    PWM_OUT_buf(6) <= '1';
                end if;
            else
                if( PWMdirection_buf(6) = '0') then
                    PWM_OUT_buf(6) <= '1';
                else 
                    PWM_OUT_buf(6) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf7 > counter ) then
                if( PWMdirection_buf(7) = '0') then
                    PWM_OUT_buf(7) <= '0';
                else 
                    PWM_OUT_buf(7) <= '1';
                end if;
            else
                if( PWMdirection_buf(7) = '0') then
                    PWM_OUT_buf(7) <= '1';
                else 
                    PWM_OUT_buf(7) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf8 > counter ) then
                if( PWMdirection_buf(8) = '0') then
                    PWM_OUT_buf(8) <= '0';
                else 
                    PWM_OUT_buf(8) <= '1';
                end if;
            else
                if( PWMdirection_buf(8) = '0') then
                    PWM_OUT_buf(8) <= '1';
                else 
                    PWM_OUT_buf(8) <= '0';
                end if;
            end if;
            
           if( slv_reg_buf9 > counter ) then
                if( PWMdirection_buf(9) = '0') then
                    PWM_OUT_buf(9) <= '0';
                else 
                    PWM_OUT_buf(9) <= '1';
                end if;
            else
                if( PWMdirection_buf(9) = '0') then
                    PWM_OUT_buf(9) <= '1';
                else 
                    PWM_OUT_buf(9) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf10 > counter ) then
                if( PWMdirection_buf(10) = '0') then
                    PWM_OUT_buf(10) <= '0';
                else 
                    PWM_OUT_buf(10) <= '1';
                end if;
            else
                if( PWMdirection_buf(10) = '0') then
                    PWM_OUT_buf(10) <= '1';
                else 
                    PWM_OUT_buf(10) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf11 > counter ) then
                if( PWMdirection_buf(11) = '0') then
                    PWM_OUT_buf(11) <= '0';
                else 
                    PWM_OUT_buf(11) <= '1';
                end if;
            else
                if( PWMdirection_buf(11) = '0') then
                    PWM_OUT_buf(11) <= '1';
                else 
                    PWM_OUT_buf(11) <= '0';
                end if;
            end if;
            
            if( slv_reg_buf12 > counter ) then
                if( PWMdirection_buf(12) = '0') then
                    PWM_OUT_buf(12) <= '0';
                else 
                    PWM_OUT_buf(12) <= '1';
                end if;
            else
                if( PWMdirection_buf(12) = '0') then
                    PWM_OUT_buf(12) <= '1';
                else 
                    PWM_OUT_buf(12) <= '0';
                end if;
            end if;
                    
            if( slv_reg_buf13 > counter ) then
                if( PWMdirection_buf(13) = '0') then
                    PWM_OUT_buf(13) <= '0';
                else 
                    PWM_OUT_buf(13) <= '1';
                end if;
            else
                if( PWMdirection_buf(13) = '0') then
                    PWM_OUT_buf(13) <= '1';
                else 
                    PWM_OUT_buf(13) <= '0';
                end if;
            end if;  
            
            if( slv_reg_buf14 > counter ) then
                if( PWMdirection_buf(14) = '0') then
                    PWM_OUT_buf(14) <= '0';
                else 
                    PWM_OUT_buf(14) <= '1';
                end if;
            else
                if( PWMdirection_buf(14) = '0') then
                    PWM_OUT_buf(14) <= '1';
                else 
                    PWM_OUT_buf(14) <= '0';
                end if;
            end if;
                    
            if( slv_reg_buf15 > counter ) then
                if( PWMdirection_buf(15) = '0') then
                    PWM_OUT_buf(15) <= '0';
                else 
                    PWM_OUT_buf(15) <= '1';
                end if;
            else
                if( PWMdirection_buf(15) = '0') then
                    PWM_OUT_buf(15) <= '1';
                else 
                    PWM_OUT_buf(15) <= '0';
                end if;
            end if;        
            
         end if;
    end process;
    
    process(S_AXI_ACLK) is
    begin
         if( rising_edge (S_AXI_ACLK) ) then
            if PWMstarting(0) = '1' and hardware_protection = '0' then            
                if PWMsource_buf = x"00000000" then
                    PWM_OUT <= PWM_OUT_buf(15 downto 0) or PWMmask_buf(15 downto 0);
                elsif PWMsource_buf = x"00000001" then
                    PWM_OUT <= PWMfromCPU(15 downto 0) or PWMmask_buf(15 downto 0);
                elsif PWMsource_buf = x"00000002" then
                    PWM_OUT <= PWMrightControl(15 downto 0) or PWMmask_buf(15 downto 0);
                end if;
            else 
                PWM_OUT <= x"FFFF";
            end if;
         end if;
     end process;
	-- User logic ends

end arch_imp;
