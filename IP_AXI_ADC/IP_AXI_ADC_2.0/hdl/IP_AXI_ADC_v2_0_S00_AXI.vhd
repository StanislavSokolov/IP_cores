library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IP_AXI_ADC_v2_0_S00_AXI is
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
		
		--clk : in std_logic;
		sclk : out std_logic := '0'; 
		a0 : out std_logic := '0';
		not_cs : out std_logic := '0';
        hwp_interrupt : out std_logic := '1';
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
end IP_AXI_ADC_v2_0_S00_AXI;

architecture arch_imp of IP_AXI_ADC_v2_0_S00_AXI is

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
	signal sclk_sign : std_logic := '1';
    signal not_cs_sign : std_logic := '1';
    signal a0_sign : std_logic := '1';
    signal odd_updated : std_logic := '0';
    signal even_updated : std_logic := '0';
    signal clk_div :std_logic_vector(1 downto 0);
    
    
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
    signal errors_channel :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    
    signal setpoint_ch0_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch1_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch2_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch3_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch4_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch5_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch6_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch7_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch8_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch9_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch10_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch11_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch12_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch13_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch14_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch15_up :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    
    signal setpoint_ch0_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch1_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch2_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch3_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch4_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch5_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch6_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch7_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch8_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch9_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch10_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch11_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch12_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch13_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch14_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal setpoint_ch15_down :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
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

	process (odd_updated, even_updated, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"00000" =>
	        reg_data_out <= ch0;
	      when b"00001" =>
	        reg_data_out <= ch1;
	      when b"00010" =>
	        reg_data_out <= ch2;
	      when b"00011" =>
	        reg_data_out <= ch3;
	      when b"00100" =>
	        reg_data_out <= ch4;
	      when b"00101" =>
	        reg_data_out <= ch5;
	      when b"00110" =>
	        reg_data_out <= ch6;
	      when b"00111" =>
	        reg_data_out <= ch7;
	      when b"01000" =>
	        reg_data_out <= ch8;
	      when b"01001" =>
	        reg_data_out <= ch9;
	      when b"01010" =>
	        reg_data_out <= ch10;
	      when b"01011" =>
	        reg_data_out <= ch11;
	      when b"01100" =>
	        reg_data_out <= ch12;
	      when b"01101" =>
	        reg_data_out <= ch13;
	      when b"01110" =>
	        reg_data_out <= ch14;
	      when b"01111" =>
	        reg_data_out <= ch15;
	      when b"10000" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch0_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch0_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(0);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(16); 
              elsif slv_reg3(4) = '1' then   
                reg_data_out <= errors_channel;
              end if;  
	      when b"10001" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch1_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch1_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(1);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(17);  
              end if;  
	      when b"10010" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch2_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch2_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(2);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(18);  
              end if; 
	      when b"10011" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch3_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch3_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(3);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(19);  
              end if; 
	      when b"10100" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch4_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch4_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(4);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(20);  
              end if; 
	      when b"10101" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch5_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch5_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(5);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(21);  
              end if;
	      when b"10110" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch6_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch6_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(6);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(22);  
              end if;
	      when b"10111" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch7_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch7_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(7);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(23);  
              end if;
	      when b"11000" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch8_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch8_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(8);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(24);  
              end if;
	      when b"11001" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch9_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch9_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(9);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(25);  
              end if;
	      when b"11010" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch10_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch10_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(10);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(26);  
              end if;
	      when b"11011" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch11_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch11_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(11);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(27);  
              end if;
	      when b"11100" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch12_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch12_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(12);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(28);  
              end if;
	      when b"11101" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch13_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch13_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(13);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(29);  
              end if;
	      when b"11110" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch14_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch14_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(14);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(30);  
              end if;
	      when b"11111" =>
              if slv_reg3(0) = '1' then
                reg_data_out <= setpoint_ch15_down;
              elsif slv_reg3(1) = '1' then  
                reg_data_out <= setpoint_ch15_up;
              elsif slv_reg3(2) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(15);
              elsif slv_reg3(3) = '1' then  
                reg_data_out(31 downto 4) <= x"0000000";
                reg_data_out(3 downto 1) <= b"000";  
                reg_data_out(0) <= errors_channel(31);  
              end if;
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
--            if slv_reg17(0) = '1' then
--                maz_er0 <= '0';
--                errors_channel <= x"00000000";
--            end if;
            case state is
                when 0 to 3 =>	   
                    odd_updated <= '0';
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
                    
                    i := 0;
                    state := 16;
                    even_updated <= '1';
                    
                    -- error и errors_channel по нижней границе

                        if setpoint_ch1_down > receive_data_a0 then
                            hwp_interrupt <= '1';
                            errors_channel(1) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(1) <= '0';
                            end if;
                        end if;
                        if setpoint_ch3_down > receive_data_b0 then
                            hwp_interrupt <= '1';
                            errors_channel(3) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(3) <= '0';
                            end if;   
                        end if;
                        if setpoint_ch5_down > receive_data_a1 then
                            hwp_interrupt <= '1';
                            errors_channel(5) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(5) <= '0';
                            end if;
                        end if;
                        if setpoint_ch7_down > receive_data_b1 then
                            hwp_interrupt <= '1';
                            errors_channel(7) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(7) <= '0';
                            end if;
                        end if;
                        if setpoint_ch9_down > receive_data_a2 then
                            hwp_interrupt <= '1';
                            errors_channel(9) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(9) <= '0';
                            end if;
                        end if;
                        if setpoint_ch11_down > receive_data_b2 then
                            hwp_interrupt <= '1';
                            errors_channel(11) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(11) <= '0';
                            end if;
                        end if;
                        if setpoint_ch13_down > receive_data_a3 then
                            hwp_interrupt <= '1';
                            errors_channel(13) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(13) <= '0';
                            end if;
                        end if;
                        if setpoint_ch15_down > receive_data_b3 then
                            hwp_interrupt <= '1';
                            errors_channel(15) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(15) <= '0';
                            end if;
                        end if;
                        
                        -- error и errors_channel по верхней границе
                        
                        if setpoint_ch1_up < receive_data_a0 then
                            hwp_interrupt <= '1';
                            errors_channel(17) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(17) <= '0';
                            end if;
                        end if;
                        if setpoint_ch3_up < receive_data_b0 then
                            hwp_interrupt <= '1';
                            errors_channel(19) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(19) <= '0';
                            end if;
                        end if;
                        if setpoint_ch5_up < receive_data_a1 then
                            hwp_interrupt <= '1';
                            errors_channel(21) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(21) <= '0';
                            end if;
                        end if;
                        if setpoint_ch7_up < receive_data_b1 then
                            hwp_interrupt <= '1';
                            errors_channel(23) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(23) <= '0';
                            end if;
                        end if;
                        if setpoint_ch9_up < receive_data_a2 then
                            hwp_interrupt <= '1';
                            errors_channel(25) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(25) <= '0';
                            end if;
                        end if;
                        if setpoint_ch11_up < receive_data_b2 then
                            hwp_interrupt <= '1';
                            errors_channel(27) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(27) <= '0';
                            end if;
                        end if;
                        if setpoint_ch13_up < receive_data_a3 then
                            hwp_interrupt <= '1';
                            errors_channel(29) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(29) <= '0';
                            end if;
                        end if;
                        if setpoint_ch15_up < receive_data_b3 then
                            hwp_interrupt <= '1';
                            errors_channel(31) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(31) <= '0';
                            end if;
                        end if;
                    
                    
                    
                when 16 to 19 =>
                    even_updated <= '0';
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
                    
                    i := 0;
                    state := 0;	
                    odd_updated <= '1';
                    
                    -- error и errors_channel по нижней границе
                  
                        if setpoint_ch0_down > receive_data_a0 then
                            hwp_interrupt <= '1';
                            errors_channel(0) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(0) <= '0';
                            end if;
                        end if;
                        if setpoint_ch2_down > receive_data_b0 then
                            hwp_interrupt <= '1';
                            errors_channel(2) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(2) <= '0';
                            end if;   
                        end if;
                        if setpoint_ch4_down > receive_data_a1 then
                            hwp_interrupt <= '1';
                            errors_channel(4) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(4) <= '0';
                            end if;
                        end if;
                        if setpoint_ch6_down > receive_data_b1 then
                            hwp_interrupt <= '1';
                            errors_channel(6) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(6) <= '0';
                            end if;
                        end if;
                        if setpoint_ch8_down > receive_data_a2 then
                            hwp_interrupt <= '1';
                            errors_channel(8) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(8) <= '0';
                            end if;
                        end if;
                        if setpoint_ch10_down > receive_data_b2 then
                            hwp_interrupt <= '1';
                            errors_channel(10) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(10) <= '0';
                            end if;
                        end if;
                        if setpoint_ch12_down > receive_data_a3 then
                            hwp_interrupt <= '1';
                            errors_channel(12) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(12) <= '0';
                            end if;
                        end if;
                        if setpoint_ch14_down > receive_data_b3 then
                            hwp_interrupt <= '1';
                            errors_channel(14) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(14) <= '0';
                            end if;
                        end if;
                        
                        -- error и errors_channel по верхней границе
                        
                        if setpoint_ch0_up < receive_data_a0 then
                            hwp_interrupt <= '1';
                            errors_channel(16) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(16) <= '0';
                            end if;
                        end if;
                        if setpoint_ch2_up < receive_data_b0 then
                            hwp_interrupt <= '1';
                            errors_channel(18) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(18) <= '0';
                            end if;
                        end if;
                        if setpoint_ch4_up < receive_data_a1 then
                            hwp_interrupt <= '1';
                            errors_channel(20) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(20) <= '0';
                            end if;
                        end if;
                        if setpoint_ch6_up < receive_data_b1 then
                            hwp_interrupt <= '1';
                            errors_channel(22) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(22) <= '0';
                            end if;
                        end if;
                        if setpoint_ch8_up < receive_data_a2 then
                            hwp_interrupt <= '1';
                            errors_channel(24) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(24) <= '0';
                            end if;
                        end if;
                        if setpoint_ch10_up < receive_data_b2 then
                            hwp_interrupt <= '1';
                            errors_channel(26) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(26) <= '0';
                            end if;
                        end if;
                        if setpoint_ch12_up < receive_data_a3 then
                            hwp_interrupt <= '1';
                            errors_channel(28) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(28) <= '0';
                            end if;
                        end if;
                        if setpoint_ch14_up < receive_data_b3 then
                            hwp_interrupt <= '1';
                            errors_channel(30) <= '1';
                        else 
                            if slv_reg4(0) = '1' then
                                hwp_interrupt <= '0';
                                errors_channel(30) <= '0';
                            end if;
                        end if;
                    
                    
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
    
    process(S_AXI_ACLK) is
    begin       
        if(rising_edge (S_AXI_ACLK)) then
            if slv_reg0(0) = '1' then
                if slv_reg1 = 0 then           
                    setpoint_ch0_down <= slv_reg2;
                end if;
                if slv_reg1 = 1 then
                    setpoint_ch1_down <= slv_reg2;
                end if;
                if slv_reg1 = 2 then
                    setpoint_ch2_down <= slv_reg2;
                end if;
                if slv_reg1 = 3 then
                    setpoint_ch3_down <= slv_reg2;
                end if;
                if slv_reg1 = 4 then
                    setpoint_ch4_down <= slv_reg2;
                end if;
                if slv_reg1 = 5 then
                    setpoint_ch5_down <= slv_reg2;
                end if;
                if slv_reg1 = 6 then
                    setpoint_ch6_down <= slv_reg2;
                end if;
                if slv_reg1 = 7 then
                    setpoint_ch7_down <= slv_reg2;
                end if;          
                if slv_reg1 = 8 then
                    setpoint_ch8_down <= slv_reg2;
                end if;
                if slv_reg1 = 9 then
                    setpoint_ch9_down <= slv_reg2;
                end if;
                if slv_reg1 = 10 then
                    setpoint_ch10_down <= slv_reg2;
                end if;    
                if slv_reg1 = 11 then
                    setpoint_ch11_down <= slv_reg2;
                end if;    
                if slv_reg1 = 12 then
                    setpoint_ch12_down <= slv_reg2;
                end if;    
                if slv_reg1 = 13 then
                    setpoint_ch13_down <= slv_reg2;
                end if;
                if slv_reg1 = 14 then
                    setpoint_ch14_down <= slv_reg2;
                end if;    
                if slv_reg1 = 15 then
                    setpoint_ch15_down <= slv_reg2;
                end if; 
                if slv_reg1 = 16 then
                    setpoint_ch0_up <= slv_reg2;
                end if;     
                if slv_reg1 = 17 then
                    setpoint_ch1_up <= slv_reg2;
                end if;    
                if slv_reg1 = 18 then
                    setpoint_ch2_up <= slv_reg2;
                end if;    
                if slv_reg1 = 19 then
                    setpoint_ch3_up <= slv_reg2;
                end if;  
                if slv_reg1 = 20 then
                    setpoint_ch4_up <= slv_reg2;
                end if;    
                if slv_reg1 = 21 then
                    setpoint_ch5_up <= slv_reg2;
                end if;    
                if slv_reg1 = 22 then
                    setpoint_ch6_up <= slv_reg2;
                end if;    
                if slv_reg1 = 23 then
                    setpoint_ch7_up <= slv_reg2;
                end if;    
                if slv_reg1 = 24 then
                    setpoint_ch8_up <= slv_reg2;
                end if;    
                if slv_reg1 = 25 then
                    setpoint_ch9_up <= slv_reg2;
                end if; 
                if slv_reg1 = 26 then
                    setpoint_ch10_up <= slv_reg2;
                end if;    
                if slv_reg1 = 27 then
                    setpoint_ch11_up <= slv_reg2; 
                end if;   
                if slv_reg1 = 28 then
                    setpoint_ch12_up <= slv_reg2;
                end if;    
                if slv_reg1 = 29 then
                    setpoint_ch13_up <= slv_reg2;
                end if;    
                if slv_reg1 = 30 then
                    setpoint_ch14_up <= slv_reg2;
                end if; 
                if slv_reg1 = 31 then
                    setpoint_ch15_up <= slv_reg2;
                end if;  
                                 
            end if;
        end if;
    end process;

	-- User logic ends

end arch_imp;
