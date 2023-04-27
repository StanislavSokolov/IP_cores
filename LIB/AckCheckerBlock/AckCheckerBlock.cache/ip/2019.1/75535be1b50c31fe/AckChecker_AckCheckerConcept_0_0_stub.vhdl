-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Apr 29 14:05:08 2020
-- Host        : Stas running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AckChecker_AckCheckerConcept_0_0_stub.vhdl
-- Design      : AckChecker_AckCheckerConcept_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ackTime[31:0],AckPr_en,AckPr,acknowledge_in,Clk,currentPr_en,currentPr,line,Ready,reset";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AckCheckerConcept,Vivado 2019.1";
begin
end;
