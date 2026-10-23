-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 11:47:49 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top TransistorKeys_FrequencyDividerWith_2_1 -prefix
--               TransistorKeys_FrequencyDividerWith_2_1_ design_1_FrequencyDividerWith_0_0_stub.vhdl
-- Design      : design_1_FrequencyDividerWith_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TransistorKeys_FrequencyDividerWith_2_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clkdiv : out STD_LOGIC
  );

end TransistorKeys_FrequencyDividerWith_2_1;

architecture stub of TransistorKeys_FrequencyDividerWith_2_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,clkdiv";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FrequencyDividerWithReset_ver_1_0,Vivado 2019.1";
begin
end;
