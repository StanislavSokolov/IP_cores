library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IP_AXI_ADC_v1_0_S00_AXI is
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
		--clk : in std_logic;
		sclk : out std_logic := '0'; 
		a0 : out std_logic := '0';
		not_cs : out std_logic := '0';
		
		even_updated : out std_logic := '0';	
		odd_updated : out std_logic := '0';
		
		ch0_1 : out std_logic_vector (11 downto 0) := (others => '0');
		ch2_3 : out std_logic_vector (11 downto 0) := (others => '0');
		ch4_5 : out std_logic_vector (11 downto 0) := (others => '0');
		ch6_7 : out std_logic_vector (11 downto 0) := (others => '0');
		ch8_9 : out std_logic_vector (11 downto 0) := (others => '0');
		ch10_11 : out std_logic_vector (11 downto 0) := (others => '0');
		ch12_13 : out std_logic_vector (11 downto 0) := (others => '0');
		ch14_15 : out std_logic_vector (11 downto 0) := (others => '0');
		
        data_in_a0 : in std_logic; -- IO_L24N_T3_13
		data_in_b0 : in std_logic; -- IO_L24P_T3_13
		data_in_a1 : in std_logic; -- IO_L22N_T3_13
		data_in_b1 : in std_logic; -- IO_L22P_T3_13
		data_in_a2 : in std_logic; -- IO_L20N_T3_13
		data_in_b2 : in std_logic; -- IO_L20P_T3_13
		data_in_a3 : in std_logic; -- IO_L18N_T3_13
		data_in_b3 : in std_logic; -- IO_L18P_T3_13

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
end IP_AXI_ADC_v1_0_S00_AXI;

