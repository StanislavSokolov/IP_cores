library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IP_AXI_INVERTER_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 7
	);
	port (
		-- Users to add ports here
        MinTimeErrorGroup0 : in std_logic_vector(15 downto 0);
		MinTimeErrorGroup1 : in std_logic_vector(15 downto 0);
		MinTimeErrorGroup2 : in std_logic_vector(15 downto 0);
		
		AcknowledgeErrorGroup0 : in std_logic_vector(15 downto 0);
		AcknowledgeErrorGroup1 : in std_logic_vector(15 downto 0);
		AcknowledgeErrorGroup2 : in std_logic_vector(15 downto 0);
		
		CurrentErrorGroup0 : in std_logic_vector(15 downto 0);
		CurrentErrorGroup1 : in std_logic_vector(15 downto 0);
		CurrentErrorGroup2 : in std_logic_vector(15 downto 0);
		
        BreakingEnable : out std_logic_vector(15 downto 0);
        
		MaskChGroup0 : out std_logic_vector(15 downto 0) := x"FFFF";
		MaskChGroup1 : out std_logic_vector(15 downto 0) := x"FFFF";
		MaskChGroup2 : out std_logic_vector(15 downto 0) := x"FFFF";
		
		MaskMinTimeErrorGroup0 : out std_logic_vector(15 downto 0);
		MaskMinTimeErrorGroup1 : out std_logic_vector(15 downto 0);
		MaskMinTimeErrorGroup2 : out std_logic_vector(15 downto 0);
		
		DeadTimeGroup0 : out std_logic_vector(31 downto 0);
		DeadTimeGroup1 : out std_logic_vector(31 downto 0);
		MinTimeGroup0 : out std_logic_vector(31 downto 0);
		MinTimeGroup1 : out std_logic_vector(31 downto 0);
		
		AcknowledgeProtectionEnableGroup0 : out std_logic_vector(15 downto 0);
		AcknowledgeProtectionEnableGroup1 : out std_logic_vector(15 downto 0);
		AcknowledgeProtectionEnableGroup2 : out std_logic_vector(15 downto 0);
		
		CurrentProtectionEnableGroup0 : out std_logic_vector(15 downto 0);
		CurrentProtectionEnableGroup1 : out std_logic_vector(15 downto 0);
		CurrentProtectionEnableGroup2 : out std_logic_vector(15 downto 0);
		
		MaskAcknowledgeGroup0 : out std_logic_vector(15 downto 0);
		MaskAcknowledgeGroup1 : out std_logic_vector(15 downto 0);
		MaskAcknowledgeGroup2 : out std_logic_vector(15 downto 0);
		
		MaskCurrentGroup0 : out std_logic_vector(15 downto 0);
		MaskCurrentGroup1 : out std_logic_vector(15 downto 0);
		MaskCurrentGroup2 : out std_logic_vector(15 downto 0);
		
		AcknowledgeTimeGroup0 : out std_logic_vector(31 downto 0);
		AcknowledgeTimeGroup1 : out std_logic_vector(31 downto 0);
		
		Error : out std_logic;
		MinTimeEnable : out std_logic;
		Ready : out std_logic;
		Reset : out std_logic;

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
end IP_AXI_INVERTER_v1_0;

architecture arch_imp of IP_AXI_INVERTER_v1_0 is

	-- component declaration
	component IP_AXI_INVERTER_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
		);
		port (
		
		MinTimeErrorGroup0 : in std_logic_vector(15 downto 0);
		MinTimeErrorGroup1 : in std_logic_vector(15 downto 0);
		MinTimeErrorGroup2 : in std_logic_vector(15 downto 0);
		
		AcknowledgeErrorGroup0 : in std_logic_vector(15 downto 0);
		AcknowledgeErrorGroup1 : in std_logic_vector(15 downto 0);
		AcknowledgeErrorGroup2 : in std_logic_vector(15 downto 0);
		
		CurrentErrorGroup0 : in std_logic_vector(15 downto 0);
		CurrentErrorGroup1 : in std_logic_vector(15 downto 0);
		CurrentErrorGroup2 : in std_logic_vector(15 downto 0);
		
        BreakingEnable : out std_logic_vector(15 downto 0);
        
		MaskChGroup0 : out std_logic_vector(15 downto 0) := x"FFFF";
		MaskChGroup1 : out std_logic_vector(15 downto 0) := x"FFFF";
		MaskChGroup2 : out std_logic_vector(15 downto 0) := x"FFFF";
		
		MaskMinTimeErrorGroup0 : out std_logic_vector(15 downto 0);
		MaskMinTimeErrorGroup1 : out std_logic_vector(15 downto 0);
		MaskMinTimeErrorGroup2 : out std_logic_vector(15 downto 0);
		
		DeadTimeGroup0 : out std_logic_vector(31 downto 0);
		DeadTimeGroup1 : out std_logic_vector(31 downto 0);
		MinTimeGroup0 : out std_logic_vector(31 downto 0);
		MinTimeGroup1 : out std_logic_vector(31 downto 0);
		
		AcknowledgeProtectionEnableGroup0 : out std_logic_vector(15 downto 0);
		AcknowledgeProtectionEnableGroup1 : out std_logic_vector(15 downto 0);
		AcknowledgeProtectionEnableGroup2 : out std_logic_vector(15 downto 0);
		
		CurrentProtectionEnableGroup0 : out std_logic_vector(15 downto 0);
		CurrentProtectionEnableGroup1 : out std_logic_vector(15 downto 0);
		CurrentProtectionEnableGroup2 : out std_logic_vector(15 downto 0);
		
		MaskAcknowledgeGroup0 : out std_logic_vector(15 downto 0);
		MaskAcknowledgeGroup1 : out std_logic_vector(15 downto 0);
		MaskAcknowledgeGroup2 : out std_logic_vector(15 downto 0);
		
		MaskCurrentGroup0 : out std_logic_vector(15 downto 0);
		MaskCurrentGroup1 : out std_logic_vector(15 downto 0);
		MaskCurrentGroup2 : out std_logic_vector(15 downto 0);
		
		AcknowledgeTimeGroup0 : out std_logic_vector(31 downto 0);
		AcknowledgeTimeGroup1 : out std_logic_vector(31 downto 0);
		
		Error : out std_logic;
		MinTimeEnable : out std_logic;
		Ready : out std_logic;
		Reset : out std_logic;

		
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
	end component IP_AXI_INVERTER_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
IP_AXI_INVERTER_v1_0_S00_AXI_inst : IP_AXI_INVERTER_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	    
	    MinTimeErrorGroup0 => MinTimeErrorGroup0,
		MinTimeErrorGroup1 => MinTimeErrorGroup1,
		MinTimeErrorGroup2 => MinTimeErrorGroup2,
		
		AcknowledgeErrorGroup0 => AcknowledgeErrorGroup0,
		AcknowledgeErrorGroup1 => AcknowledgeErrorGroup1,
		AcknowledgeErrorGroup2 => AcknowledgeErrorGroup2,
		
		CurrentErrorGroup0 => CurrentErrorGroup0,
		CurrentErrorGroup1 => CurrentErrorGroup1,
		CurrentErrorGroup2 => CurrentErrorGroup2,
		
        BreakingEnable => BreakingEnable,
        
		MaskChGroup0 => MaskChGroup0,
		MaskChGroup1 => MaskChGroup1,
		MaskChGroup2 => MaskChGroup2,
		
		MaskMinTimeErrorGroup0 => MaskMinTimeErrorGroup0,
		MaskMinTimeErrorGroup1 => MaskMinTimeErrorGroup1,
		MaskMinTimeErrorGroup2 => MaskMinTimeErrorGroup2,
		
		DeadTimeGroup0 => DeadTimeGroup0,
		DeadTimeGroup1 => DeadTimeGroup1,
		MinTimeGroup0 => MinTimeGroup0,
		MinTimeGroup1 => MinTimeGroup1,
		
		AcknowledgeProtectionEnableGroup0 => AcknowledgeProtectionEnableGroup0,
		AcknowledgeProtectionEnableGroup1 => AcknowledgeProtectionEnableGroup1,
		AcknowledgeProtectionEnableGroup2 => AcknowledgeProtectionEnableGroup2,
		
		CurrentProtectionEnableGroup0 => CurrentProtectionEnableGroup0,
		CurrentProtectionEnableGroup1 => CurrentProtectionEnableGroup1,
		CurrentProtectionEnableGroup2 => CurrentProtectionEnableGroup2,
		
		MaskAcknowledgeGroup0 => MaskAcknowledgeGroup0,
		MaskAcknowledgeGroup1 => MaskAcknowledgeGroup1,
		MaskAcknowledgeGroup2 => MaskAcknowledgeGroup2,
		
		MaskCurrentGroup0 => MaskCurrentGroup0,
		MaskCurrentGroup1 => MaskCurrentGroup1,
		MaskCurrentGroup2 => MaskCurrentGroup2,
		
		AcknowledgeTimeGroup0 => AcknowledgeTimeGroup0,
		AcknowledgeTimeGroup1 => AcknowledgeTimeGroup1,
		
		
		Error => Error,
		MinTimeEnable => MinTimeEnable,
		Ready => Ready,
		Reset => Reset,
		
	-------------------------------------------------------

	
	
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
