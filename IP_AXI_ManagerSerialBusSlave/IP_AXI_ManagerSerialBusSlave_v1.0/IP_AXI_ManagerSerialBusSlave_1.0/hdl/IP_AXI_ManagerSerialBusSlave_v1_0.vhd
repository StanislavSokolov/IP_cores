library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IP_AXI_ManagerSerialBusSlave_v1_0 is
	generic (
		-- Users to add parameters here
        ADDRESS_BUS_WIDTH : integer := 8;  --! Width of the address bus.
        DATA_BUS_WIDTH : integer := 16;    --! Width of the data bus.
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 10
	);
	port (
		-- Users to add ports here
        clk : in std_logic;  --! Clock signal.
        
        addressregister : in std_logic_vector(ADDRESS_BUS_WIDTH - 1 downto 0);  --! Address register input.
        dataout : out std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);            --! Data output.
        datain : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);              --! Data input.
        
        rw : in std_logic;  --! Read/Write signal (1 = read, 0 = write).
        dataready : in std_logic;  --! Data ready signal.
        
                enableChannels5 : out std_logic_vector(7 downto 0);
        deadTime5  : out std_logic_vector(7 downto 0);
        minTime5 : out std_logic_vector(7 downto 0);
        ackTime5 : out std_logic_vector(7 downto 0);
        currentpren5 : out std_logic_vector(7 downto 0);
        ackpren5 : out std_logic_vector(7 downto 0);
        mintimepren5 : out std_logic;
        linepren5 : out std_logic;
        softshutdownen5 : out std_logic;
        softShutdownTimer5 : out std_logic_vector(15 downto 0);
        
        enableChannels6 : out std_logic_vector(7 downto 0);
        deadTime6  : out std_logic_vector(7 downto 0);
        minTime6 : out std_logic_vector(7 downto 0);
        ackTime6 : out std_logic_vector(7 downto 0);
        currentpren6 : out std_logic_vector(7 downto 0);
        ackpren6 : out std_logic_vector(7 downto 0);
        mintimepren6 : out std_logic;
        linepren6 : out std_logic;
        softshutdownen6 : out std_logic;
        softShutdownTimer6 : out std_logic_vector(15 downto 0);
        
        enableChannels9 : out std_logic_vector(7 downto 0);
        deadTime9  : out std_logic_vector(7 downto 0);
        minTime9 : out std_logic_vector(7 downto 0);
        ackTime9 : out std_logic_vector(7 downto 0);
        currentpren9 : out std_logic_vector(7 downto 0);
        ackpren9 : out std_logic_vector(7 downto 0);
        mintimepren9 : out std_logic;
        linepren9 : out std_logic;
        softshutdownen9 : out std_logic;
        softShutdownTimer9 : out std_logic_vector(15 downto 0);
        
        enableChannelsA : out std_logic_vector(7 downto 0);
        deadTimeA  : out std_logic_vector(7 downto 0);
        minTimeA : out std_logic_vector(7 downto 0);
        ackTimeA : out std_logic_vector(7 downto 0);
        currentprenA : out std_logic_vector(7 downto 0);
        ackprenA : out std_logic_vector(7 downto 0);
        mintimeprenA : out std_logic;
        lineprenA : out std_logic;
        softshutdownenA : out std_logic;
        softShutdownTimerA : out std_logic_vector(15 downto 0);
         
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end IP_AXI_ManagerSerialBusSlave_v1_0;

