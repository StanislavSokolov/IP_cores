-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 11:48:31 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top TransistorKeys_KeyControllerP0N_ver_0_1 -prefix
--               TransistorKeys_KeyControllerP0N_ver_0_1_ design_1_KeyControllerP0N_ver_0_0_stub.vhdl
-- Design      : design_1_KeyControllerP0N_ver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TransistorKeys_KeyControllerP0N_ver_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    er0in : in STD_LOGIC;
    start : out STD_LOGIC;
    isdeadtimeok : in STD_LOGIC;
    linepren : in STD_LOGIC;
    linepr : out STD_LOGIC;
    keysout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    keysel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    breaken : in STD_LOGIC;
    ready : in STD_LOGIC;
    ob : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    softshutdownen : in STD_LOGIC;
    softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 );
    softshutdownpr : out STD_LOGIC
  );

end TransistorKeys_KeyControllerP0N_ver_0_1;

architecture stub of TransistorKeys_KeyControllerP0N_ver_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,er0in,start,isdeadtimeok,linepren,linepr,keysout[3:0],keysel[1:0],keysen[3:0],breaken,ready,ob[1:0],reset,softshutdownen,softshutdowntimer[15:0],softshutdownpr";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "KeyControllerP0N_ver_2_0,Vivado 2019.1";
begin
end;
