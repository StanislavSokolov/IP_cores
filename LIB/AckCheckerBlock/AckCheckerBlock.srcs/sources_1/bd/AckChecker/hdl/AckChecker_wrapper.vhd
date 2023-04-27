--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Wed Apr 29 14:10:03 2020
--Host        : Stas running 64-bit major release  (build 9200)
--Command     : generate_target AckChecker_wrapper.bd
--Design      : AckChecker_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AckChecker_wrapper is
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
end AckChecker_wrapper;

architecture STRUCTURE of AckChecker_wrapper is
  component AckChecker is
  port (
    ackTime_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Clk_0 : in STD_LOGIC;
    Ready_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    AcknowledgeErrorGroup0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AcknowledgeErrorGroup1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentErrorGroup0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentErrorGroup1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskAcknowledgeGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskAcknowledgeGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskCurrentGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskCurrentGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AcknowledgeProtectionEnableGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AcknowledgeProtectionEnableGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ReceiverGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ReceiverGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentProtectionEnableGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CurrentProtectionEnableGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TransmitterGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TransmitterGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component AckChecker;
begin
AckChecker_i: component AckChecker
     port map (
      AcknowledgeErrorGroup0(15 downto 0) => AcknowledgeErrorGroup0(15 downto 0),
      AcknowledgeErrorGroup1(15 downto 0) => AcknowledgeErrorGroup1(15 downto 0),
      AcknowledgeProtectionEnableGroup0(15 downto 0) => AcknowledgeProtectionEnableGroup0(15 downto 0),
      AcknowledgeProtectionEnableGroup1(15 downto 0) => AcknowledgeProtectionEnableGroup1(15 downto 0),
      Clk_0 => Clk_0,
      CurrentErrorGroup0(15 downto 0) => CurrentErrorGroup0(15 downto 0),
      CurrentErrorGroup1(15 downto 0) => CurrentErrorGroup1(15 downto 0),
      CurrentProtectionEnableGroup0(15 downto 0) => CurrentProtectionEnableGroup0(15 downto 0),
      CurrentProtectionEnableGroup1(15 downto 0) => CurrentProtectionEnableGroup1(15 downto 0),
      MaskAcknowledgeGroup0(15 downto 0) => MaskAcknowledgeGroup0(15 downto 0),
      MaskAcknowledgeGroup1(15 downto 0) => MaskAcknowledgeGroup1(15 downto 0),
      MaskCurrentGroup0(15 downto 0) => MaskCurrentGroup0(15 downto 0),
      MaskCurrentGroup1(15 downto 0) => MaskCurrentGroup1(15 downto 0),
      Ready_0 => Ready_0,
      ReceiverGroup0(15 downto 0) => ReceiverGroup0(15 downto 0),
      ReceiverGroup1(15 downto 0) => ReceiverGroup1(15 downto 0),
      TransmitterGroup0(15 downto 0) => TransmitterGroup0(15 downto 0),
      TransmitterGroup1(15 downto 0) => TransmitterGroup1(15 downto 0),
      ackTime_0(31 downto 0) => ackTime_0(31 downto 0),
      reset_0 => reset_0
    );
end STRUCTURE;