architecture arch_imp of IP_AXI_ManagerSerialBusSlave_v1_0 is

	-- component declaration
	component IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI is
		generic (
		ADDRESS_BUS_WIDTH : integer := 8;  --! Width of the address bus.
        DATA_BUS_WIDTH : integer := 16;    --! Width of the data bus.
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 10
		);
		port (
		clk : in std_logic;  --! Clock signal.
        addressregister : in std_logic_vector(ADDRESS_BUS_WIDTH - 1 downto 0);  --! Address register input.
        dataout : out std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);            --! Data output.
        datain : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);              --! Data input.
        rw : in std_logic;  --! Read/Write signal (1 = read, 0 = write).
        dataready : in std_logic;  --! Data ready signal.
        
        enableChannels5 : out std_logic_vector(7 downto 0);
        deadTime5  : out std_logic_vector(7 downto 0);
        minTime5 : out std_logic_vector(7 downto 0);
        ackTime5 : out std_logic_vector(7 downto 0);
        currentpren5 : out std_logic_vector(7 downto 0);
        ackpren5 : out std_logic_vector(7 downto 0);
        mintimepren5 : out std_logic;
        linepren5 : out std_logic;
        softshutdownen5 : out std_logic;
        softShutdownTimer5 : out std_logic_vector(15 downto 0);
        
        enableChannels6 : out std_logic_vector(7 downto 0);
        deadTime6  : out std_logic_vector(7 downto 0);
        minTime6 : out std_logic_vector(7 downto 0);
        ackTime6 : out std_logic_vector(7 downto 0);
        currentpren6 : out std_logic_vector(7 downto 0);
        ackpren6 : out std_logic_vector(7 downto 0);
        mintimepren6 : out std_logic;
        linepren6 : out std_logic;
        softshutdownen6 : out std_logic;
        softShutdownTimer6 : out std_logic_vector(15 downto 0);
        
        enableChannels9 : out std_logic_vector(7 downto 0);
        deadTime9  : out std_logic_vector(7 downto 0);
        minTime9 : out std_logic_vector(7 downto 0);
        ackTime9 : out std_logic_vector(7 downto 0);
        currentpren9 : out std_logic_vector(7 downto 0);
        ackpren9 : out std_logic_vector(7 downto 0);
        mintimepren9 : out std_logic;
        linepren9 : out std_logic;
        softshutdownen9 : out std_logic;
        softShutdownTimer9 : out std_logic_vector(15 downto 0);
        
        enableChannelsA : out std_logic_vector(7 downto 0);
        deadTimeA  : out std_logic_vector(7 downto 0);
        minTimeA : out std_logic_vector(7 downto 0);
        ackTimeA : out std_logic_vector(7 downto 0);
        currentprenA : out std_logic_vector(7 downto 0);
        ackprenA : out std_logic_vector(7 downto 0);
        mintimeprenA : out std_logic;
        lineprenA : out std_logic;
        softshutdownenA : out std_logic;
        softShutdownTimerA : out std_logic_vector(15 downto 0);
        
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI_inst : IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH,
		ADDRESS_BUS_WIDTH => ADDRESS_BUS_WIDTH,
        DATA_BUS_WIDTH => DATA_BUS_WIDTH
	)
	port map (
	    clk => clk,        
        addressregister => addressregister,
        dataout => dataout,
        datain => datain,        
        rw => rw,
        dataready => dataready,
        enableChannels5 => enableChannels5,
        deadTime5 => deadTime5,
        minTime5 => minTime5,
        ackTime5 => ackTime5,
        currentpren5 => currentpren5,
        ackpren5 => ackpren5,
        mintimepren5 => mintimepren5,
        linepren5 => linepren5,
        softshutdownen5 => softshutdownen5,
        softShutdownTimer5 => softShutdownTimer5, 
        enableChannels6 => enableChannels6,
        deadTime6 => deadTime6,
        minTime6 => minTime6,
        ackTime6 => ackTime6,
        currentpren6 => currentpren6,
        ackpren6 => ackpren6,
        mintimepren6 => mintimepren6,
        linepren6 => linepren6,
        softshutdownen6 => softshutdownen6,
        softShutdownTimer6 => softShutdownTimer6, 
        enableChannels9 => enableChannels9,
        deadTime9 => deadTime9,
        minTime9 => minTime9,
        ackTime9 => ackTime9,
        currentpren9 => currentpren9,
        ackpren9 => ackpren9,
        mintimepren9 => mintimepren9,
        linepren9 => linepren9,
        softshutdownen9 => softshutdownen9,
        softShutdownTimer9 => softShutdownTimer9,
        enableChannelsA => enableChannelsA,
        deadTimeA => deadTimeA,
        minTimeA => minTimeA,
        ackTimeA => ackTimeA,
        currentprenA => currentprenA,
        ackprenA => ackprenA,
        mintimeprenA => mintimeprenA,
        lineprenA => lineprenA,
        softshutdownenA => softshutdownenA,
        softShutdownTimerA => softShutdownTimerA,         
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
