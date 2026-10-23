-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 11:47:49 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AcknowledgeChecker_v_0_1_stub.vhdl
-- Design      : design_1_AcknowledgeChecker_v_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    ackin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    currentpren : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ackpren : in STD_LOGIC_VECTOR ( 3 downto 0 );
    currentpr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ackpr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    acktime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    keyin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ackin[3:0],currentpren[3:0],ackpren[3:0],currentpr[3:0],ackpr[3:0],acktime[7:0],keyin[3:0],ready,reset";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AcknowledgeChecker_ver_1_0,Vivado 2019.1";
begin
end;
