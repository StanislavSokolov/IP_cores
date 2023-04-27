--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Wed Apr 29 14:10:03 2020
--Host        : Stas running 64-bit major release  (build 9200)
--Command     : generate_target AckChecker.bd
--Design      : AckChecker
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AckChecker is
  port (
    AcknowledgeErrorGroup0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AcknowledgeErrorGroup1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AcknowledgeProtectionEnableGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AcknowledgeProtectionEnableGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Clk_0 : in STD_LOGIC;
    CurrentErrorGroup0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentErrorGroup1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentProtectionEnableGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentProtectionEnableGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskAcknowledgeGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskAcknowledgeGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskCurrentGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskCurrentGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Ready_0 : in STD_LOGIC;
    ReceiverGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ReceiverGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TransmitterGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TransmitterGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ackTime_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of AckChecker : entity is "AckChecker,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AckChecker,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=44,numReposBlks=44,numNonXlnxBlks=44,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of AckChecker : entity is "AckChecker.hwdef";
end AckChecker;

architecture STRUCTURE of AckChecker is
  component AckChecker_AckCheckerConcept_0_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_0_0;
  component AckChecker_AckCheckerConcept_0_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_0_1;
  component AckChecker_AckCheckerConcept_0_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_0_2;
  component AckChecker_AckCheckerConcept_0_3 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_0_3;
  component AckChecker_AckCheckerConcept_0_4 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_0_4;
  component AckChecker_AckCheckerConcept_1_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_1_0;
  component AckChecker_AckCheckerConcept_2_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_2_0;
  component AckChecker_AckCheckerConcept_3_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_3_0;
  component AckChecker_AckCheckerConcept_4_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_4_1;
  component AckChecker_AckCheckerConcept_5_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_5_1;
  component AckChecker_AckCheckerConcept_6_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_6_1;
  component AckChecker_AckCheckerConcept_7_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_7_1;
  component AckChecker_AckCheckerConcept_4_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_4_2;
  component AckChecker_AckCheckerConcept_5_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_5_2;
  component AckChecker_AckCheckerConcept_6_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_6_2;
  component AckChecker_AckCheckerConcept_7_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_7_2;
  component AckChecker_AckCheckerConcept_12_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_12_0;
  component AckChecker_AckCheckerConcept_13_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_13_0;
  component AckChecker_AckCheckerConcept_14_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_14_0;
  component AckChecker_AckCheckerConcept_15_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_15_0;
  component AckChecker_AckCheckerConcept_12_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_12_1;
  component AckChecker_AckCheckerConcept_13_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_13_1;
  component AckChecker_AckCheckerConcept_14_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_14_1;
  component AckChecker_AckCheckerConcept_15_1 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_15_1;
  component AckChecker_AckCheckerConcept_12_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_12_2;
  component AckChecker_AckCheckerConcept_13_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_13_2;
  component AckChecker_AckCheckerConcept_14_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_14_2;
  component AckChecker_AckCheckerConcept_15_2 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_15_2;
  component AckChecker_AckCheckerConcept_12_3 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_12_3;
  component AckChecker_AckCheckerConcept_13_3 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_13_3;
  component AckChecker_AckCheckerConcept_14_3 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_14_3;
  component AckChecker_AckCheckerConcept_15_3 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component AckChecker_AckCheckerConcept_15_3;
  component AckChecker_BusBlock16OUT_0_0 is
  port (
    Bus_16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16OUT_0_0;
  component AckChecker_BusBlock16OUT_0_1 is
  port (
    Bus_16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16OUT_0_1;
  component AckChecker_BusBlock16OUT_0_2 is
  port (
    Bus_16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16OUT_0_2;
  component AckChecker_BusBlock16OUT_1_0 is
  port (
    Bus_16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16OUT_1_0;
  component AckChecker_BusBlock16IN_0_0 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_0_0;
  component AckChecker_BusBlock16IN_0_1 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_0_1;
  component AckChecker_BusBlock16IN_0_2 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_0_2;
  component AckChecker_BusBlock16IN_1_0 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_1_0;
  component AckChecker_BusBlock16IN_2_0 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_2_0;
  component AckChecker_BusBlock16IN_4_0 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_4_0;
  component AckChecker_BusBlock16IN_4_1 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_4_1;
  component AckChecker_BusBlock16IN_6_0 is
  port (
    Bus_16IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  end component AckChecker_BusBlock16IN_6_0;
  signal AckCheckerConcept_0_AckPr : STD_LOGIC;
  signal AckCheckerConcept_0_currentPr : STD_LOGIC;
  signal AckCheckerConcept_10_AckPr : STD_LOGIC;
  signal AckCheckerConcept_10_currentPr : STD_LOGIC;
  signal AckCheckerConcept_11_AckPr : STD_LOGIC;
  signal AckCheckerConcept_11_currentPr : STD_LOGIC;
  signal AckCheckerConcept_12_AckPr : STD_LOGIC;
  signal AckCheckerConcept_12_currentPr : STD_LOGIC;
  signal AckCheckerConcept_13_AckPr : STD_LOGIC;
  signal AckCheckerConcept_13_currentPr : STD_LOGIC;
  signal AckCheckerConcept_14_AckPr : STD_LOGIC;
  signal AckCheckerConcept_14_currentPr : STD_LOGIC;
  signal AckCheckerConcept_15_AckPr : STD_LOGIC;
  signal AckCheckerConcept_15_currentPr : STD_LOGIC;
  signal AckCheckerConcept_16_AckPr : STD_LOGIC;
  signal AckCheckerConcept_16_currentPr : STD_LOGIC;
  signal AckCheckerConcept_17_AckPr : STD_LOGIC;
  signal AckCheckerConcept_17_currentPr : STD_LOGIC;
  signal AckCheckerConcept_18_AckPr : STD_LOGIC;
  signal AckCheckerConcept_18_currentPr : STD_LOGIC;
  signal AckCheckerConcept_19_AckPr : STD_LOGIC;
  signal AckCheckerConcept_19_currentPr : STD_LOGIC;
  signal AckCheckerConcept_1_AckPr : STD_LOGIC;
  signal AckCheckerConcept_1_currentPr : STD_LOGIC;
  signal AckCheckerConcept_20_AckPr : STD_LOGIC;
  signal AckCheckerConcept_20_currentPr : STD_LOGIC;
  signal AckCheckerConcept_21_AckPr : STD_LOGIC;
  signal AckCheckerConcept_21_currentPr : STD_LOGIC;
  signal AckCheckerConcept_22_AckPr : STD_LOGIC;
  signal AckCheckerConcept_22_currentPr : STD_LOGIC;
  signal AckCheckerConcept_23_AckPr : STD_LOGIC;
  signal AckCheckerConcept_23_currentPr : STD_LOGIC;
  signal AckCheckerConcept_24_AckPr : STD_LOGIC;
  signal AckCheckerConcept_24_currentPr : STD_LOGIC;
  signal AckCheckerConcept_25_AckPr : STD_LOGIC;
  signal AckCheckerConcept_25_currentPr : STD_LOGIC;
  signal AckCheckerConcept_26_AckPr : STD_LOGIC;
  signal AckCheckerConcept_26_currentPr : STD_LOGIC;
  signal AckCheckerConcept_27_AckPr : STD_LOGIC;
  signal AckCheckerConcept_27_currentPr : STD_LOGIC;
  signal AckCheckerConcept_28_AckPr : STD_LOGIC;
  signal AckCheckerConcept_28_currentPr : STD_LOGIC;
  signal AckCheckerConcept_29_AckPr : STD_LOGIC;
  signal AckCheckerConcept_29_currentPr : STD_LOGIC;
  signal AckCheckerConcept_2_AckPr : STD_LOGIC;
  signal AckCheckerConcept_2_currentPr : STD_LOGIC;
  signal AckCheckerConcept_30_AckPr : STD_LOGIC;
  signal AckCheckerConcept_30_currentPr : STD_LOGIC;
  signal AckCheckerConcept_31_AckPr : STD_LOGIC;
  signal AckCheckerConcept_31_currentPr : STD_LOGIC;
  signal AckCheckerConcept_3_AckPr : STD_LOGIC;
  signal AckCheckerConcept_3_currentPr : STD_LOGIC;
  signal AckCheckerConcept_4_AckPr : STD_LOGIC;
  signal AckCheckerConcept_4_currentPr : STD_LOGIC;
  signal AckCheckerConcept_5_AckPr : STD_LOGIC;
  signal AckCheckerConcept_5_currentPr : STD_LOGIC;
  signal AckCheckerConcept_6_AckPr : STD_LOGIC;
  signal AckCheckerConcept_6_currentPr : STD_LOGIC;
  signal AckCheckerConcept_7_AckPr : STD_LOGIC;
  signal AckCheckerConcept_7_currentPr : STD_LOGIC;
  signal AckCheckerConcept_8_AckPr : STD_LOGIC;
  signal AckCheckerConcept_8_currentPr : STD_LOGIC;
  signal AckCheckerConcept_9_AckPr : STD_LOGIC;
  signal AckCheckerConcept_9_currentPr : STD_LOGIC;
  signal AcknowledgeProtectionEnableGroup0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AcknowledgeProtectionEnableGroup1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal BusBlock16IN_0_Out0 : STD_LOGIC;
  signal BusBlock16IN_0_Out1 : STD_LOGIC;
  signal BusBlock16IN_0_Out10 : STD_LOGIC;
  signal BusBlock16IN_0_Out11 : STD_LOGIC;
  signal BusBlock16IN_0_Out12 : STD_LOGIC;
  signal BusBlock16IN_0_Out13 : STD_LOGIC;
  signal BusBlock16IN_0_Out14 : STD_LOGIC;
  signal BusBlock16IN_0_Out15 : STD_LOGIC;
  signal BusBlock16IN_0_Out2 : STD_LOGIC;
  signal BusBlock16IN_0_Out3 : STD_LOGIC;
  signal BusBlock16IN_0_Out4 : STD_LOGIC;
  signal BusBlock16IN_0_Out5 : STD_LOGIC;
  signal BusBlock16IN_0_Out6 : STD_LOGIC;
  signal BusBlock16IN_0_Out7 : STD_LOGIC;
  signal BusBlock16IN_0_Out8 : STD_LOGIC;
  signal BusBlock16IN_0_Out9 : STD_LOGIC;
  signal BusBlock16IN_1_Out0 : STD_LOGIC;
  signal BusBlock16IN_1_Out1 : STD_LOGIC;
  signal BusBlock16IN_1_Out10 : STD_LOGIC;
  signal BusBlock16IN_1_Out11 : STD_LOGIC;
  signal BusBlock16IN_1_Out12 : STD_LOGIC;
  signal BusBlock16IN_1_Out13 : STD_LOGIC;
  signal BusBlock16IN_1_Out14 : STD_LOGIC;
  signal BusBlock16IN_1_Out15 : STD_LOGIC;
  signal BusBlock16IN_1_Out2 : STD_LOGIC;
  signal BusBlock16IN_1_Out3 : STD_LOGIC;
  signal BusBlock16IN_1_Out4 : STD_LOGIC;
  signal BusBlock16IN_1_Out5 : STD_LOGIC;
  signal BusBlock16IN_1_Out6 : STD_LOGIC;
  signal BusBlock16IN_1_Out7 : STD_LOGIC;
  signal BusBlock16IN_1_Out8 : STD_LOGIC;
  signal BusBlock16IN_1_Out9 : STD_LOGIC;
  signal BusBlock16IN_2_Out0 : STD_LOGIC;
  signal BusBlock16IN_2_Out1 : STD_LOGIC;
  signal BusBlock16IN_2_Out10 : STD_LOGIC;
  signal BusBlock16IN_2_Out11 : STD_LOGIC;
  signal BusBlock16IN_2_Out12 : STD_LOGIC;
  signal BusBlock16IN_2_Out13 : STD_LOGIC;
  signal BusBlock16IN_2_Out14 : STD_LOGIC;
  signal BusBlock16IN_2_Out15 : STD_LOGIC;
  signal BusBlock16IN_2_Out2 : STD_LOGIC;
  signal BusBlock16IN_2_Out3 : STD_LOGIC;
  signal BusBlock16IN_2_Out4 : STD_LOGIC;
  signal BusBlock16IN_2_Out5 : STD_LOGIC;
  signal BusBlock16IN_2_Out6 : STD_LOGIC;
  signal BusBlock16IN_2_Out7 : STD_LOGIC;
  signal BusBlock16IN_2_Out8 : STD_LOGIC;
  signal BusBlock16IN_2_Out9 : STD_LOGIC;
  signal BusBlock16IN_3_Out0 : STD_LOGIC;
  signal BusBlock16IN_3_Out1 : STD_LOGIC;
  signal BusBlock16IN_3_Out10 : STD_LOGIC;
  signal BusBlock16IN_3_Out11 : STD_LOGIC;
  signal BusBlock16IN_3_Out12 : STD_LOGIC;
  signal BusBlock16IN_3_Out13 : STD_LOGIC;
  signal BusBlock16IN_3_Out14 : STD_LOGIC;
  signal BusBlock16IN_3_Out15 : STD_LOGIC;
  signal BusBlock16IN_3_Out2 : STD_LOGIC;
  signal BusBlock16IN_3_Out3 : STD_LOGIC;
  signal BusBlock16IN_3_Out4 : STD_LOGIC;
  signal BusBlock16IN_3_Out5 : STD_LOGIC;
  signal BusBlock16IN_3_Out6 : STD_LOGIC;
  signal BusBlock16IN_3_Out7 : STD_LOGIC;
  signal BusBlock16IN_3_Out8 : STD_LOGIC;
  signal BusBlock16IN_3_Out9 : STD_LOGIC;
  signal BusBlock16IN_4_Out0 : STD_LOGIC;
  signal BusBlock16IN_4_Out1 : STD_LOGIC;
  signal BusBlock16IN_4_Out10 : STD_LOGIC;
  signal BusBlock16IN_4_Out11 : STD_LOGIC;
  signal BusBlock16IN_4_Out12 : STD_LOGIC;
  signal BusBlock16IN_4_Out13 : STD_LOGIC;
  signal BusBlock16IN_4_Out14 : STD_LOGIC;
  signal BusBlock16IN_4_Out15 : STD_LOGIC;
  signal BusBlock16IN_4_Out2 : STD_LOGIC;
  signal BusBlock16IN_4_Out3 : STD_LOGIC;
  signal BusBlock16IN_4_Out4 : STD_LOGIC;
  signal BusBlock16IN_4_Out5 : STD_LOGIC;
  signal BusBlock16IN_4_Out6 : STD_LOGIC;
  signal BusBlock16IN_4_Out7 : STD_LOGIC;
  signal BusBlock16IN_4_Out8 : STD_LOGIC;
  signal BusBlock16IN_4_Out9 : STD_LOGIC;
  signal BusBlock16IN_5_Out0 : STD_LOGIC;
  signal BusBlock16IN_5_Out1 : STD_LOGIC;
  signal BusBlock16IN_5_Out10 : STD_LOGIC;
  signal BusBlock16IN_5_Out11 : STD_LOGIC;
  signal BusBlock16IN_5_Out12 : STD_LOGIC;
  signal BusBlock16IN_5_Out13 : STD_LOGIC;
  signal BusBlock16IN_5_Out14 : STD_LOGIC;
  signal BusBlock16IN_5_Out15 : STD_LOGIC;
  signal BusBlock16IN_5_Out2 : STD_LOGIC;
  signal BusBlock16IN_5_Out3 : STD_LOGIC;
  signal BusBlock16IN_5_Out4 : STD_LOGIC;
  signal BusBlock16IN_5_Out5 : STD_LOGIC;
  signal BusBlock16IN_5_Out6 : STD_LOGIC;
  signal BusBlock16IN_5_Out7 : STD_LOGIC;
  signal BusBlock16IN_5_Out8 : STD_LOGIC;
  signal BusBlock16IN_5_Out9 : STD_LOGIC;
  signal BusBlock16IN_6_Out0 : STD_LOGIC;
  signal BusBlock16IN_6_Out1 : STD_LOGIC;
  signal BusBlock16IN_6_Out10 : STD_LOGIC;
  signal BusBlock16IN_6_Out11 : STD_LOGIC;
  signal BusBlock16IN_6_Out12 : STD_LOGIC;
  signal BusBlock16IN_6_Out13 : STD_LOGIC;
  signal BusBlock16IN_6_Out14 : STD_LOGIC;
  signal BusBlock16IN_6_Out15 : STD_LOGIC;
  signal BusBlock16IN_6_Out2 : STD_LOGIC;
  signal BusBlock16IN_6_Out3 : STD_LOGIC;
  signal BusBlock16IN_6_Out4 : STD_LOGIC;
  signal BusBlock16IN_6_Out5 : STD_LOGIC;
  signal BusBlock16IN_6_Out6 : STD_LOGIC;
  signal BusBlock16IN_6_Out7 : STD_LOGIC;
  signal BusBlock16IN_6_Out8 : STD_LOGIC;
  signal BusBlock16IN_6_Out9 : STD_LOGIC;
  signal BusBlock16IN_7_Out0 : STD_LOGIC;
  signal BusBlock16IN_7_Out1 : STD_LOGIC;
  signal BusBlock16IN_7_Out10 : STD_LOGIC;
  signal BusBlock16IN_7_Out11 : STD_LOGIC;
  signal BusBlock16IN_7_Out12 : STD_LOGIC;
  signal BusBlock16IN_7_Out13 : STD_LOGIC;
  signal BusBlock16IN_7_Out14 : STD_LOGIC;
  signal BusBlock16IN_7_Out15 : STD_LOGIC;
  signal BusBlock16IN_7_Out2 : STD_LOGIC;
  signal BusBlock16IN_7_Out3 : STD_LOGIC;
  signal BusBlock16IN_7_Out4 : STD_LOGIC;
  signal BusBlock16IN_7_Out5 : STD_LOGIC;
  signal BusBlock16IN_7_Out6 : STD_LOGIC;
  signal BusBlock16IN_7_Out7 : STD_LOGIC;
  signal BusBlock16IN_7_Out8 : STD_LOGIC;
  signal BusBlock16IN_7_Out9 : STD_LOGIC;
  signal BusBlock16OUT_0_BusBlock16OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal BusBlock16OUT_1_BusBlock16OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal BusBlock16OUT_2_BusBlock16OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal BusBlock16OUT_3_BusBlock16OUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Clk_0_1 : STD_LOGIC;
  signal CurrentProtectionEnableGroup0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CurrentProtectionEnableGroup1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MaskAcknowledgeGroup0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MaskAcknowledgeGroup1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MaskCurrentGroup0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MaskCurrentGroup1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Ready_0_1 : STD_LOGIC;
  signal ReceiverGroup0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ReceiverGroup1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TransmitterGroup0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TransmitterGroup1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ackTime_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN AckChecker_Clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  AcknowledgeErrorGroup0(15 downto 0) <= BusBlock16OUT_0_BusBlock16OUT(15 downto 0);
  AcknowledgeErrorGroup1(15 downto 0) <= BusBlock16OUT_1_BusBlock16OUT(15 downto 0);
  AcknowledgeProtectionEnableGroup0_1(15 downto 0) <= AcknowledgeProtectionEnableGroup0(15 downto 0);
  AcknowledgeProtectionEnableGroup1_1(15 downto 0) <= AcknowledgeProtectionEnableGroup1(15 downto 0);
  Clk_0_1 <= Clk_0;
  CurrentErrorGroup0(15 downto 0) <= BusBlock16OUT_3_BusBlock16OUT(15 downto 0);
  CurrentErrorGroup1(15 downto 0) <= BusBlock16OUT_2_BusBlock16OUT(15 downto 0);
  CurrentProtectionEnableGroup0_1(15 downto 0) <= CurrentProtectionEnableGroup0(15 downto 0);
  CurrentProtectionEnableGroup1_1(15 downto 0) <= CurrentProtectionEnableGroup1(15 downto 0);
  MaskAcknowledgeGroup0_1(15 downto 0) <= MaskAcknowledgeGroup0(15 downto 0);
  MaskAcknowledgeGroup1_1(15 downto 0) <= MaskAcknowledgeGroup1(15 downto 0);
  MaskCurrentGroup0_1(15 downto 0) <= MaskCurrentGroup0(15 downto 0);
  MaskCurrentGroup1_1(15 downto 0) <= MaskCurrentGroup1(15 downto 0);
  Ready_0_1 <= Ready_0;
  ReceiverGroup0_1(15 downto 0) <= ReceiverGroup0(15 downto 0);
  ReceiverGroup1_1(15 downto 0) <= ReceiverGroup1(15 downto 0);
  TransmitterGroup0_1(15 downto 0) <= TransmitterGroup0(15 downto 0);
  TransmitterGroup1_1(15 downto 0) <= TransmitterGroup1(15 downto 0);
  ackTime_0_1(31 downto 0) <= ackTime_0(31 downto 0);
  reset_0_1 <= reset_0;
AckCheckerConcept_0: component AckChecker_AckCheckerConcept_0_0
     port map (
      AckPr => AckCheckerConcept_0_AckPr,
      AckPr_en => BusBlock16IN_0_Out0,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out0,
      currentPr => AckCheckerConcept_0_currentPr,
      currentPr_en => BusBlock16IN_4_Out0,
      line => BusBlock16IN_6_Out0,
      reset => reset_0_1
    );
AckCheckerConcept_1: component AckChecker_AckCheckerConcept_0_1
     port map (
      AckPr => AckCheckerConcept_1_AckPr,
      AckPr_en => BusBlock16IN_0_Out1,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out1,
      currentPr => AckCheckerConcept_1_currentPr,
      currentPr_en => BusBlock16IN_4_Out1,
      line => BusBlock16IN_6_Out1,
      reset => reset_0_1
    );
AckCheckerConcept_10: component AckChecker_AckCheckerConcept_6_1
     port map (
      AckPr => AckCheckerConcept_10_AckPr,
      AckPr_en => BusBlock16IN_0_Out10,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out10,
      currentPr => AckCheckerConcept_10_currentPr,
      currentPr_en => BusBlock16IN_4_Out10,
      line => BusBlock16IN_6_Out10,
      reset => reset_0_1
    );
AckCheckerConcept_11: component AckChecker_AckCheckerConcept_7_1
     port map (
      AckPr => AckCheckerConcept_11_AckPr,
      AckPr_en => BusBlock16IN_0_Out11,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out11,
      currentPr => AckCheckerConcept_11_currentPr,
      currentPr_en => BusBlock16IN_4_Out11,
      line => BusBlock16IN_6_Out11,
      reset => reset_0_1
    );
AckCheckerConcept_12: component AckChecker_AckCheckerConcept_4_2
     port map (
      AckPr => AckCheckerConcept_12_AckPr,
      AckPr_en => BusBlock16IN_0_Out12,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out12,
      currentPr => AckCheckerConcept_12_currentPr,
      currentPr_en => BusBlock16IN_4_Out12,
      line => BusBlock16IN_6_Out12,
      reset => reset_0_1
    );
AckCheckerConcept_13: component AckChecker_AckCheckerConcept_5_2
     port map (
      AckPr => AckCheckerConcept_13_AckPr,
      AckPr_en => BusBlock16IN_0_Out13,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out13,
      currentPr => AckCheckerConcept_13_currentPr,
      currentPr_en => BusBlock16IN_4_Out13,
      line => BusBlock16IN_6_Out13,
      reset => reset_0_1
    );
AckCheckerConcept_14: component AckChecker_AckCheckerConcept_6_2
     port map (
      AckPr => AckCheckerConcept_14_AckPr,
      AckPr_en => BusBlock16IN_0_Out14,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out14,
      currentPr => AckCheckerConcept_14_currentPr,
      currentPr_en => BusBlock16IN_4_Out14,
      line => BusBlock16IN_6_Out14,
      reset => reset_0_1
    );
AckCheckerConcept_15: component AckChecker_AckCheckerConcept_7_2
     port map (
      AckPr => AckCheckerConcept_15_AckPr,
      AckPr_en => BusBlock16IN_0_Out15,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out15,
      currentPr => AckCheckerConcept_15_currentPr,
      currentPr_en => BusBlock16IN_4_Out15,
      line => BusBlock16IN_6_Out15,
      reset => reset_0_1
    );
AckCheckerConcept_16: component AckChecker_AckCheckerConcept_12_0
     port map (
      AckPr => AckCheckerConcept_16_AckPr,
      AckPr_en => BusBlock16IN_1_Out0,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out0,
      currentPr => AckCheckerConcept_16_currentPr,
      currentPr_en => BusBlock16IN_5_Out0,
      line => BusBlock16IN_7_Out0,
      reset => reset_0_1
    );
AckCheckerConcept_17: component AckChecker_AckCheckerConcept_13_0
     port map (
      AckPr => AckCheckerConcept_17_AckPr,
      AckPr_en => BusBlock16IN_1_Out1,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out1,
      currentPr => AckCheckerConcept_17_currentPr,
      currentPr_en => BusBlock16IN_5_Out1,
      line => BusBlock16IN_7_Out1,
      reset => reset_0_1
    );
AckCheckerConcept_18: component AckChecker_AckCheckerConcept_14_0
     port map (
      AckPr => AckCheckerConcept_18_AckPr,
      AckPr_en => BusBlock16IN_1_Out2,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out2,
      currentPr => AckCheckerConcept_18_currentPr,
      currentPr_en => BusBlock16IN_5_Out2,
      line => BusBlock16IN_7_Out2,
      reset => reset_0_1
    );
AckCheckerConcept_19: component AckChecker_AckCheckerConcept_15_0
     port map (
      AckPr => AckCheckerConcept_19_AckPr,
      AckPr_en => BusBlock16IN_1_Out3,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out3,
      currentPr => AckCheckerConcept_19_currentPr,
      currentPr_en => BusBlock16IN_5_Out3,
      line => BusBlock16IN_7_Out3,
      reset => reset_0_1
    );
AckCheckerConcept_2: component AckChecker_AckCheckerConcept_0_2
     port map (
      AckPr => AckCheckerConcept_2_AckPr,
      AckPr_en => BusBlock16IN_0_Out2,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out2,
      currentPr => AckCheckerConcept_2_currentPr,
      currentPr_en => BusBlock16IN_4_Out2,
      line => BusBlock16IN_6_Out2,
      reset => reset_0_1
    );
AckCheckerConcept_20: component AckChecker_AckCheckerConcept_12_1
     port map (
      AckPr => AckCheckerConcept_20_AckPr,
      AckPr_en => BusBlock16IN_1_Out4,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out4,
      currentPr => AckCheckerConcept_20_currentPr,
      currentPr_en => BusBlock16IN_5_Out4,
      line => BusBlock16IN_7_Out4,
      reset => reset_0_1
    );
AckCheckerConcept_21: component AckChecker_AckCheckerConcept_13_1
     port map (
      AckPr => AckCheckerConcept_21_AckPr,
      AckPr_en => BusBlock16IN_1_Out5,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out5,
      currentPr => AckCheckerConcept_21_currentPr,
      currentPr_en => BusBlock16IN_5_Out5,
      line => BusBlock16IN_7_Out5,
      reset => reset_0_1
    );
AckCheckerConcept_22: component AckChecker_AckCheckerConcept_14_1
     port map (
      AckPr => AckCheckerConcept_22_AckPr,
      AckPr_en => BusBlock16IN_1_Out6,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out6,
      currentPr => AckCheckerConcept_22_currentPr,
      currentPr_en => BusBlock16IN_5_Out6,
      line => BusBlock16IN_7_Out6,
      reset => reset_0_1
    );
AckCheckerConcept_23: component AckChecker_AckCheckerConcept_15_1
     port map (
      AckPr => AckCheckerConcept_23_AckPr,
      AckPr_en => BusBlock16IN_1_Out7,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out7,
      currentPr => AckCheckerConcept_23_currentPr,
      currentPr_en => BusBlock16IN_5_Out7,
      line => BusBlock16IN_7_Out7,
      reset => reset_0_1
    );
AckCheckerConcept_24: component AckChecker_AckCheckerConcept_12_2
     port map (
      AckPr => AckCheckerConcept_24_AckPr,
      AckPr_en => BusBlock16IN_1_Out8,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out8,
      currentPr => AckCheckerConcept_24_currentPr,
      currentPr_en => BusBlock16IN_5_Out8,
      line => BusBlock16IN_7_Out8,
      reset => reset_0_1
    );
AckCheckerConcept_25: component AckChecker_AckCheckerConcept_13_2
     port map (
      AckPr => AckCheckerConcept_25_AckPr,
      AckPr_en => BusBlock16IN_1_Out9,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out9,
      currentPr => AckCheckerConcept_25_currentPr,
      currentPr_en => BusBlock16IN_5_Out9,
      line => BusBlock16IN_7_Out9,
      reset => reset_0_1
    );
AckCheckerConcept_26: component AckChecker_AckCheckerConcept_14_2
     port map (
      AckPr => AckCheckerConcept_26_AckPr,
      AckPr_en => BusBlock16IN_1_Out10,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out10,
      currentPr => AckCheckerConcept_26_currentPr,
      currentPr_en => BusBlock16IN_5_Out10,
      line => BusBlock16IN_7_Out10,
      reset => reset_0_1
    );
AckCheckerConcept_27: component AckChecker_AckCheckerConcept_15_2
     port map (
      AckPr => AckCheckerConcept_27_AckPr,
      AckPr_en => BusBlock16IN_1_Out11,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out11,
      currentPr => AckCheckerConcept_27_currentPr,
      currentPr_en => BusBlock16IN_5_Out11,
      line => BusBlock16IN_7_Out11,
      reset => reset_0_1
    );
AckCheckerConcept_28: component AckChecker_AckCheckerConcept_12_3
     port map (
      AckPr => AckCheckerConcept_28_AckPr,
      AckPr_en => BusBlock16IN_1_Out12,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out12,
      currentPr => AckCheckerConcept_28_currentPr,
      currentPr_en => BusBlock16IN_5_Out12,
      line => BusBlock16IN_7_Out12,
      reset => reset_0_1
    );
AckCheckerConcept_29: component AckChecker_AckCheckerConcept_13_3
     port map (
      AckPr => AckCheckerConcept_29_AckPr,
      AckPr_en => BusBlock16IN_1_Out13,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out13,
      currentPr => AckCheckerConcept_29_currentPr,
      currentPr_en => BusBlock16IN_5_Out13,
      line => BusBlock16IN_7_Out13,
      reset => reset_0_1
    );
AckCheckerConcept_3: component AckChecker_AckCheckerConcept_0_3
     port map (
      AckPr => AckCheckerConcept_3_AckPr,
      AckPr_en => BusBlock16IN_0_Out3,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out3,
      currentPr => AckCheckerConcept_3_currentPr,
      currentPr_en => BusBlock16IN_4_Out3,
      line => BusBlock16IN_6_Out3,
      reset => reset_0_1
    );
AckCheckerConcept_30: component AckChecker_AckCheckerConcept_14_3
     port map (
      AckPr => AckCheckerConcept_30_AckPr,
      AckPr_en => BusBlock16IN_1_Out14,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out14,
      currentPr => AckCheckerConcept_30_currentPr,
      currentPr_en => BusBlock16IN_5_Out14,
      line => BusBlock16IN_7_Out14,
      reset => reset_0_1
    );
AckCheckerConcept_31: component AckChecker_AckCheckerConcept_15_3
     port map (
      AckPr => AckCheckerConcept_31_AckPr,
      AckPr_en => BusBlock16IN_1_Out15,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_3_Out15,
      currentPr => AckCheckerConcept_31_currentPr,
      currentPr_en => BusBlock16IN_5_Out15,
      line => BusBlock16IN_7_Out15,
      reset => reset_0_1
    );
AckCheckerConcept_4: component AckChecker_AckCheckerConcept_0_4
     port map (
      AckPr => AckCheckerConcept_4_AckPr,
      AckPr_en => BusBlock16IN_0_Out4,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out4,
      currentPr => AckCheckerConcept_4_currentPr,
      currentPr_en => BusBlock16IN_4_Out4,
      line => BusBlock16IN_6_Out4,
      reset => reset_0_1
    );
AckCheckerConcept_5: component AckChecker_AckCheckerConcept_1_0
     port map (
      AckPr => AckCheckerConcept_5_AckPr,
      AckPr_en => BusBlock16IN_0_Out5,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out5,
      currentPr => AckCheckerConcept_5_currentPr,
      currentPr_en => BusBlock16IN_4_Out5,
      line => BusBlock16IN_6_Out5,
      reset => reset_0_1
    );
AckCheckerConcept_6: component AckChecker_AckCheckerConcept_2_0
     port map (
      AckPr => AckCheckerConcept_6_AckPr,
      AckPr_en => BusBlock16IN_0_Out6,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out6,
      currentPr => AckCheckerConcept_6_currentPr,
      currentPr_en => BusBlock16IN_4_Out6,
      line => BusBlock16IN_6_Out6,
      reset => reset_0_1
    );
AckCheckerConcept_7: component AckChecker_AckCheckerConcept_3_0
     port map (
      AckPr => AckCheckerConcept_7_AckPr,
      AckPr_en => BusBlock16IN_0_Out7,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out7,
      currentPr => AckCheckerConcept_7_currentPr,
      currentPr_en => BusBlock16IN_4_Out7,
      line => BusBlock16IN_6_Out7,
      reset => reset_0_1
    );
AckCheckerConcept_8: component AckChecker_AckCheckerConcept_4_1
     port map (
      AckPr => AckCheckerConcept_8_AckPr,
      AckPr_en => BusBlock16IN_0_Out8,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out8,
      currentPr => AckCheckerConcept_8_currentPr,
      currentPr_en => BusBlock16IN_4_Out8,
      line => BusBlock16IN_6_Out8,
      reset => reset_0_1
    );
AckCheckerConcept_9: component AckChecker_AckCheckerConcept_5_1
     port map (
      AckPr => AckCheckerConcept_9_AckPr,
      AckPr_en => BusBlock16IN_0_Out9,
      Clk => Clk_0_1,
      Ready => Ready_0_1,
      ackTime(31 downto 0) => ackTime_0_1(31 downto 0),
      acknowledge_in => BusBlock16IN_2_Out9,
      currentPr => AckCheckerConcept_9_currentPr,
      currentPr_en => BusBlock16IN_4_Out9,
      line => BusBlock16IN_6_Out9,
      reset => reset_0_1
    );
BusBlock16IN_0: component AckChecker_BusBlock16IN_0_0
     port map (
      Bus_16IN(15 downto 0) => AcknowledgeProtectionEnableGroup0_1(15 downto 0),
      Out0 => BusBlock16IN_0_Out0,
      Out1 => BusBlock16IN_0_Out1,
      Out10 => BusBlock16IN_0_Out10,
      Out11 => BusBlock16IN_0_Out11,
      Out12 => BusBlock16IN_0_Out12,
      Out13 => BusBlock16IN_0_Out13,
      Out14 => BusBlock16IN_0_Out14,
      Out15 => BusBlock16IN_0_Out15,
      Out2 => BusBlock16IN_0_Out2,
      Out3 => BusBlock16IN_0_Out3,
      Out4 => BusBlock16IN_0_Out4,
      Out5 => BusBlock16IN_0_Out5,
      Out6 => BusBlock16IN_0_Out6,
      Out7 => BusBlock16IN_0_Out7,
      Out8 => BusBlock16IN_0_Out8,
      Out9 => BusBlock16IN_0_Out9
    );
BusBlock16IN_1: component AckChecker_BusBlock16IN_0_1
     port map (
      Bus_16IN(15 downto 0) => AcknowledgeProtectionEnableGroup1_1(15 downto 0),
      Out0 => BusBlock16IN_1_Out0,
      Out1 => BusBlock16IN_1_Out1,
      Out10 => BusBlock16IN_1_Out10,
      Out11 => BusBlock16IN_1_Out11,
      Out12 => BusBlock16IN_1_Out12,
      Out13 => BusBlock16IN_1_Out13,
      Out14 => BusBlock16IN_1_Out14,
      Out15 => BusBlock16IN_1_Out15,
      Out2 => BusBlock16IN_1_Out2,
      Out3 => BusBlock16IN_1_Out3,
      Out4 => BusBlock16IN_1_Out4,
      Out5 => BusBlock16IN_1_Out5,
      Out6 => BusBlock16IN_1_Out6,
      Out7 => BusBlock16IN_1_Out7,
      Out8 => BusBlock16IN_1_Out8,
      Out9 => BusBlock16IN_1_Out9
    );
BusBlock16IN_2: component AckChecker_BusBlock16IN_0_2
     port map (
      Bus_16IN(15 downto 0) => ReceiverGroup0_1(15 downto 0),
      Out0 => BusBlock16IN_2_Out0,
      Out1 => BusBlock16IN_2_Out1,
      Out10 => BusBlock16IN_2_Out10,
      Out11 => BusBlock16IN_2_Out11,
      Out12 => BusBlock16IN_2_Out12,
      Out13 => BusBlock16IN_2_Out13,
      Out14 => BusBlock16IN_2_Out14,
      Out15 => BusBlock16IN_2_Out15,
      Out2 => BusBlock16IN_2_Out2,
      Out3 => BusBlock16IN_2_Out3,
      Out4 => BusBlock16IN_2_Out4,
      Out5 => BusBlock16IN_2_Out5,
      Out6 => BusBlock16IN_2_Out6,
      Out7 => BusBlock16IN_2_Out7,
      Out8 => BusBlock16IN_2_Out8,
      Out9 => BusBlock16IN_2_Out9
    );
BusBlock16IN_3: component AckChecker_BusBlock16IN_2_0
     port map (
      Bus_16IN(15 downto 0) => ReceiverGroup1_1(15 downto 0),
      Out0 => BusBlock16IN_3_Out0,
      Out1 => BusBlock16IN_3_Out1,
      Out10 => BusBlock16IN_3_Out10,
      Out11 => BusBlock16IN_3_Out11,
      Out12 => BusBlock16IN_3_Out12,
      Out13 => BusBlock16IN_3_Out13,
      Out14 => BusBlock16IN_3_Out14,
      Out15 => BusBlock16IN_3_Out15,
      Out2 => BusBlock16IN_3_Out2,
      Out3 => BusBlock16IN_3_Out3,
      Out4 => BusBlock16IN_3_Out4,
      Out5 => BusBlock16IN_3_Out5,
      Out6 => BusBlock16IN_3_Out6,
      Out7 => BusBlock16IN_3_Out7,
      Out8 => BusBlock16IN_3_Out8,
      Out9 => BusBlock16IN_3_Out9
    );
BusBlock16IN_4: component AckChecker_BusBlock16IN_1_0
     port map (
      Bus_16IN(15 downto 0) => CurrentProtectionEnableGroup0_1(15 downto 0),
      Out0 => BusBlock16IN_4_Out0,
      Out1 => BusBlock16IN_4_Out1,
      Out10 => BusBlock16IN_4_Out10,
      Out11 => BusBlock16IN_4_Out11,
      Out12 => BusBlock16IN_4_Out12,
      Out13 => BusBlock16IN_4_Out13,
      Out14 => BusBlock16IN_4_Out14,
      Out15 => BusBlock16IN_4_Out15,
      Out2 => BusBlock16IN_4_Out2,
      Out3 => BusBlock16IN_4_Out3,
      Out4 => BusBlock16IN_4_Out4,
      Out5 => BusBlock16IN_4_Out5,
      Out6 => BusBlock16IN_4_Out6,
      Out7 => BusBlock16IN_4_Out7,
      Out8 => BusBlock16IN_4_Out8,
      Out9 => BusBlock16IN_4_Out9
    );
BusBlock16IN_5: component AckChecker_BusBlock16IN_4_0
     port map (
      Bus_16IN(15 downto 0) => CurrentProtectionEnableGroup1_1(15 downto 0),
      Out0 => BusBlock16IN_5_Out0,
      Out1 => BusBlock16IN_5_Out1,
      Out10 => BusBlock16IN_5_Out10,
      Out11 => BusBlock16IN_5_Out11,
      Out12 => BusBlock16IN_5_Out12,
      Out13 => BusBlock16IN_5_Out13,
      Out14 => BusBlock16IN_5_Out14,
      Out15 => BusBlock16IN_5_Out15,
      Out2 => BusBlock16IN_5_Out2,
      Out3 => BusBlock16IN_5_Out3,
      Out4 => BusBlock16IN_5_Out4,
      Out5 => BusBlock16IN_5_Out5,
      Out6 => BusBlock16IN_5_Out6,
      Out7 => BusBlock16IN_5_Out7,
      Out8 => BusBlock16IN_5_Out8,
      Out9 => BusBlock16IN_5_Out9
    );
BusBlock16IN_6: component AckChecker_BusBlock16IN_4_1
     port map (
      Bus_16IN(15 downto 0) => TransmitterGroup0_1(15 downto 0),
      Out0 => BusBlock16IN_6_Out0,
      Out1 => BusBlock16IN_6_Out1,
      Out10 => BusBlock16IN_6_Out10,
      Out11 => BusBlock16IN_6_Out11,
      Out12 => BusBlock16IN_6_Out12,
      Out13 => BusBlock16IN_6_Out13,
      Out14 => BusBlock16IN_6_Out14,
      Out15 => BusBlock16IN_6_Out15,
      Out2 => BusBlock16IN_6_Out2,
      Out3 => BusBlock16IN_6_Out3,
      Out4 => BusBlock16IN_6_Out4,
      Out5 => BusBlock16IN_6_Out5,
      Out6 => BusBlock16IN_6_Out6,
      Out7 => BusBlock16IN_6_Out7,
      Out8 => BusBlock16IN_6_Out8,
      Out9 => BusBlock16IN_6_Out9
    );
BusBlock16IN_7: component AckChecker_BusBlock16IN_6_0
     port map (
      Bus_16IN(15 downto 0) => TransmitterGroup1_1(15 downto 0),
      Out0 => BusBlock16IN_7_Out0,
      Out1 => BusBlock16IN_7_Out1,
      Out10 => BusBlock16IN_7_Out10,
      Out11 => BusBlock16IN_7_Out11,
      Out12 => BusBlock16IN_7_Out12,
      Out13 => BusBlock16IN_7_Out13,
      Out14 => BusBlock16IN_7_Out14,
      Out15 => BusBlock16IN_7_Out15,
      Out2 => BusBlock16IN_7_Out2,
      Out3 => BusBlock16IN_7_Out3,
      Out4 => BusBlock16IN_7_Out4,
      Out5 => BusBlock16IN_7_Out5,
      Out6 => BusBlock16IN_7_Out6,
      Out7 => BusBlock16IN_7_Out7,
      Out8 => BusBlock16IN_7_Out8,
      Out9 => BusBlock16IN_7_Out9
    );
BusBlock16OUT_0: component AckChecker_BusBlock16OUT_0_0
     port map (
      Bus_16OUT(15 downto 0) => BusBlock16OUT_0_BusBlock16OUT(15 downto 0),
      In0 => AckCheckerConcept_0_AckPr,
      In1 => AckCheckerConcept_1_AckPr,
      In10 => AckCheckerConcept_10_AckPr,
      In11 => AckCheckerConcept_11_AckPr,
      In12 => AckCheckerConcept_12_AckPr,
      In13 => AckCheckerConcept_13_AckPr,
      In14 => AckCheckerConcept_14_AckPr,
      In15 => AckCheckerConcept_15_AckPr,
      In2 => AckCheckerConcept_2_AckPr,
      In3 => AckCheckerConcept_3_AckPr,
      In4 => AckCheckerConcept_4_AckPr,
      In5 => AckCheckerConcept_5_AckPr,
      In6 => AckCheckerConcept_6_AckPr,
      In7 => AckCheckerConcept_7_AckPr,
      In8 => AckCheckerConcept_8_AckPr,
      In9 => AckCheckerConcept_9_AckPr,
      Mask(15 downto 0) => MaskAcknowledgeGroup0_1(15 downto 0)
    );
BusBlock16OUT_1: component AckChecker_BusBlock16OUT_0_1
     port map (
      Bus_16OUT(15 downto 0) => BusBlock16OUT_1_BusBlock16OUT(15 downto 0),
      In0 => AckCheckerConcept_16_AckPr,
      In1 => AckCheckerConcept_17_AckPr,
      In10 => AckCheckerConcept_26_AckPr,
      In11 => AckCheckerConcept_27_AckPr,
      In12 => AckCheckerConcept_28_AckPr,
      In13 => AckCheckerConcept_29_AckPr,
      In14 => AckCheckerConcept_30_AckPr,
      In15 => AckCheckerConcept_31_AckPr,
      In2 => AckCheckerConcept_18_AckPr,
      In3 => AckCheckerConcept_19_AckPr,
      In4 => AckCheckerConcept_20_AckPr,
      In5 => AckCheckerConcept_21_AckPr,
      In6 => AckCheckerConcept_22_AckPr,
      In7 => AckCheckerConcept_23_AckPr,
      In8 => AckCheckerConcept_24_AckPr,
      In9 => AckCheckerConcept_25_AckPr,
      Mask(15 downto 0) => MaskAcknowledgeGroup1_1(15 downto 0)
    );
BusBlock16OUT_2: component AckChecker_BusBlock16OUT_0_2
     port map (
      Bus_16OUT(15 downto 0) => BusBlock16OUT_2_BusBlock16OUT(15 downto 0),
      In0 => AckCheckerConcept_16_currentPr,
      In1 => AckCheckerConcept_17_currentPr,
      In10 => AckCheckerConcept_26_currentPr,
      In11 => AckCheckerConcept_27_currentPr,
      In12 => AckCheckerConcept_28_currentPr,
      In13 => AckCheckerConcept_29_currentPr,
      In14 => AckCheckerConcept_30_currentPr,
      In15 => AckCheckerConcept_31_currentPr,
      In2 => AckCheckerConcept_18_currentPr,
      In3 => AckCheckerConcept_19_currentPr,
      In4 => AckCheckerConcept_20_currentPr,
      In5 => AckCheckerConcept_21_currentPr,
      In6 => AckCheckerConcept_22_currentPr,
      In7 => AckCheckerConcept_23_currentPr,
      In8 => AckCheckerConcept_24_currentPr,
      In9 => AckCheckerConcept_25_currentPr,
      Mask(15 downto 0) => MaskCurrentGroup1_1(15 downto 0)
    );
BusBlock16OUT_3: component AckChecker_BusBlock16OUT_1_0
     port map (
      Bus_16OUT(15 downto 0) => BusBlock16OUT_3_BusBlock16OUT(15 downto 0),
      In0 => AckCheckerConcept_0_currentPr,
      In1 => AckCheckerConcept_1_currentPr,
      In10 => AckCheckerConcept_10_currentPr,
      In11 => AckCheckerConcept_11_currentPr,
      In12 => AckCheckerConcept_12_currentPr,
      In13 => AckCheckerConcept_13_currentPr,
      In14 => AckCheckerConcept_14_currentPr,
      In15 => AckCheckerConcept_15_currentPr,
      In2 => AckCheckerConcept_2_currentPr,
      In3 => AckCheckerConcept_3_currentPr,
      In4 => AckCheckerConcept_4_currentPr,
      In5 => AckCheckerConcept_5_currentPr,
      In6 => AckCheckerConcept_6_currentPr,
      In7 => AckCheckerConcept_7_currentPr,
      In8 => AckCheckerConcept_8_currentPr,
      In9 => AckCheckerConcept_9_currentPr,
      Mask(15 downto 0) => MaskCurrentGroup0_1(15 downto 0)
    );
end STRUCTURE;
