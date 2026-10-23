-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 12:35:07 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top TransistorKeys_OneStageSynchronizer_2_0 -prefix
--               TransistorKeys_OneStageSynchronizer_2_0_ design_1_OneStageSynchronizer_0_3_stub.vhdl
-- Design      : design_1_OneStageSynchronizer_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TransistorKeys_OneStageSynchronizer_2_0 is
  Port ( 
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sync_signal : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end TransistorKeys_OneStageSynchronizer_2_0;

architecture stub of TransistorKeys_OneStageSynchronizer_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,async_signal[1:0],sync_signal[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "OneStageSynchronizerAndDigitalFilterBlock_ver_1_0,Vivado 2019.1";
begin
end;
