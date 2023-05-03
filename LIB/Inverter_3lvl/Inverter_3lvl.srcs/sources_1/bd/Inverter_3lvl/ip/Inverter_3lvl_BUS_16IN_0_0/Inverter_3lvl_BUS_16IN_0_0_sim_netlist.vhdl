-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Jun 11 07:49:57 2021
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Inverter_3lvl_BUS_16IN_0_0 -prefix
--               Inverter_3lvl_BUS_16IN_0_0_ Inverter_3lvl_BUS_16IN_0_0_sim_netlist.vhdl
-- Design      : Inverter_3lvl_BUS_16IN_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Inverter_3lvl_BUS_16IN_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Inverter_3lvl_BUS_16IN_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Inverter_3lvl_BUS_16IN_0_0 : entity is "Inverter_3lvl_BUS_16IN_0_0,BUS_16IN,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Inverter_3lvl_BUS_16IN_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Inverter_3lvl_BUS_16IN_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Inverter_3lvl_BUS_16IN_0_0 : entity is "BUS_16IN,Vivado 2019.1";
end Inverter_3lvl_BUS_16IN_0_0;

architecture STRUCTURE of Inverter_3lvl_BUS_16IN_0_0 is
  signal \^busblock16in\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Out0 <= \^busblock16in\(0);
  Out1 <= \^busblock16in\(1);
  Out10 <= \^busblock16in\(10);
  Out11 <= \^busblock16in\(11);
  Out12 <= \^busblock16in\(12);
  Out13 <= \^busblock16in\(13);
  Out14 <= \^busblock16in\(14);
  Out15 <= \^busblock16in\(15);
  Out2 <= \^busblock16in\(2);
  Out3 <= \^busblock16in\(3);
  Out4 <= \^busblock16in\(4);
  Out5 <= \^busblock16in\(5);
  Out6 <= \^busblock16in\(6);
  Out7 <= \^busblock16in\(7);
  Out8 <= \^busblock16in\(8);
  Out9 <= \^busblock16in\(9);
  \^busblock16in\(15 downto 0) <= BusBlock16IN(15 downto 0);
end STRUCTURE;
