-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 11:47:49 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TransistorKeys_CalculatingMintime_v_0_1 -prefix
--               TransistorKeys_CalculatingMintime_v_0_1_ design_1_CalculatingMintime_v_0_0_sim_netlist.vhdl
-- Design      : design_1_CalculatingMintime_v_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_CalculatingMintime_v_0_1_CalculatingMintime_ver_1_0 is
  port (
    timeerror : out STD_LOGIC_VECTOR ( 7 downto 0 );
    error : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    start : in STD_LOGIC;
    en : in STD_LOGIC;
    mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ce : in STD_LOGIC
  );
end TransistorKeys_CalculatingMintime_v_0_1_CalculatingMintime_ver_1_0;

architecture STRUCTURE of TransistorKeys_CalculatingMintime_v_0_1_CalculatingMintime_ver_1_0 is
  signal cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \^error\ : STD_LOGIC;
  signal \errorBuf1__3\ : STD_LOGIC;
  signal errorBuf1_carry_i_1_n_0 : STD_LOGIC;
  signal errorBuf1_carry_i_2_n_0 : STD_LOGIC;
  signal errorBuf1_carry_i_3_n_0 : STD_LOGIC;
  signal errorBuf1_carry_i_4_n_0 : STD_LOGIC;
  signal errorBuf1_carry_i_5_n_0 : STD_LOGIC;
  signal errorBuf1_carry_i_6_n_0 : STD_LOGIC;
  signal errorBuf1_carry_i_7_n_0 : STD_LOGIC;
  signal errorBuf1_carry_i_8_n_0 : STD_LOGIC;
  signal errorBuf1_carry_n_1 : STD_LOGIC;
  signal errorBuf1_carry_n_2 : STD_LOGIC;
  signal errorBuf1_carry_n_3 : STD_LOGIC;
  signal errorBuf_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \timeerror[7]_i_1_n_0\ : STD_LOGIC;
  signal NLW_errorBuf1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[5]_i_2\ : label is "soft_lutpair0";
begin
  error <= \^error\;
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888B"
    )
        port map (
      I0 => mintime(0),
      I1 => reset,
      I2 => cnt(0),
      I3 => start,
      O => p_1_in(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => mintime(1),
      I1 => reset,
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => start,
      O => p_1_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BB8B8B8"
    )
        port map (
      I0 => mintime(2),
      I1 => reset,
      I2 => cnt(2),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => start,
      O => p_1_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => mintime(3),
      I1 => reset,
      I2 => cnt(3),
      I3 => \cnt[3]_i_2_n_0\,
      I4 => start,
      O => p_1_in(3)
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \cnt[3]_i_2_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => mintime(4),
      I1 => reset,
      I2 => cnt(4),
      I3 => \cnt[4]_i_2_n_0\,
      I4 => start,
      O => p_1_in(4)
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(1),
      I2 => cnt(0),
      I3 => cnt(2),
      O => \cnt[4]_i_2_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => mintime(5),
      I1 => reset,
      I2 => cnt(5),
      I3 => \cnt[5]_i_2_n_0\,
      I4 => start,
      O => p_1_in(5)
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[5]_i_2_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => mintime(6),
      I1 => reset,
      I2 => cnt(6),
      I3 => \cnt[7]_i_3_n_0\,
      I4 => start,
      O => p_1_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAEA"
    )
        port map (
      I0 => reset,
      I1 => \errorBuf1__3\,
      I2 => ce,
      I3 => \^error\,
      I4 => start,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BB8B8B8"
    )
        port map (
      I0 => mintime(7),
      I1 => reset,
      I2 => cnt(7),
      I3 => cnt(6),
      I4 => \cnt[7]_i_3_n_0\,
      I5 => start,
      O => p_1_in(7)
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(3),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => cnt(4),
      O => \cnt[7]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => cnt(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => cnt(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => cnt(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => cnt(3),
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => cnt(4),
      R => '0'
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => cnt(5),
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => cnt(6),
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnt[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => cnt(7),
      R => '0'
    );
errorBuf1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \errorBuf1__3\,
      CO(2) => errorBuf1_carry_n_1,
      CO(1) => errorBuf1_carry_n_2,
      CO(0) => errorBuf1_carry_n_3,
      CYINIT => '0',
      DI(3) => errorBuf1_carry_i_1_n_0,
      DI(2) => errorBuf1_carry_i_2_n_0,
      DI(1) => errorBuf1_carry_i_3_n_0,
      DI(0) => errorBuf1_carry_i_4_n_0,
      O(3 downto 0) => NLW_errorBuf1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => errorBuf1_carry_i_5_n_0,
      S(2) => errorBuf1_carry_i_6_n_0,
      S(1) => errorBuf1_carry_i_7_n_0,
      S(0) => errorBuf1_carry_i_8_n_0
    );
errorBuf1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mintime(6),
      I1 => cnt(6),
      I2 => cnt(7),
      I3 => mintime(7),
      O => errorBuf1_carry_i_1_n_0
    );
errorBuf1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mintime(4),
      I1 => cnt(4),
      I2 => cnt(5),
      I3 => mintime(5),
      O => errorBuf1_carry_i_2_n_0
    );
errorBuf1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mintime(2),
      I1 => cnt(2),
      I2 => cnt(3),
      I3 => mintime(3),
      O => errorBuf1_carry_i_3_n_0
    );
errorBuf1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mintime(0),
      I1 => cnt(0),
      I2 => cnt(1),
      I3 => mintime(1),
      O => errorBuf1_carry_i_4_n_0
    );
