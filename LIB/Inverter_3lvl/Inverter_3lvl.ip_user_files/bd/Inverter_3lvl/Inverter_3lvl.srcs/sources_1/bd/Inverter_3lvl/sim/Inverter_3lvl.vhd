--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Jun 11 07:48:53 2021
--Host        : STAS-W10 running 64-bit major release  (build 9200)
--Command     : generate_target Inverter_3lvl.bd
--Design      : Inverter_3lvl
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Inverter_3lvl is
  port (
    BreakingEnable : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ChGroup0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ChGroup1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskChGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskChGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskMinTimeError : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MinTimeError : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PWM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    deadTime_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er_0 : in STD_LOGIC;
    externalCLK_0 : in STD_LOGIC;
    minTime_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime_En_0 : in STD_LOGIC;
    ready_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Inverter_3lvl : entity is "Inverter_3lvl,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Inverter_3lvl,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=13,numReposBlks=13,numNonXlnxBlks=13,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Inverter_3lvl : entity is "Inverter_3lvl.hwdef";
end Inverter_3lvl;

architecture STRUCTURE of Inverter_3lvl is
  component Inverter_3lvl_BUS_16OUT_0_0 is
  port (
    BusBlock16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    In0 : in STD_LOGIC;
    In1 : in STD_LOGIC;
    In2 : in STD_LOGIC;
    In3 : in STD_LOGIC;
    In4 : in STD_LOGIC;
    In5 : in STD_LOGIC;
    In6 : in STD_LOGIC;
    In7 : in STD_LOGIC;
    In8 : in STD_LOGIC;
    In9 : in STD_LOGIC;
    In10 : in STD_LOGIC;
    In11 : in STD_LOGIC;
    In12 : in STD_LOGIC;
    In13 : in STD_LOGIC;
    In14 : in STD_LOGIC;
    In15 : in STD_LOGIC;
    Mask : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Inverter_3lvl_BUS_16OUT_0_0;
  component Inverter_3lvl_BUS_16OUT_0_1 is
  port (
    BusBlock16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    In0 : in STD_LOGIC;
    In1 : in STD_LOGIC;
    In2 : in STD_LOGIC;
    In3 : in STD_LOGIC;
    In4 : in STD_LOGIC;
    In5 : in STD_LOGIC;
    In6 : in STD_LOGIC;
    In7 : in STD_LOGIC;
    In8 : in STD_LOGIC;
    In9 : in STD_LOGIC;
    In10 : in STD_LOGIC;
    In11 : in STD_LOGIC;
    In12 : in STD_LOGIC;
    In13 : in STD_LOGIC;
    In14 : in STD_LOGIC;
    In15 : in STD_LOGIC;
    Mask : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Inverter_3lvl_BUS_16OUT_0_1;
  component Inverter_3lvl_BUS_16OUT_1_0 is
  port (
    BusBlock16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    In0 : in STD_LOGIC;
    In1 : in STD_LOGIC;
    In2 : in STD_LOGIC;
    In3 : in STD_LOGIC;
    In4 : in STD_LOGIC;
    In5 : in STD_LOGIC;
    In6 : in STD_LOGIC;
    In7 : in STD_LOGIC;
    In8 : in STD_LOGIC;
    In9 : in STD_LOGIC;
    In10 : in STD_LOGIC;
    In11 : in STD_LOGIC;
    In12 : in STD_LOGIC;
    In13 : in STD_LOGIC;
    In14 : in STD_LOGIC;
    In15 : in STD_LOGIC;
    Mask : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Inverter_3lvl_BUS_16OUT_1_0;
  component Inverter_3lvl_BUS_16IN_0_0 is
  port (
    BusBlock16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Out0 : out STD_LOGIC;
    Out1 : out STD_LOGIC;
    Out2 : out STD_LOGIC;
    Out3 : out STD_LOGIC;
    Out4 : out STD_LOGIC;
    Out5 : out STD_LOGIC;
    Out6 : out STD_LOGIC;
    Out7 : out STD_LOGIC;
    Out8 : out STD_LOGIC;
    Out9 : out STD_LOGIC;
    Out10 : out STD_LOGIC;
    Out11 : out STD_LOGIC;
    Out12 : out STD_LOGIC;
    Out13 : out STD_LOGIC;
    Out14 : out STD_LOGIC;
    Out15 : out STD_LOGIC
  );
  end component Inverter_3lvl_BUS_16IN_0_0;
  component Inverter_3lvl_BUS_16IN_1_0 is
  port (
    BusBlock16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Out0 : out STD_LOGIC;
    Out1 : out STD_LOGIC;
    Out2 : out STD_LOGIC;
    Out3 : out STD_LOGIC;
    Out4 : out STD_LOGIC;
    Out5 : out STD_LOGIC;
    Out6 : out STD_LOGIC;
    Out7 : out STD_LOGIC;
    Out8 : out STD_LOGIC;
    Out9 : out STD_LOGIC;
    Out10 : out STD_LOGIC;
    Out11 : out STD_LOGIC;
    Out12 : out STD_LOGIC;
    Out13 : out STD_LOGIC;
    Out14 : out STD_LOGIC;
    Out15 : out STD_LOGIC
  );
  end component Inverter_3lvl_BUS_16IN_1_0;
  component Inverter_3lvl_P0N_3lvl_0_0 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_0_0;
  component Inverter_3lvl_P0N_3lvl_0_1 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_0_1;
  component Inverter_3lvl_P0N_3lvl_0_2 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_0_2;
  component Inverter_3lvl_P0N_3lvl_0_3 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_0_3;
  component Inverter_3lvl_P0N_3lvl_0_4 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_0_4;
  component Inverter_3lvl_P0N_3lvl_0_5 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_0_5;
  component Inverter_3lvl_P0N_3lvl_1_0 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_1_0;
  component Inverter_3lvl_P0N_3lvl_1_1 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  end component Inverter_3lvl_P0N_3lvl_1_1;
  signal BUS_16IN_0_Out0 : STD_LOGIC;
  signal BUS_16IN_0_Out1 : STD_LOGIC;
  signal BUS_16IN_0_Out10 : STD_LOGIC;
  signal BUS_16IN_0_Out11 : STD_LOGIC;
  signal BUS_16IN_0_Out12 : STD_LOGIC;
  signal BUS_16IN_0_Out13 : STD_LOGIC;
  signal BUS_16IN_0_Out14 : STD_LOGIC;
  signal BUS_16IN_0_Out15 : STD_LOGIC;
  signal BUS_16IN_0_Out2 : STD_LOGIC;
  signal BUS_16IN_0_Out3 : STD_LOGIC;
  signal BUS_16IN_0_Out4 : STD_LOGIC;
  signal BUS_16IN_0_Out5 : STD_LOGIC;
  signal BUS_16IN_0_Out6 : STD_LOGIC;
  signal BUS_16IN_0_Out7 : STD_LOGIC;
  signal BUS_16IN_0_Out8 : STD_LOGIC;
  signal BUS_16IN_0_Out9 : STD_LOGIC;
  signal BUS_16IN_1_Out0 : STD_LOGIC;
  signal BUS_16IN_1_Out1 : STD_LOGIC;
  signal BUS_16IN_1_Out2 : STD_LOGIC;
  signal BUS_16IN_1_Out3 : STD_LOGIC;
  signal BUS_16IN_1_Out4 : STD_LOGIC;
  signal BUS_16IN_1_Out5 : STD_LOGIC;
  signal BUS_16IN_1_Out6 : STD_LOGIC;
  signal BUS_16IN_1_Out7 : STD_LOGIC;
  signal BUS_16OUT_0_BusBlock16OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal BUS_16OUT_1_BusBlock16OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal BUS_16OUT_2_BusBlock16OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal BreakingEnable_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MaskChGroup0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MaskChGroup1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MaskMinTimeError_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal P0N_3lvl_0_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_0_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_0_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_0_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_0_minTimeEr : STD_LOGIC;
  signal P0N_3lvl_1_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_1_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_1_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_1_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_1_minTimeEr : STD_LOGIC;
  signal P0N_3lvl_2_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_2_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_2_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_2_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_2_minTimeEr : STD_LOGIC;
  signal P0N_3lvl_3_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_3_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_3_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_3_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_3_minTimeEr : STD_LOGIC;
  signal P0N_3lvl_4_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_4_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_4_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_4_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_4_minTimeEr : STD_LOGIC;
  signal P0N_3lvl_5_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_5_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_5_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_5_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_5_minTimeEr : STD_LOGIC;
  signal P0N_3lvl_6_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_6_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_6_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_6_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_6_minTimeEr : STD_LOGIC;
  signal P0N_3lvl_7_PWM_out_0 : STD_LOGIC;
  signal P0N_3lvl_7_PWM_out_1 : STD_LOGIC;
  signal P0N_3lvl_7_PWM_out_2 : STD_LOGIC;
  signal P0N_3lvl_7_PWM_out_3 : STD_LOGIC;
  signal P0N_3lvl_7_minTimeEr : STD_LOGIC;
  signal PWM_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal deadTime_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal er_0_1 : STD_LOGIC;
  signal externalCLK_0_1 : STD_LOGIC;
  signal minTime_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal minTime_En_0_1 : STD_LOGIC;
  signal ready_0_1 : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out10_UNCONNECTED : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out11_UNCONNECTED : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out12_UNCONNECTED : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out13_UNCONNECTED : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out14_UNCONNECTED : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out15_UNCONNECTED : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out8_UNCONNECTED : STD_LOGIC;
  signal NLW_BUS_16IN_1_Out9_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of BreakingEnable : signal is "xilinx.com:signal:data:1.0 DATA.BREAKINGENABLE DATA";
  attribute X_INTERFACE_PARAMETER of BreakingEnable : signal is "XIL_INTERFACENAME DATA.BREAKINGENABLE, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ChGroup0 : signal is "xilinx.com:signal:data:1.0 DATA.CHGROUP0 DATA";
  attribute X_INTERFACE_PARAMETER of ChGroup0 : signal is "XIL_INTERFACENAME DATA.CHGROUP0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ChGroup1 : signal is "xilinx.com:signal:data:1.0 DATA.CHGROUP1 DATA";
  attribute X_INTERFACE_PARAMETER of ChGroup1 : signal is "XIL_INTERFACENAME DATA.CHGROUP1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of MinTimeError : signal is "xilinx.com:signal:data:1.0 DATA.MINTIMEERROR DATA";
  attribute X_INTERFACE_PARAMETER of MinTimeError : signal is "XIL_INTERFACENAME DATA.MINTIMEERROR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of PWM : signal is "xilinx.com:signal:data:1.0 DATA.PWM DATA";
  attribute X_INTERFACE_PARAMETER of PWM : signal is "XIL_INTERFACENAME DATA.PWM, LAYERED_METADATA undef";
begin
  BreakingEnable_1(15 downto 0) <= BreakingEnable(15 downto 0);
  ChGroup0(15 downto 0) <= BUS_16OUT_0_BusBlock16OUT(15 downto 0);
  ChGroup1(15 downto 0) <= BUS_16OUT_1_BusBlock16OUT(15 downto 0);
  MaskChGroup0_1(15 downto 0) <= MaskChGroup0(15 downto 0);
  MaskChGroup1_1(15 downto 0) <= MaskChGroup1(15 downto 0);
  MaskMinTimeError_1(15 downto 0) <= MaskMinTimeError(15 downto 0);
  MinTimeError(15 downto 0) <= BUS_16OUT_2_BusBlock16OUT(15 downto 0);
  PWM_1(15 downto 0) <= PWM(15 downto 0);
  deadTime_0_1(31 downto 0) <= deadTime_0(31 downto 0);
  er_0_1 <= er_0;
  externalCLK_0_1 <= externalCLK_0;
  minTime_0_1(31 downto 0) <= minTime_0(31 downto 0);
  minTime_En_0_1 <= minTime_En_0;
  ready_0_1 <= ready_0;
  reset_0_1 <= reset_0;
BUS_16IN_0: component Inverter_3lvl_BUS_16IN_0_0
     port map (
      BusBlock16IN(15 downto 0) => PWM_1(15 downto 0),
      Out0 => BUS_16IN_0_Out0,
      Out1 => BUS_16IN_0_Out1,
      Out10 => BUS_16IN_0_Out10,
      Out11 => BUS_16IN_0_Out11,
      Out12 => BUS_16IN_0_Out12,
      Out13 => BUS_16IN_0_Out13,
      Out14 => BUS_16IN_0_Out14,
      Out15 => BUS_16IN_0_Out15,
      Out2 => BUS_16IN_0_Out2,
      Out3 => BUS_16IN_0_Out3,
      Out4 => BUS_16IN_0_Out4,
      Out5 => BUS_16IN_0_Out5,
      Out6 => BUS_16IN_0_Out6,
      Out7 => BUS_16IN_0_Out7,
      Out8 => BUS_16IN_0_Out8,
      Out9 => BUS_16IN_0_Out9
    );
BUS_16IN_1: component Inverter_3lvl_BUS_16IN_1_0
     port map (
      BusBlock16IN(15 downto 0) => BreakingEnable_1(15 downto 0),
      Out0 => BUS_16IN_1_Out0,
      Out1 => BUS_16IN_1_Out1,
      Out10 => NLW_BUS_16IN_1_Out10_UNCONNECTED,
      Out11 => NLW_BUS_16IN_1_Out11_UNCONNECTED,
      Out12 => NLW_BUS_16IN_1_Out12_UNCONNECTED,
      Out13 => NLW_BUS_16IN_1_Out13_UNCONNECTED,
      Out14 => NLW_BUS_16IN_1_Out14_UNCONNECTED,
      Out15 => NLW_BUS_16IN_1_Out15_UNCONNECTED,
      Out2 => BUS_16IN_1_Out2,
      Out3 => BUS_16IN_1_Out3,
      Out4 => BUS_16IN_1_Out4,
      Out5 => BUS_16IN_1_Out5,
      Out6 => BUS_16IN_1_Out6,
      Out7 => BUS_16IN_1_Out7,
      Out8 => NLW_BUS_16IN_1_Out8_UNCONNECTED,
      Out9 => NLW_BUS_16IN_1_Out9_UNCONNECTED
    );
BUS_16OUT_0: component Inverter_3lvl_BUS_16OUT_0_0
     port map (
      BusBlock16OUT(15 downto 0) => BUS_16OUT_0_BusBlock16OUT(15 downto 0),
      In0 => P0N_3lvl_0_PWM_out_0,
      In1 => P0N_3lvl_0_PWM_out_1,
      In10 => P0N_3lvl_2_PWM_out_2,
      In11 => P0N_3lvl_2_PWM_out_3,
      In12 => P0N_3lvl_3_PWM_out_0,
      In13 => P0N_3lvl_3_PWM_out_1,
      In14 => P0N_3lvl_3_PWM_out_2,
      In15 => P0N_3lvl_3_PWM_out_3,
      In2 => P0N_3lvl_0_PWM_out_2,
      In3 => P0N_3lvl_0_PWM_out_3,
      In4 => P0N_3lvl_1_PWM_out_0,
      In5 => P0N_3lvl_1_PWM_out_1,
      In6 => P0N_3lvl_1_PWM_out_2,
      In7 => P0N_3lvl_1_PWM_out_3,
      In8 => P0N_3lvl_2_PWM_out_0,
      In9 => P0N_3lvl_2_PWM_out_1,
      Mask(15 downto 0) => MaskChGroup0_1(15 downto 0)
    );
BUS_16OUT_1: component Inverter_3lvl_BUS_16OUT_0_1
     port map (
      BusBlock16OUT(15 downto 0) => BUS_16OUT_1_BusBlock16OUT(15 downto 0),
      In0 => P0N_3lvl_4_PWM_out_0,
      In1 => P0N_3lvl_4_PWM_out_1,
      In10 => P0N_3lvl_6_PWM_out_2,
      In11 => P0N_3lvl_6_PWM_out_3,
      In12 => P0N_3lvl_7_PWM_out_0,
      In13 => P0N_3lvl_7_PWM_out_1,
      In14 => P0N_3lvl_7_PWM_out_2,
      In15 => P0N_3lvl_7_PWM_out_3,
      In2 => P0N_3lvl_4_PWM_out_2,
      In3 => P0N_3lvl_4_PWM_out_3,
      In4 => P0N_3lvl_5_PWM_out_0,
      In5 => P0N_3lvl_5_PWM_out_1,
      In6 => P0N_3lvl_5_PWM_out_2,
      In7 => P0N_3lvl_5_PWM_out_3,
      In8 => P0N_3lvl_6_PWM_out_0,
      In9 => P0N_3lvl_6_PWM_out_1,
      Mask(15 downto 0) => MaskChGroup1_1(15 downto 0)
    );
BUS_16OUT_2: component Inverter_3lvl_BUS_16OUT_1_0
     port map (
      BusBlock16OUT(15 downto 0) => BUS_16OUT_2_BusBlock16OUT(15 downto 0),
      In0 => P0N_3lvl_0_minTimeEr,
      In1 => P0N_3lvl_1_minTimeEr,
      In10 => '0',
      In11 => '0',
      In12 => '0',
      In13 => '0',
      In14 => '0',
      In15 => '0',
      In2 => P0N_3lvl_2_minTimeEr,
      In3 => P0N_3lvl_3_minTimeEr,
      In4 => P0N_3lvl_4_minTimeEr,
      In5 => P0N_3lvl_5_minTimeEr,
      In6 => P0N_3lvl_6_minTimeEr,
      In7 => P0N_3lvl_7_minTimeEr,
      In8 => '0',
      In9 => '0',
      Mask(15 downto 0) => MaskMinTimeError_1(15 downto 0)
    );
P0N_3lvl_0: component Inverter_3lvl_P0N_3lvl_0_0
     port map (
      PWM_out_0 => P0N_3lvl_0_PWM_out_0,
      PWM_out_1 => P0N_3lvl_0_PWM_out_1,
      PWM_out_2 => P0N_3lvl_0_PWM_out_2,
      PWM_out_3 => P0N_3lvl_0_PWM_out_3,
      TKin0 => BUS_16IN_0_Out0,
      TKin1 => BUS_16IN_0_Out1,
      breaking_en => BUS_16IN_1_Out0,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_0_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
P0N_3lvl_1: component Inverter_3lvl_P0N_3lvl_1_0
     port map (
      PWM_out_0 => P0N_3lvl_1_PWM_out_0,
      PWM_out_1 => P0N_3lvl_1_PWM_out_1,
      PWM_out_2 => P0N_3lvl_1_PWM_out_2,
      PWM_out_3 => P0N_3lvl_1_PWM_out_3,
      TKin0 => BUS_16IN_0_Out2,
      TKin1 => BUS_16IN_0_Out3,
      breaking_en => BUS_16IN_1_Out1,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_1_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
P0N_3lvl_2: component Inverter_3lvl_P0N_3lvl_1_1
     port map (
      PWM_out_0 => P0N_3lvl_2_PWM_out_0,
      PWM_out_1 => P0N_3lvl_2_PWM_out_1,
      PWM_out_2 => P0N_3lvl_2_PWM_out_2,
      PWM_out_3 => P0N_3lvl_2_PWM_out_3,
      TKin0 => BUS_16IN_0_Out4,
      TKin1 => BUS_16IN_0_Out5,
      breaking_en => BUS_16IN_1_Out2,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_2_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
P0N_3lvl_3: component Inverter_3lvl_P0N_3lvl_0_1
     port map (
      PWM_out_0 => P0N_3lvl_3_PWM_out_0,
      PWM_out_1 => P0N_3lvl_3_PWM_out_1,
      PWM_out_2 => P0N_3lvl_3_PWM_out_2,
      PWM_out_3 => P0N_3lvl_3_PWM_out_3,
      TKin0 => BUS_16IN_0_Out6,
      TKin1 => BUS_16IN_0_Out7,
      breaking_en => BUS_16IN_1_Out3,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_3_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
P0N_3lvl_4: component Inverter_3lvl_P0N_3lvl_0_2
     port map (
      PWM_out_0 => P0N_3lvl_4_PWM_out_0,
      PWM_out_1 => P0N_3lvl_4_PWM_out_1,
      PWM_out_2 => P0N_3lvl_4_PWM_out_2,
      PWM_out_3 => P0N_3lvl_4_PWM_out_3,
      TKin0 => BUS_16IN_0_Out8,
      TKin1 => BUS_16IN_0_Out9,
      breaking_en => BUS_16IN_1_Out4,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_4_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
P0N_3lvl_5: component Inverter_3lvl_P0N_3lvl_0_3
     port map (
      PWM_out_0 => P0N_3lvl_5_PWM_out_0,
      PWM_out_1 => P0N_3lvl_5_PWM_out_1,
      PWM_out_2 => P0N_3lvl_5_PWM_out_2,
      PWM_out_3 => P0N_3lvl_5_PWM_out_3,
      TKin0 => BUS_16IN_0_Out10,
      TKin1 => BUS_16IN_0_Out11,
      breaking_en => BUS_16IN_1_Out5,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_5_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
P0N_3lvl_6: component Inverter_3lvl_P0N_3lvl_0_4
     port map (
      PWM_out_0 => P0N_3lvl_6_PWM_out_0,
      PWM_out_1 => P0N_3lvl_6_PWM_out_1,
      PWM_out_2 => P0N_3lvl_6_PWM_out_2,
      PWM_out_3 => P0N_3lvl_6_PWM_out_3,
      TKin0 => BUS_16IN_0_Out12,
      TKin1 => BUS_16IN_0_Out13,
      breaking_en => BUS_16IN_1_Out6,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_6_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
P0N_3lvl_7: component Inverter_3lvl_P0N_3lvl_0_5
     port map (
      PWM_out_0 => P0N_3lvl_7_PWM_out_0,
      PWM_out_1 => P0N_3lvl_7_PWM_out_1,
      PWM_out_2 => P0N_3lvl_7_PWM_out_2,
      PWM_out_3 => P0N_3lvl_7_PWM_out_3,
      TKin0 => BUS_16IN_0_Out14,
      TKin1 => BUS_16IN_0_Out15,
      breaking_en => BUS_16IN_1_Out7,
      deadTime(31 downto 0) => deadTime_0_1(31 downto 0),
      er => er_0_1,
      externalCLK => externalCLK_0_1,
      minTime(31 downto 0) => minTime_0_1(31 downto 0),
      minTimeEr => P0N_3lvl_7_minTimeEr,
      minTime_En => minTime_En_0_1,
      ready => ready_0_1,
      reset => reset_0_1
    );
end STRUCTURE;
