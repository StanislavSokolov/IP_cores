-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jun 10 15:31:51 2021
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Inverter_3lvl_BUS_16OUT_1_0 -prefix
--               Inverter_3lvl_BUS_16OUT_1_0_ Inverter_3lvl_BUS_16OUT_0_0_sim_netlist.vhdl
-- Design      : Inverter_3lvl_BUS_16OUT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Inverter_3lvl_BUS_16OUT_1_0_BUS_16OUT is
  port (
    BusBlock16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    In0 : in STD_LOGIC;
    Mask : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
    In15 : in STD_LOGIC
  );
end Inverter_3lvl_BUS_16OUT_1_0_BUS_16OUT;

architecture STRUCTURE of Inverter_3lvl_BUS_16OUT_1_0_BUS_16OUT is
begin
\BusBlock16OUT[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In0,
      I1 => Mask(0),
      O => BusBlock16OUT(0)
    );
\BusBlock16OUT[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In10,
      I1 => Mask(10),
      O => BusBlock16OUT(10)
    );
\BusBlock16OUT[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In11,
      I1 => Mask(11),
      O => BusBlock16OUT(11)
    );
\BusBlock16OUT[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In12,
      I1 => Mask(12),
      O => BusBlock16OUT(12)
    );
\BusBlock16OUT[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In13,
      I1 => Mask(13),
      O => BusBlock16OUT(13)
    );
\BusBlock16OUT[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In14,
      I1 => Mask(14),
      O => BusBlock16OUT(14)
    );
\BusBlock16OUT[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In15,
      I1 => Mask(15),
      O => BusBlock16OUT(15)
    );
\BusBlock16OUT[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In1,
      I1 => Mask(1),
      O => BusBlock16OUT(1)
    );
\BusBlock16OUT[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In2,
      I1 => Mask(2),
      O => BusBlock16OUT(2)
    );
\BusBlock16OUT[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In3,
      I1 => Mask(3),
      O => BusBlock16OUT(3)
    );
\BusBlock16OUT[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In4,
      I1 => Mask(4),
      O => BusBlock16OUT(4)
    );
\BusBlock16OUT[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In5,
      I1 => Mask(5),
      O => BusBlock16OUT(5)
    );
\BusBlock16OUT[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In6,
      I1 => Mask(6),
      O => BusBlock16OUT(6)
    );
\BusBlock16OUT[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In7,
      I1 => Mask(7),
      O => BusBlock16OUT(7)
    );
\BusBlock16OUT[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In8,
      I1 => Mask(8),
      O => BusBlock16OUT(8)
    );
\BusBlock16OUT[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In9,
      I1 => Mask(9),
      O => BusBlock16OUT(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Inverter_3lvl_BUS_16OUT_1_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Inverter_3lvl_BUS_16OUT_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Inverter_3lvl_BUS_16OUT_1_0 : entity is "Inverter_3lvl_BUS_16OUT_0_0,BUS_16OUT,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Inverter_3lvl_BUS_16OUT_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Inverter_3lvl_BUS_16OUT_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Inverter_3lvl_BUS_16OUT_1_0 : entity is "BUS_16OUT,Vivado 2019.1";
end Inverter_3lvl_BUS_16OUT_1_0;

architecture STRUCTURE of Inverter_3lvl_BUS_16OUT_1_0 is
begin
U0: entity work.Inverter_3lvl_BUS_16OUT_1_0_BUS_16OUT
     port map (
      BusBlock16OUT(15 downto 0) => BusBlock16OUT(15 downto 0),
      In0 => In0,
      In1 => In1,
      In10 => In10,
      In11 => In11,
      In12 => In12,
      In13 => In13,
      In14 => In14,
      In15 => In15,
      In2 => In2,
      In3 => In3,
      In4 => In4,
      In5 => In5,
      In6 => In6,
      In7 => In7,
      In8 => In8,
      In9 => In9,
      Mask(15 downto 0) => Mask(15 downto 0)
    );
end STRUCTURE;
