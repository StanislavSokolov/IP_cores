--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Jun 11 07:48:53 2021
--Host        : STAS-W10 running 64-bit major release  (build 9200)
--Command     : generate_target Inverter_3lvl_wrapper.bd
--Design      : Inverter_3lvl_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Inverter_3lvl_wrapper is
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
end Inverter_3lvl_wrapper;

architecture STRUCTURE of Inverter_3lvl_wrapper is
  component Inverter_3lvl is
  port (
    ready_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    deadTime_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er_0 : in STD_LOGIC;
    minTime_En_0 : in STD_LOGIC;
    BreakingEnable : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PWM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ChGroup0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ChGroup1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MinTimeError : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskChGroup1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskMinTimeError : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MaskChGroup0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    externalCLK_0 : in STD_LOGIC
  );
  end component Inverter_3lvl;
begin
Inverter_3lvl_i: component Inverter_3lvl
     port map (
      BreakingEnable(15 downto 0) => BreakingEnable(15 downto 0),
      ChGroup0(15 downto 0) => ChGroup0(15 downto 0),
      ChGroup1(15 downto 0) => ChGroup1(15 downto 0),
      MaskChGroup0(15 downto 0) => MaskChGroup0(15 downto 0),
      MaskChGroup1(15 downto 0) => MaskChGroup1(15 downto 0),
      MaskMinTimeError(15 downto 0) => MaskMinTimeError(15 downto 0),
      MinTimeError(15 downto 0) => MinTimeError(15 downto 0),
      PWM(15 downto 0) => PWM(15 downto 0),
      deadTime_0(31 downto 0) => deadTime_0(31 downto 0),
      er_0 => er_0,
      externalCLK_0 => externalCLK_0,
      minTime_0(31 downto 0) => minTime_0(31 downto 0),
      minTime_En_0 => minTime_En_0,
      ready_0 => ready_0,
      reset_0 => reset_0
    );
end STRUCTURE;
