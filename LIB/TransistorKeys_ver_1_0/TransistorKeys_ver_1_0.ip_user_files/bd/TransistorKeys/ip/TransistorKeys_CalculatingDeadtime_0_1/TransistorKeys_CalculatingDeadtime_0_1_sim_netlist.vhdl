-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 11:48:30 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TransistorKeys_CalculatingDeadtime_0_1 -prefix
--               TransistorKeys_CalculatingDeadtime_0_1_ design_1_CalculatingDeadtime_0_0_sim_netlist.vhdl
-- Design      : design_1_CalculatingDeadtime_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_CalculatingDeadtime_0_1_CalculatingDeadtime_ver_1_0 is
  port (
    isdeadtimeok : out STD_LOGIC;
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    reset : in STD_LOGIC;
    start : in STD_LOGIC;
    deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TransistorKeys_CalculatingDeadtime_0_1_CalculatingDeadtime_ver_1_0;

architecture STRUCTURE of TransistorKeys_CalculatingDeadtime_0_1_CalculatingDeadtime_ver_1_0 is
  signal cnt : STD_LOGIC;
  signal cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal cnt0_carry_i_5_n_0 : STD_LOGIC;
  signal cnt0_carry_i_6_n_0 : STD_LOGIC;
  signal cnt0_carry_i_7_n_0 : STD_LOGIC;
  signal cnt0_carry_i_8_n_0 : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^isdeadtimeok\ : STD_LOGIC;
  signal isdeadtimeok_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_cnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[7]_i_3\ : label is "soft_lutpair2";
begin
  isdeadtimeok <= \^isdeadtimeok\;
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => '0',
      DI(3) => cnt0_carry_i_1_n_0,
      DI(2) => cnt0_carry_i_2_n_0,
      DI(1) => cnt0_carry_i_3_n_0,
      DI(0) => cnt0_carry_i_4_n_0,
      O(3 downto 0) => NLW_cnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt0_carry_i_5_n_0,
      S(2) => cnt0_carry_i_6_n_0,
      S(1) => cnt0_carry_i_7_n_0,
      S(0) => cnt0_carry_i_8_n_0
    );
cnt0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => deadtime(6),
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      I3 => deadtime(7),
      O => cnt0_carry_i_1_n_0
    );
cnt0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => deadtime(4),
      I1 => cnt_reg(4),
      I2 => cnt_reg(5),
      I3 => deadtime(5),
      O => cnt0_carry_i_2_n_0
    );
cnt0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => deadtime(2),
      I1 => cnt_reg(2),
      I2 => cnt_reg(3),
      I3 => deadtime(3),
      O => cnt0_carry_i_3_n_0
    );
cnt0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => deadtime(0),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => deadtime(1),
      O => cnt0_carry_i_4_n_0
    );
cnt0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => deadtime(6),
      I1 => cnt_reg(6),
      I2 => deadtime(7),
      I3 => cnt_reg(7),
      O => cnt0_carry_i_5_n_0
    );
cnt0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => deadtime(4),
      I1 => cnt_reg(4),
      I2 => deadtime(5),
      I3 => cnt_reg(5),
      O => cnt0_carry_i_6_n_0
    );
cnt0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => deadtime(2),
      I1 => cnt_reg(2),
      I2 => deadtime(3),
      I3 => cnt_reg(3),
      O => cnt0_carry_i_7_n_0
    );
cnt0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => deadtime(0),
      I1 => cnt_reg(0),
      I2 => deadtime(1),
      I3 => cnt_reg(1),
      O => cnt0_carry_i_8_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => p_0_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      I2 => cnt_reg(2),
      O => p_0_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      I3 => cnt_reg(3),
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => cnt_reg(3),
      I4 => cnt_reg(4),
      O => p_0_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      I3 => cnt_reg(2),
      I4 => cnt_reg(4),
      I5 => cnt_reg(5),
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[7]_i_4_n_0\,
      I1 => cnt_reg(6),
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => start,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ce,
      I1 => cnt0_carry_n_0,
      O => cnt
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[7]_i_4_n_0\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(7),
      O => p_0_in(7)
    );
\cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => cnt_reg(3),
      I2 => cnt_reg(1),
      I3 => cnt_reg(0),
      I4 => cnt_reg(2),
      I5 => cnt_reg(4),
      O => \cnt[7]_i_4_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt_reg(0),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => p_0_in(1),
      Q => cnt_reg(1),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => p_0_in(2),
      Q => cnt_reg(2),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => p_0_in(3),
      Q => cnt_reg(3),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => p_0_in(4),
      Q => cnt_reg(4),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => p_0_in(5),
      Q => cnt_reg(5),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => p_0_in(6),
      Q => cnt_reg(6),
      R => \cnt[7]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt,
      D => p_0_in(7),
      Q => cnt_reg(7),
      R => \cnt[7]_i_1_n_0\
    );
isdeadtimeok_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => \^isdeadtimeok\,
      I1 => ce,
      I2 => cnt0_carry_n_0,
      I3 => start,
      I4 => reset,
      O => isdeadtimeok_i_1_n_0
    );
isdeadtimeok_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => isdeadtimeok_i_1_n_0,
      Q => \^isdeadtimeok\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_CalculatingDeadtime_0_1 is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    start : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadtime : in STD_LOGIC_VECTOR ( 7 downto 0 );
    isdeadtimeok : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TransistorKeys_CalculatingDeadtime_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TransistorKeys_CalculatingDeadtime_0_1 : entity is "design_1_CalculatingDeadtime_0_0,CalculatingDeadtime_ver_1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TransistorKeys_CalculatingDeadtime_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TransistorKeys_CalculatingDeadtime_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TransistorKeys_CalculatingDeadtime_0_1 : entity is "CalculatingDeadtime_ver_1_0,Vivado 2019.1";
end TransistorKeys_CalculatingDeadtime_0_1;

architecture STRUCTURE of TransistorKeys_CalculatingDeadtime_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.TransistorKeys_CalculatingDeadtime_0_1_CalculatingDeadtime_ver_1_0
     port map (
      ce => ce,
      clk => clk,
      deadtime(7 downto 0) => deadtime(7 downto 0),
      isdeadtimeok => isdeadtimeok,
      reset => reset,
      start => start
    );
end STRUCTURE;