architecture arch_imp of IP_AXI_ADC_v1_0_S00_AXI is

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
	signal sclk_sign : std_logic := '1';
    signal not_cs_sign : std_logic := '1';
    signal a0_sign : std_logic := '1';
    signal odd : std_logic := '0';
    signal even : std_logic := '0';
    signal clk_div :std_logic_vector(2 downto 0);
    signal clk_sign : std_logic := '0';
    
    signal ch0 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch1 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch2 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch3 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch4 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch5 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch6 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch7 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch8 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch9 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch10 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch11 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch12 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch13 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch14 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ch15 :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
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

	process (odd, even, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"0000" =>
	        reg_data_out <= ch0;
	      when b"0001" =>
	        reg_data_out <= ch1;
	      when b"0010" =>
	        reg_data_out <= ch2;
	      when b"0011" =>
	        reg_data_out <= ch3;
	      when b"0100" =>
	        reg_data_out <= ch4;
	      when b"0101" =>
	        reg_data_out <= ch5;
	      when b"0110" =>
	        reg_data_out <= ch6;
	      when b"0111" =>
	        reg_data_out <= ch7;
	      when b"1000" =>
	        reg_data_out <= ch8;
	      when b"1001" =>
	        reg_data_out <= ch9;
	      when b"1010" =>
	        reg_data_out <= ch10;
	      when b"1011" =>
	        reg_data_out <= ch11;
	      when b"1100" =>
	        reg_data_out <= ch12;
	      when b"1101" =>
	        reg_data_out <= ch13;
	      when b"1110" =>
	        reg_data_out <= ch14;
	      when b"1111" =>
	        reg_data_out <= ch15;
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
    process(sclk_sign)

    variable receive_data_a0 : std_logic_vector (31 downto 0) := x"00000000";
    variable receive_data_b0 : std_logic_vector (31 downto 0) := x"00000000";
    variable receive_data_a1 : std_logic_vector (31 downto 0) := x"00000000";
    variable receive_data_b1 : std_logic_vector (31 downto 0) := x"00000000";
    variable receive_data_a2 : std_logic_vector (31 downto 0) := x"00000000";
    variable receive_data_b2 : std_logic_vector (31 downto 0) := x"00000000";
    variable receive_data_a3 : std_logic_vector (31 downto 0) := x"00000000";
    variable receive_data_b3 : std_logic_vector (31 downto 0) := x"00000000";

--    variable var_0 : std_logic_vector (31 downto 0) := x"00000000";
    variable i : integer := 0;
    variable state : integer := 0;

    begin
        if falling_edge(sclk_sign) then
            case state is
                when 0 to 3 =>	   
                    odd_updated <= '0';
                    odd <= '0';
                    state := state + 1;
                when 4 to 14 =>
                    receive_data_a0(11 - i) := data_in_a0;
                    receive_data_b0(11 - i) := data_in_b0;
                    receive_data_a1(11 - i) := data_in_a1;
                    receive_data_b1(11 - i) := data_in_b1;
                    receive_data_a2(11 - i) := data_in_a2;
                    receive_data_b2(11 - i) := data_in_b2;
                    receive_data_a3(11 - i) := data_in_a3;
                    receive_data_b3(11 - i) := data_in_b3;
                    i := i + 1;
                    state := state + 1;
                when 15 =>
                    receive_data_a0(0) := data_in_a0;
                    receive_data_b0(0) := data_in_b0;
                    receive_data_a1(0) := data_in_a1;
                    receive_data_b1(0) := data_in_b1;
                    receive_data_a2(0) := data_in_a2;
                    receive_data_b2(0) := data_in_b2;
                    receive_data_a3(0) := data_in_a3;
                    receive_data_b3(0) := data_in_b3;
                            
                    receive_data_a0 := x"00000fff" - receive_data_a0;
                    receive_data_b0 := x"00000fff" - receive_data_b0;
                    receive_data_a1 := x"00000fff" - receive_data_a1;
                    receive_data_b1 := x"00000fff" - receive_data_b1;
                    receive_data_a2 := x"00000fff" - receive_data_a2;
                    receive_data_b2 := x"00000fff" - receive_data_b2;
                    receive_data_a3 := x"00000fff" - receive_data_a3;
                    receive_data_b3 := x"00000fff" - receive_data_b3;
                    
                    ch1 <= receive_data_a0;
                    ch3 <= receive_data_b0;-- - 6;
                    ch5 <= receive_data_a1;
                    ch7 <= receive_data_b1;-- - 27;--37;--15;--5;--17;
                    ch9 <= receive_data_a2;-- + 1;
                    ch11 <= receive_data_b2;-- + 7;
                    ch13 <= receive_data_a3;
                    ch15 <= receive_data_b3;
                    
                    ch0_1 <= receive_data_a0(11 downto 0);
                    ch2_3 <= receive_data_b0(11 downto 0);-- - 6;
                    ch4_5 <= receive_data_a1(11 downto 0);
                    ch6_7 <= receive_data_b1(11 downto 0);-- - 27;--37;--15;--5;--17;
                    ch8_9 <= receive_data_a2(11 downto 0);-- + 1;
                    ch10_11 <= receive_data_b2(11 downto 0);-- + 7;
                    ch12_13 <= receive_data_a3(11 downto 0);
                    ch14_15 <= receive_data_b3(11 downto 0);
                    
                    i := 0;
                    state := 16;
                    even_updated <= '1';
                    even <= '1';
                when 16 to 19 =>
                    even_updated <= '0';
                    even <= '0';
                    state := state + 1;
                when 20 to 30 =>
                    receive_data_a0(11 - i) := data_in_a0;
                    receive_data_b0(11 - i) := data_in_b0;
                    receive_data_a1(11 - i) := data_in_a1;
                    receive_data_b1(11 - i) := data_in_b1;
                    receive_data_a2(11 - i) := data_in_a2;
                    receive_data_b2(11 - i) := data_in_b2;
                    receive_data_a3(11 - i) := data_in_a3;
                    receive_data_b3(11 - i) := data_in_b3;
                    i := i + 1;
                    state := state + 1;
                when 31 =>
                    receive_data_a0(0) := data_in_a0;
                    receive_data_b0(0) := data_in_b0;
                    receive_data_a1(0) := data_in_a1;
                    receive_data_b1(0) := data_in_b1;
                    receive_data_a2(0) := data_in_a2;
                    receive_data_b2(0) := data_in_b2;
                    receive_data_a3(0) := data_in_a3;
                    receive_data_b3(0) := data_in_b3;
                            
                    receive_data_a0 := x"00000fff" - receive_data_a0;
                    receive_data_b0 := x"00000fff" - receive_data_b0;
                    receive_data_a1 := x"00000fff" - receive_data_a1;
                    receive_data_b1 := x"00000fff" - receive_data_b1;
                    receive_data_a2 := x"00000fff" - receive_data_a2;
                    receive_data_b2 := x"00000fff" - receive_data_b2;
                    receive_data_a3 := x"00000fff" - receive_data_a3;
                    receive_data_b3 := x"00000fff" - receive_data_b3;
                    
                         
                    ch0 <= receive_data_a0;
                    ch2 <= receive_data_b0;
                    ch4 <= receive_data_a1;-- - 26;--36;--12;--8;--18;
                    ch6 <= receive_data_b1;
                    ch8 <= receive_data_a2;-- - 2;
                    ch10 <= receive_data_b2;
                    ch12 <= receive_data_a3;
                    ch14 <= receive_data_b3;
                    
                    ch0_1 <= receive_data_a0(11 downto 0);
                    ch2_3 <= receive_data_b0(11 downto 0);-- - 6;
                    ch4_5 <= receive_data_a1(11 downto 0);
                    ch6_7 <= receive_data_b1(11 downto 0);-- - 27;--37;--15;--5;--17;
                    ch8_9 <= receive_data_a2(11 downto 0);-- + 1;
                    ch10_11 <= receive_data_b2(11 downto 0);-- + 7;
                    ch12_13 <= receive_data_a3(11 downto 0);
                    ch14_15 <= receive_data_b3(11 downto 0);
                    
                    i := 0;
                    state := 0;	
                    odd_updated <= '1';
                    odd <= '1';
                when others =>
                    receive_data_a0 := x"00000000";
                    receive_data_b0 := x"00000000";
                    receive_data_a1 := x"00000000";
                    receive_data_b1 := x"00000000";
                    receive_data_a2 := x"00000000";
                    receive_data_b2 := x"00000000";
                    receive_data_a3 := x"00000000";
                    receive_data_b3 := x"00000000";
                    i := 0;
                    state := 0;
                end case;
            end if;
    end process;
    
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if clk_div < x"2" then
                clk_sign <= '0';
            else
                clk_sign <= '1';
            end if;
            clk_div <= clk_div + 1;
        end if;
	end process;

    process(clk_sign)

    variable state : integer := 0;
    variable var_0 : std_logic := '0';

    begin
        if rising_edge(clk_sign) then
            case state is
                when 0 =>
                    a0_sign <= '0';
                    state := 1;
                when 1 =>
                    not_cs_sign <= '0';
                    state := 2;
                when 2 =>
                    not_cs_sign <= '1';
                    state := 3;	
                when 3 =>
                    a0_sign <= '1';
                    state := 4;
                when 4 =>
                    not_cs_sign <= '0';
                    state := 5;	
                when 5 to 20 =>
                    if var_0 = '0' then
                        sclk_sign <= '0';
                        var_0 := '1';
                    else
                        sclk_sign <= '1';
                        var_0 := '0';
                        state := state + 1;
                    end if;
                when 21 =>
                    not_cs_sign <= '1';
                    state := 22;
                when 22 =>
                    a0_sign <= '0';
                    state := 23;
                when 23 =>
                    not_cs_sign <= '0';
                    state := 24;
                when 24 to 39 =>
                    if var_0 = '0' then
                        sclk_sign <= '0';
                        var_0 := '1';
                    else
                        sclk_sign <= '1';
                        var_0 := '0';
                        state := state + 1;
                    end if;
                when 40 =>
                    not_cs_sign <= '1';
                    state := 3;
                when others =>
                    not_cs_sign <= '1';
                    sclk_sign <= '0';
                    a0_sign <= '1';
                    state := 0;
                    var_0 := '0';
            end case;
        end if;
	end process;

    sclk <= sclk_sign;
    a0 <= a0_sign;
    not_cs <= not_cs_sign;
	-- User logic ends

end arch_imp;