errorBuf1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mintime(6),
      I1 => cnt(6),
      I2 => mintime(7),
      I3 => cnt(7),
      O => errorBuf1_carry_i_5_n_0
    );
errorBuf1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mintime(4),
      I1 => cnt(4),
      I2 => mintime(5),
      I3 => cnt(5),
      O => errorBuf1_carry_i_6_n_0
    );
errorBuf1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mintime(2),
      I1 => cnt(2),
      I2 => mintime(3),
      I3 => cnt(3),
      O => errorBuf1_carry_i_7_n_0
    );
errorBuf1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mintime(0),
      I1 => cnt(0),
      I2 => mintime(1),
      I3 => cnt(1),
      O => errorBuf1_carry_i_8_n_0
    );
errorBuf_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => \^error\,
      I1 => start,
      I2 => en,
      I3 => \errorBuf1__3\,
      I4 => reset,
      O => errorBuf_i_1_n_0
    );
errorBuf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => errorBuf_i_1_n_0,
      Q => \^error\,
      R => '0'
    );
\timeerror[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => en,
      I2 => \errorBuf1__3\,
      O => \timeerror[7]_i_1_n_0\
    );
\timeerror_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(0),
      Q => timeerror(0),
      R => reset
    );
\timeerror_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(1),
      Q => timeerror(1),
      R => reset
    );
\timeerror_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(2),
      Q => timeerror(2),
      R => reset
    );
\timeerror_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(3),
      Q => timeerror(3),
      R => reset
    );
\timeerror_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(4),
      Q => timeerror(4),
      R => reset
    );
\timeerror_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(5),
      Q => timeerror(5),
      R => reset
    );
\timeerror_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(6),
      Q => timeerror(6),
      R => reset
    );
\timeerror_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \timeerror[7]_i_1_n_0\,
      D => cnt(7),
      Q => timeerror(7),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_CalculatingMintime_v_0_1 is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    start : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    mintime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    timeerror : out STD_LOGIC_VECTOR ( 7 downto 0 );
    error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TransistorKeys_CalculatingMintime_v_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TransistorKeys_CalculatingMintime_v_0_1 : entity is "design_1_CalculatingMintime_v_0_0,CalculatingMintime_ver_1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TransistorKeys_CalculatingMintime_v_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TransistorKeys_CalculatingMintime_v_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TransistorKeys_CalculatingMintime_v_0_1 : entity is "CalculatingMintime_ver_1_0,Vivado 2019.1";
end TransistorKeys_CalculatingMintime_v_0_1;

architecture STRUCTURE of TransistorKeys_CalculatingMintime_v_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.TransistorKeys_CalculatingMintime_v_0_1_CalculatingMintime_ver_1_0
     port map (
      ce => ce,
      clk => clk,
      en => en,
      error => error,
      mintime(7 downto 0) => mintime(7 downto 0),
      reset => reset,
      start => start,
      timeerror(7 downto 0) => timeerror(7 downto 0)
    );
end STRUCTURE;
