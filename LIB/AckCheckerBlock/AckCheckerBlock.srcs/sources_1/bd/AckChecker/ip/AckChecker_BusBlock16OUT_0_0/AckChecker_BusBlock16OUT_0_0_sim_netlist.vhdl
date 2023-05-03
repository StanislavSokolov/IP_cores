-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed May  3 11:35:54 2023
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/GITEA/GitHub/ES/IP_cores/LIB/AckCheckerBlock/AckCheckerBlock.srcs/sources_1/bd/AckChecker/ip/AckChecker_BusBlock16OUT_0_0/AckChecker_BusBlock16OUT_0_0_sim_netlist.vhdl
-- Design      : AckChecker_BusBlock16OUT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AckChecker_BusBlock16OUT_0_0_BusBlock16OUT is
  port (
    Bus_16OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AckChecker_BusBlock16OUT_0_0_BusBlock16OUT : entity is "BusBlock16OUT";
end AckChecker_BusBlock16OUT_0_0_BusBlock16OUT;

architecture STRUCTURE of AckChecker_BusBlock16OUT_0_0_BusBlock16OUT is
begin
\Bus_16OUT[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In0,
      I1 => Mask(0),
      O => Bus_16OUT(0)
    );
\Bus_16OUT[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In10,
      I1 => Mask(10),
      O => Bus_16OUT(10)
    );
\Bus_16OUT[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In11,
      I1 => Mask(11),
      O => Bus_16OUT(11)
    );
\Bus_16OUT[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In12,
      I1 => Mask(12),
      O => Bus_16OUT(12)
    );
\Bus_16OUT[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In13,
      I1 => Mask(13),
      O => Bus_16OUT(13)
    );
\Bus_16OUT[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In14,
      I1 => Mask(14),
      O => Bus_16OUT(14)
    );
\Bus_16OUT[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In15,
      I1 => Mask(15),
      O => Bus_16OUT(15)
    );
\Bus_16OUT[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In1,
      I1 => Mask(1),
      O => Bus_16OUT(1)
    );
\Bus_16OUT[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In2,
      I1 => Mask(2),
      O => Bus_16OUT(2)
    );
\Bus_16OUT[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In3,
      I1 => Mask(3),
      O => Bus_16OUT(3)
    );
\Bus_16OUT[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In4,
      I1 => Mask(4),
      O => Bus_16OUT(4)
    );
\Bus_16OUT[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In5,
      I1 => Mask(5),
      O => Bus_16OUT(5)
    );
\Bus_16OUT[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In6,
      I1 => Mask(6),
      O => Bus_16OUT(6)
    );
\Bus_16OUT[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In7,
      I1 => Mask(7),
      O => Bus_16OUT(7)
    );
\Bus_16OUT[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In8,
      I1 => Mask(8),
      O => Bus_16OUT(8)
    );
\Bus_16OUT[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => In9,
      I1 => Mask(9),
      O => Bus_16OUT(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AckChecker_BusBlock16OUT_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AckChecker_BusBlock16OUT_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AckChecker_BusBlock16OUT_0_0 : entity is "AckChecker_BusBlock16OUT_0_0,BusBlock16OUT,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of AckChecker_BusBlock16OUT_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of AckChecker_BusBlock16OUT_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of AckChecker_BusBlock16OUT_0_0 : entity is "BusBlock16OUT,Vivado 2019.1";
end AckChecker_BusBlock16OUT_0_0;

architecture STRUCTURE of AckChecker_BusBlock16OUT_0_0 is
begin
U0: entity work.AckChecker_BusBlock16OUT_0_0_BusBlock16OUT
     port map (
      Bus_16OUT(15 downto 0) => Bus_16OUT(15 downto 0),
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
