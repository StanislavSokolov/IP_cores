-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 11:47:49 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TransistorKeys_AcknowledgeChecker_v_0_1 -prefix
--               TransistorKeys_AcknowledgeChecker_v_0_1_ design_1_AcknowledgeChecker_v_0_1_sim_netlist.vhdl
-- Design      : design_1_AcknowledgeChecker_v_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_AcknowledgeChecker_v_0_1_AcknowledgeChecker_ver_1_0 is
  port (
    currentpr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ackpr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ackin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    keyin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    currentpren : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ackpren : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ready : in STD_LOGIC;
    acktime : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TransistorKeys_AcknowledgeChecker_v_0_1_AcknowledgeChecker_ver_1_0;

architecture STRUCTURE of TransistorKeys_AcknowledgeChecker_v_0_1_AcknowledgeChecker_ver_1_0 is
  signal \FSM_sequential_acknowledges[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledges[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledges[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledges[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledges[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledges[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledges[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledges[3][1]_i_1_n_0\ : STD_LOGIC;
  signal ackInPrev : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \acknowledges_reg[0]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \acknowledges_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \acknowledges_reg[2]_2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \acknowledges_reg[3]_3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ackpr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ackpr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ackpr[1]_i_1_n_0\ : STD_LOGIC;
  signal \ackpr[2]_i_1_n_0\ : STD_LOGIC;
  signal \ackpr[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnts[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnts[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[0][8]_i_3_n_0\ : STD_LOGIC;
  signal \cnts[0]_4\ : STD_LOGIC;
  signal \cnts[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnts[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[1][8]_i_3_n_0\ : STD_LOGIC;
  signal \cnts[1]_5\ : STD_LOGIC;
  signal \cnts[2]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnts[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[2][8]_i_3_n_0\ : STD_LOGIC;
  signal \cnts[2]_6\ : STD_LOGIC;
  signal \cnts[3]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnts[3][3]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[3][4]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[3][5]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \cnts[3][8]_i_3_n_0\ : STD_LOGIC;
  signal \cnts[3]_7\ : STD_LOGIC;
  signal \cnts_reg[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnts_reg[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnts_reg[2]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnts_reg[3]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^currentpr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal currentpr126_out : STD_LOGIC;
  signal currentpr128_out : STD_LOGIC;
  signal currentpr130_out : STD_LOGIC;
  signal \currentpr1__144\ : STD_LOGIC;
  signal \currentpr1__14_carry__0_n_3\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_1_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_2_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_3_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_4_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_5_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_6_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_7_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_i_8_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_n_0\ : STD_LOGIC;
  signal \currentpr1__14_carry_n_1\ : STD_LOGIC;
  signal \currentpr1__14_carry_n_2\ : STD_LOGIC;
  signal \currentpr1__14_carry_n_3\ : STD_LOGIC;
  signal \currentpr1__4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry__0_n_3\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_1_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_2_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_3_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_4_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_5_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_6_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_7_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_i_8_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_n_0\ : STD_LOGIC;
  signal \currentpr1__4_carry_n_1\ : STD_LOGIC;
  signal \currentpr1__4_carry_n_2\ : STD_LOGIC;
  signal \currentpr1__4_carry_n_3\ : STD_LOGIC;
  signal \currentpr1__9_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry__0_n_3\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_1_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_2_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_3_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_4_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_5_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_6_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_7_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_i_8_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_n_0\ : STD_LOGIC;
  signal \currentpr1__9_carry_n_1\ : STD_LOGIC;
  signal \currentpr1__9_carry_n_2\ : STD_LOGIC;
  signal \currentpr1__9_carry_n_3\ : STD_LOGIC;
  signal \currentpr1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \currentpr1_carry__0_n_3\ : STD_LOGIC;
  signal currentpr1_carry_i_1_n_0 : STD_LOGIC;
  signal currentpr1_carry_i_2_n_0 : STD_LOGIC;
  signal currentpr1_carry_i_3_n_0 : STD_LOGIC;
  signal currentpr1_carry_i_4_n_0 : STD_LOGIC;
  signal currentpr1_carry_i_5_n_0 : STD_LOGIC;
  signal currentpr1_carry_i_6_n_0 : STD_LOGIC;
  signal currentpr1_carry_i_7_n_0 : STD_LOGIC;
  signal currentpr1_carry_i_8_n_0 : STD_LOGIC;
  signal currentpr1_carry_n_0 : STD_LOGIC;
  signal currentpr1_carry_n_1 : STD_LOGIC;
  signal currentpr1_carry_n_2 : STD_LOGIC;
  signal currentpr1_carry_n_3 : STD_LOGIC;
  signal \currentpr[0]_i_1_n_0\ : STD_LOGIC;
  signal \currentpr[0]_i_3_n_0\ : STD_LOGIC;
  signal \currentpr[0]_i_4_n_0\ : STD_LOGIC;
  signal \currentpr[1]_i_1_n_0\ : STD_LOGIC;
  signal \currentpr[1]_i_3_n_0\ : STD_LOGIC;
  signal \currentpr[1]_i_4_n_0\ : STD_LOGIC;
  signal \currentpr[2]_i_1_n_0\ : STD_LOGIC;
  signal \currentpr[2]_i_3_n_0\ : STD_LOGIC;
  signal \currentpr[2]_i_4_n_0\ : STD_LOGIC;
  signal \currentpr[3]_i_1_n_0\ : STD_LOGIC;
  signal \currentpr[3]_i_3_n_0\ : STD_LOGIC;
  signal \currentpr[3]_i_4_n_0\ : STD_LOGIC;
  signal \keyInPrev_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_currentpr1__14_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_currentpr1__14_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_currentpr1__14_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_currentpr1__4_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_currentpr1__4_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_currentpr1__4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_currentpr1__9_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_currentpr1__9_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_currentpr1__9_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_currentpr1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_currentpr1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_currentpr1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledges[0][0]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledges[1][0]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledges[1][1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledges[2][0]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledges[2][1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledges[3][0]_i_2\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[0][0]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[0][1]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[1][0]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[1][1]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[2][0]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[2][1]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[3][0]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledges_reg[3][1]\ : label is "check:01,waitingstrobeend:10,waiting:00,iSTATE:11";
  attribute SOFT_HLUTNM of \ackpr[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ackpr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ackpr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ackpr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnts[0][0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnts[0][1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnts[0][3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnts[0][4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnts[0][4]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnts[0][5]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnts[0][6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnts[0][8]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnts[1][0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnts[1][1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnts[1][3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnts[1][4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnts[1][5]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnts[1][6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnts[1][8]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnts[2][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnts[2][1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnts[2][3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnts[2][4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnts[2][5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnts[2][6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnts[2][8]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnts[3][0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnts[3][1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnts[3][3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnts[3][4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnts[3][4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnts[3][5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnts[3][6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnts[3][8]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \currentpr[0]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \currentpr[1]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \currentpr[2]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \currentpr[3]_i_3\ : label is "soft_lutpair6";
begin
  ackpr(3 downto 0) <= \^ackpr\(3 downto 0);
  currentpr(3 downto 0) <= \^currentpr\(3 downto 0);
\FSM_sequential_acknowledges[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB00F0000000F0"
    )
        port map (
      I0 => ackInPrev(0),
      I1 => ackin(0),
      I2 => \currentpr1__144\,
      I3 => \acknowledges_reg[0]_0\(1),
      I4 => \acknowledges_reg[0]_0\(0),
      I5 => \currentpr1_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[0][0]_i_1_n_0\
    );
\FSM_sequential_acknowledges[0][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \keyInPrev_reg_n_0_[0]\,
      I1 => ready,
      I2 => keyin(0),
      O => \currentpr1__144\
    );
\FSM_sequential_acknowledges[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04C00000"
    )
        port map (
      I0 => ackInPrev(0),
      I1 => ackin(0),
      I2 => \acknowledges_reg[0]_0\(1),
      I3 => \acknowledges_reg[0]_0\(0),
      I4 => \currentpr1_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[0][1]_i_1_n_0\
    );
\FSM_sequential_acknowledges[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB00F0000000F0"
    )
        port map (
      I0 => ackInPrev(1),
      I1 => ackin(1),
      I2 => currentpr126_out,
      I3 => \acknowledges_reg[1]_1\(1),
      I4 => \acknowledges_reg[1]_1\(0),
      I5 => \currentpr1__4_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[1][0]_i_1_n_0\
    );
\FSM_sequential_acknowledges[1][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => p_0_in,
      I1 => ready,
      I2 => keyin(1),
      O => currentpr126_out
    );
\FSM_sequential_acknowledges[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04C00000"
    )
        port map (
      I0 => ackInPrev(1),
      I1 => ackin(1),
      I2 => \acknowledges_reg[1]_1\(1),
      I3 => \acknowledges_reg[1]_1\(0),
      I4 => \currentpr1__4_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[1][1]_i_1_n_0\
    );
\FSM_sequential_acknowledges[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB00F0000000F0"
    )
        port map (
      I0 => ackInPrev(2),
      I1 => ackin(2),
      I2 => currentpr128_out,
      I3 => \acknowledges_reg[2]_2\(1),
      I4 => \acknowledges_reg[2]_2\(0),
      I5 => \currentpr1__9_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[2][0]_i_1_n_0\
    );
\FSM_sequential_acknowledges[2][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => ready,
      I2 => keyin(2),
      O => currentpr128_out
    );
\FSM_sequential_acknowledges[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04C00000"
    )
        port map (
      I0 => ackInPrev(2),
      I1 => ackin(2),
      I2 => \acknowledges_reg[2]_2\(1),
      I3 => \acknowledges_reg[2]_2\(0),
      I4 => \currentpr1__9_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[2][1]_i_1_n_0\
    );
\FSM_sequential_acknowledges[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB00F0000000F0"
    )
        port map (
      I0 => ackInPrev(3),
      I1 => ackin(3),
      I2 => currentpr130_out,
      I3 => \acknowledges_reg[3]_3\(1),
      I4 => \acknowledges_reg[3]_3\(0),
      I5 => \currentpr1__14_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[3][0]_i_1_n_0\
    );
\FSM_sequential_acknowledges[3][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => ready,
      I2 => keyin(3),
      O => currentpr130_out
    );
\FSM_sequential_acknowledges[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04C00000"
    )
        port map (
      I0 => ackInPrev(3),
      I1 => ackin(3),
      I2 => \acknowledges_reg[3]_3\(1),
      I3 => \acknowledges_reg[3]_3\(0),
      I4 => \currentpr1__14_carry__0_n_3\,
      O => \FSM_sequential_acknowledges[3][1]_i_1_n_0\
    );
\FSM_sequential_acknowledges_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[0][0]_i_1_n_0\,
      Q => \acknowledges_reg[0]_0\(0),
      R => reset
    );
\FSM_sequential_acknowledges_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[0][1]_i_1_n_0\,
      Q => \acknowledges_reg[0]_0\(1),
      R => reset
    );
\FSM_sequential_acknowledges_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[1][0]_i_1_n_0\,
      Q => \acknowledges_reg[1]_1\(0),
      R => reset
    );
\FSM_sequential_acknowledges_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[1][1]_i_1_n_0\,
      Q => \acknowledges_reg[1]_1\(1),
      R => reset
    );
\FSM_sequential_acknowledges_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[2][0]_i_1_n_0\,
      Q => \acknowledges_reg[2]_2\(0),
      R => reset
    );
\FSM_sequential_acknowledges_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[2][1]_i_1_n_0\,
      Q => \acknowledges_reg[2]_2\(1),
      R => reset
    );
\FSM_sequential_acknowledges_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[3][0]_i_1_n_0\,
      Q => \acknowledges_reg[3]_3\(0),
      R => reset
    );
\FSM_sequential_acknowledges_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_acknowledges[3][1]_i_1_n_0\,
      Q => \acknowledges_reg[3]_3\(1),
      R => reset
    );
\ackInPrev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ackin(0),
      Q => ackInPrev(0),
      R => '0'
    );
\ackInPrev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ackin(1),
      Q => ackInPrev(1),
      R => '0'
    );
\ackInPrev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ackin(2),
      Q => ackInPrev(2),
      R => '0'
    );
\ackInPrev_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ackin(3),
      Q => ackInPrev(3),
      R => '0'
    );
\ackpr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => \currentpr1_carry__0_n_3\,
      I1 => \acknowledges_reg[0]_0\(0),
      I2 => \acknowledges_reg[0]_0\(1),
      I3 => ackpren(0),
      I4 => \^ackpr\(0),
      O => \ackpr[0]_i_1_n_0\
    );
\ackpr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => \currentpr1__4_carry__0_n_3\,
      I1 => \acknowledges_reg[1]_1\(0),
      I2 => \acknowledges_reg[1]_1\(1),
      I3 => ackpren(1),
      I4 => \^ackpr\(1),
      O => \ackpr[1]_i_1_n_0\
    );
\ackpr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => \currentpr1__9_carry__0_n_3\,
      I1 => \acknowledges_reg[2]_2\(0),
      I2 => \acknowledges_reg[2]_2\(1),
      I3 => ackpren(2),
      I4 => \^ackpr\(2),
      O => \ackpr[2]_i_1_n_0\
    );
\ackpr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => \currentpr1__14_carry__0_n_3\,
      I1 => \acknowledges_reg[3]_3\(0),
      I2 => \acknowledges_reg[3]_3\(1),
      I3 => ackpren(3),
      I4 => \^ackpr\(3),
      O => \ackpr[3]_i_1_n_0\
    );
\ackpr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ackpr[0]_i_1_n_0\,
      Q => \^ackpr\(0),
      R => reset
    );
\ackpr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ackpr[1]_i_1_n_0\,
      Q => \^ackpr\(1),
      R => reset
    );
\ackpr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ackpr[2]_i_1_n_0\,
      Q => \^ackpr\(2),
      R => reset
    );
\ackpr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ackpr[3]_i_1_n_0\,
      Q => \^ackpr\(3),
      R => reset
    );
\cnts[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \currentpr1_carry__0_n_3\,
      I1 => \acknowledges_reg[0]_0\(0),
      I2 => \acknowledges_reg[0]_0\(1),
      I3 => \cnts_reg[0]\(0),
      O => \cnts[0]\(0)
    );
\cnts[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E000"
    )
        port map (
      I0 => \acknowledges_reg[0]_0\(1),
      I1 => \acknowledges_reg[0]_0\(0),
      I2 => \currentpr1_carry__0_n_3\,
      I3 => \cnts_reg[0]\(0),
      I4 => \cnts_reg[0]\(1),
      O => \cnts[0]\(1)
    );
\cnts[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0E0000000"
    )
        port map (
      I0 => \acknowledges_reg[0]_0\(1),
      I1 => \acknowledges_reg[0]_0\(0),
      I2 => \currentpr1_carry__0_n_3\,
      I3 => \cnts_reg[0]\(1),
      I4 => \cnts_reg[0]\(0),
      I5 => \cnts_reg[0]\(2),
      O => \cnts[0]\(2)
    );
\cnts[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888880000000"
    )
        port map (
      I0 => \cnts[0][3]_i_2_n_0\,
      I1 => \currentpr1_carry__0_n_3\,
      I2 => \cnts_reg[0]\(0),
      I3 => \cnts_reg[0]\(1),
      I4 => \cnts_reg[0]\(2),
      I5 => \cnts_reg[0]\(3),
      O => \cnts[0]\(3)
    );
\cnts[0][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \acknowledges_reg[0]_0\(0),
      I1 => \acknowledges_reg[0]_0\(1),
      O => \cnts[0][3]_i_2_n_0\
    );
\cnts[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[0][4]_i_2_n_0\,
      I1 => \currentpr1_carry__0_n_3\,
      I2 => \acknowledges_reg[0]_0\(0),
      I3 => \acknowledges_reg[0]_0\(1),
      I4 => \cnts_reg[0]\(4),
      O => \cnts[0]\(4)
    );
\cnts[0][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnts_reg[0]\(0),
      I1 => \cnts_reg[0]\(1),
      I2 => \cnts_reg[0]\(2),
      I3 => \cnts_reg[0]\(3),
      O => \cnts[0][4]_i_2_n_0\
    );
\cnts[0][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44408880"
    )
        port map (
      I0 => \cnts[0][5]_i_2_n_0\,
      I1 => \currentpr1_carry__0_n_3\,
      I2 => \acknowledges_reg[0]_0\(0),
      I3 => \acknowledges_reg[0]_0\(1),
      I4 => \cnts_reg[0]\(5),
      O => \cnts[0]\(5)
    );
\cnts[0][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cnts_reg[0]\(4),
      I1 => \cnts_reg[0]\(3),
      I2 => \cnts_reg[0]\(2),
      I3 => \cnts_reg[0]\(1),
      I4 => \cnts_reg[0]\(0),
      O => \cnts[0][5]_i_2_n_0\
    );
\cnts[0][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[0][7]_i_2_n_0\,
      I1 => \currentpr1_carry__0_n_3\,
      I2 => \acknowledges_reg[0]_0\(0),
      I3 => \acknowledges_reg[0]_0\(1),
      I4 => \cnts_reg[0]\(6),
      O => \cnts[0]\(6)
    );
\cnts[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D00020202000"
    )
        port map (
      I0 => \cnts_reg[0]\(6),
      I1 => \cnts[0][7]_i_2_n_0\,
      I2 => \currentpr1_carry__0_n_3\,
      I3 => \acknowledges_reg[0]_0\(0),
      I4 => \acknowledges_reg[0]_0\(1),
      I5 => \cnts_reg[0]\(7),
      O => \cnts[0]\(7)
    );
\cnts[0][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnts_reg[0]\(0),
      I1 => \cnts_reg[0]\(1),
      I2 => \cnts_reg[0]\(2),
      I3 => \cnts_reg[0]\(3),
      I4 => \cnts_reg[0]\(4),
      I5 => \cnts_reg[0]\(5),
      O => \cnts[0][7]_i_2_n_0\
    );
\cnts[0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \acknowledges_reg[0]_0\(0),
      I1 => \acknowledges_reg[0]_0\(1),
      O => \cnts[0]_4\
    );
\cnts[0][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070700080808000"
    )
        port map (
      I0 => \cnts[0][8]_i_3_n_0\,
      I1 => \cnts_reg[0]\(7),
      I2 => \currentpr1_carry__0_n_3\,
      I3 => \acknowledges_reg[0]_0\(0),
      I4 => \acknowledges_reg[0]_0\(1),
      I5 => \cnts_reg[0]\(8),
      O => \cnts[0]\(8)
    );
\cnts[0][8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnts_reg[0]\(6),
      I1 => \cnts[0][7]_i_2_n_0\,
      O => \cnts[0][8]_i_3_n_0\
    );
\cnts[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \currentpr1__4_carry__0_n_3\,
      I1 => \acknowledges_reg[1]_1\(0),
      I2 => \acknowledges_reg[1]_1\(1),
      I3 => \cnts_reg[1]\(0),
      O => \cnts[1]\(0)
    );
\cnts[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E000"
    )
        port map (
      I0 => \acknowledges_reg[1]_1\(1),
      I1 => \acknowledges_reg[1]_1\(0),
      I2 => \currentpr1__4_carry__0_n_3\,
      I3 => \cnts_reg[1]\(0),
      I4 => \cnts_reg[1]\(1),
      O => \cnts[1]\(1)
    );
\cnts[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0E0000000"
    )
        port map (
      I0 => \acknowledges_reg[1]_1\(1),
      I1 => \acknowledges_reg[1]_1\(0),
      I2 => \currentpr1__4_carry__0_n_3\,
      I3 => \cnts_reg[1]\(1),
      I4 => \cnts_reg[1]\(0),
      I5 => \cnts_reg[1]\(2),
      O => \cnts[1]\(2)
    );
\cnts[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888880000000"
    )
        port map (
      I0 => \cnts[1][3]_i_2_n_0\,
      I1 => \currentpr1__4_carry__0_n_3\,
      I2 => \cnts_reg[1]\(0),
      I3 => \cnts_reg[1]\(1),
      I4 => \cnts_reg[1]\(2),
      I5 => \cnts_reg[1]\(3),
      O => \cnts[1]\(3)
    );
\cnts[1][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \acknowledges_reg[1]_1\(0),
      I1 => \acknowledges_reg[1]_1\(1),
      O => \cnts[1][3]_i_2_n_0\
    );
\cnts[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[1][4]_i_2_n_0\,
      I1 => \currentpr1__4_carry__0_n_3\,
      I2 => \acknowledges_reg[1]_1\(0),
      I3 => \acknowledges_reg[1]_1\(1),
      I4 => \cnts_reg[1]\(4),
      O => \cnts[1]\(4)
    );
\cnts[1][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnts_reg[1]\(0),
      I1 => \cnts_reg[1]\(1),
      I2 => \cnts_reg[1]\(2),
      I3 => \cnts_reg[1]\(3),
      O => \cnts[1][4]_i_2_n_0\
    );
\cnts[1][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44408880"
    )
        port map (
      I0 => \cnts[1][5]_i_2_n_0\,
      I1 => \currentpr1__4_carry__0_n_3\,
      I2 => \acknowledges_reg[1]_1\(0),
      I3 => \acknowledges_reg[1]_1\(1),
      I4 => \cnts_reg[1]\(5),
      O => \cnts[1]\(5)
    );
\cnts[1][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cnts_reg[1]\(4),
      I1 => \cnts_reg[1]\(3),
      I2 => \cnts_reg[1]\(2),
      I3 => \cnts_reg[1]\(1),
      I4 => \cnts_reg[1]\(0),
      O => \cnts[1][5]_i_2_n_0\
    );
\cnts[1][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[1][7]_i_2_n_0\,
      I1 => \currentpr1__4_carry__0_n_3\,
      I2 => \acknowledges_reg[1]_1\(0),
      I3 => \acknowledges_reg[1]_1\(1),
      I4 => \cnts_reg[1]\(6),
      O => \cnts[1]\(6)
    );
\cnts[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D00020202000"
    )
        port map (
      I0 => \cnts_reg[1]\(6),
      I1 => \cnts[1][7]_i_2_n_0\,
      I2 => \currentpr1__4_carry__0_n_3\,
      I3 => \acknowledges_reg[1]_1\(0),
      I4 => \acknowledges_reg[1]_1\(1),
      I5 => \cnts_reg[1]\(7),
      O => \cnts[1]\(7)
    );
\cnts[1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnts_reg[1]\(0),
      I1 => \cnts_reg[1]\(1),
      I2 => \cnts_reg[1]\(2),
      I3 => \cnts_reg[1]\(3),
      I4 => \cnts_reg[1]\(4),
      I5 => \cnts_reg[1]\(5),
      O => \cnts[1][7]_i_2_n_0\
    );
\cnts[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \acknowledges_reg[1]_1\(0),
      I1 => \acknowledges_reg[1]_1\(1),
      O => \cnts[1]_5\
    );
\cnts[1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070700080808000"
    )
        port map (
      I0 => \cnts[1][8]_i_3_n_0\,
      I1 => \cnts_reg[1]\(7),
      I2 => \currentpr1__4_carry__0_n_3\,
      I3 => \acknowledges_reg[1]_1\(0),
      I4 => \acknowledges_reg[1]_1\(1),
      I5 => \cnts_reg[1]\(8),
      O => \cnts[1]\(8)
    );
\cnts[1][8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnts_reg[1]\(6),
      I1 => \cnts[1][7]_i_2_n_0\,
      O => \cnts[1][8]_i_3_n_0\
    );
\cnts[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \currentpr1__9_carry__0_n_3\,
      I1 => \acknowledges_reg[2]_2\(0),
      I2 => \acknowledges_reg[2]_2\(1),
      I3 => \cnts_reg[2]\(0),
      O => \cnts[2]\(0)
    );
\cnts[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E000"
    )
        port map (
      I0 => \acknowledges_reg[2]_2\(1),
      I1 => \acknowledges_reg[2]_2\(0),
      I2 => \currentpr1__9_carry__0_n_3\,
      I3 => \cnts_reg[2]\(0),
      I4 => \cnts_reg[2]\(1),
      O => \cnts[2]\(1)
    );
\cnts[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0E0000000"
    )
        port map (
      I0 => \acknowledges_reg[2]_2\(1),
      I1 => \acknowledges_reg[2]_2\(0),
      I2 => \currentpr1__9_carry__0_n_3\,
      I3 => \cnts_reg[2]\(1),
      I4 => \cnts_reg[2]\(0),
      I5 => \cnts_reg[2]\(2),
      O => \cnts[2]\(2)
    );
\cnts[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888880000000"
    )
        port map (
      I0 => \cnts[2][3]_i_2_n_0\,
      I1 => \currentpr1__9_carry__0_n_3\,
      I2 => \cnts_reg[2]\(0),
      I3 => \cnts_reg[2]\(1),
      I4 => \cnts_reg[2]\(2),
      I5 => \cnts_reg[2]\(3),
      O => \cnts[2]\(3)
    );
\cnts[2][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \acknowledges_reg[2]_2\(0),
      I1 => \acknowledges_reg[2]_2\(1),
      O => \cnts[2][3]_i_2_n_0\
    );
\cnts[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[2][4]_i_2_n_0\,
      I1 => \currentpr1__9_carry__0_n_3\,
      I2 => \acknowledges_reg[2]_2\(0),
      I3 => \acknowledges_reg[2]_2\(1),
      I4 => \cnts_reg[2]\(4),
      O => \cnts[2]\(4)
    );
\cnts[2][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnts_reg[2]\(0),
      I1 => \cnts_reg[2]\(1),
      I2 => \cnts_reg[2]\(2),
      I3 => \cnts_reg[2]\(3),
      O => \cnts[2][4]_i_2_n_0\
    );
\cnts[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44408880"
    )
        port map (
      I0 => \cnts[2][5]_i_2_n_0\,
      I1 => \currentpr1__9_carry__0_n_3\,
      I2 => \acknowledges_reg[2]_2\(0),
      I3 => \acknowledges_reg[2]_2\(1),
      I4 => \cnts_reg[2]\(5),
      O => \cnts[2]\(5)
    );
\cnts[2][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cnts_reg[2]\(4),
      I1 => \cnts_reg[2]\(3),
      I2 => \cnts_reg[2]\(2),
      I3 => \cnts_reg[2]\(1),
      I4 => \cnts_reg[2]\(0),
      O => \cnts[2][5]_i_2_n_0\
    );
\cnts[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[2][7]_i_2_n_0\,
      I1 => \currentpr1__9_carry__0_n_3\,
      I2 => \acknowledges_reg[2]_2\(0),
      I3 => \acknowledges_reg[2]_2\(1),
      I4 => \cnts_reg[2]\(6),
      O => \cnts[2]\(6)
    );
\cnts[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D00020202000"
    )
        port map (
      I0 => \cnts_reg[2]\(6),
      I1 => \cnts[2][7]_i_2_n_0\,
      I2 => \currentpr1__9_carry__0_n_3\,
      I3 => \acknowledges_reg[2]_2\(0),
      I4 => \acknowledges_reg[2]_2\(1),
      I5 => \cnts_reg[2]\(7),
      O => \cnts[2]\(7)
    );
\cnts[2][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnts_reg[2]\(0),
      I1 => \cnts_reg[2]\(1),
      I2 => \cnts_reg[2]\(2),
      I3 => \cnts_reg[2]\(3),
      I4 => \cnts_reg[2]\(4),
      I5 => \cnts_reg[2]\(5),
      O => \cnts[2][7]_i_2_n_0\
    );
\cnts[2][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \acknowledges_reg[2]_2\(0),
      I1 => \acknowledges_reg[2]_2\(1),
      O => \cnts[2]_6\
    );
\cnts[2][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070700080808000"
    )
        port map (
      I0 => \cnts[2][8]_i_3_n_0\,
      I1 => \cnts_reg[2]\(7),
      I2 => \currentpr1__9_carry__0_n_3\,
      I3 => \acknowledges_reg[2]_2\(0),
      I4 => \acknowledges_reg[2]_2\(1),
      I5 => \cnts_reg[2]\(8),
      O => \cnts[2]\(8)
    );
\cnts[2][8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnts_reg[2]\(6),
      I1 => \cnts[2][7]_i_2_n_0\,
      O => \cnts[2][8]_i_3_n_0\
    );
\cnts[3][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \currentpr1__14_carry__0_n_3\,
      I1 => \acknowledges_reg[3]_3\(0),
      I2 => \acknowledges_reg[3]_3\(1),
      I3 => \cnts_reg[3]\(0),
      O => \cnts[3]\(0)
    );
\cnts[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E000"
    )
        port map (
      I0 => \acknowledges_reg[3]_3\(1),
      I1 => \acknowledges_reg[3]_3\(0),
      I2 => \currentpr1__14_carry__0_n_3\,
      I3 => \cnts_reg[3]\(0),
      I4 => \cnts_reg[3]\(1),
      O => \cnts[3]\(1)
    );
\cnts[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0E0000000"
    )
        port map (
      I0 => \acknowledges_reg[3]_3\(1),
      I1 => \acknowledges_reg[3]_3\(0),
      I2 => \currentpr1__14_carry__0_n_3\,
      I3 => \cnts_reg[3]\(1),
      I4 => \cnts_reg[3]\(0),
      I5 => \cnts_reg[3]\(2),
      O => \cnts[3]\(2)
    );
\cnts[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888880000000"
    )
        port map (
      I0 => \cnts[3][3]_i_2_n_0\,
      I1 => \currentpr1__14_carry__0_n_3\,
      I2 => \cnts_reg[3]\(0),
      I3 => \cnts_reg[3]\(1),
      I4 => \cnts_reg[3]\(2),
      I5 => \cnts_reg[3]\(3),
      O => \cnts[3]\(3)
    );
\cnts[3][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \acknowledges_reg[3]_3\(0),
      I1 => \acknowledges_reg[3]_3\(1),
      O => \cnts[3][3]_i_2_n_0\
    );
\cnts[3][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[3][4]_i_2_n_0\,
      I1 => \currentpr1__14_carry__0_n_3\,
      I2 => \acknowledges_reg[3]_3\(0),
      I3 => \acknowledges_reg[3]_3\(1),
      I4 => \cnts_reg[3]\(4),
      O => \cnts[3]\(4)
    );
\cnts[3][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnts_reg[3]\(0),
      I1 => \cnts_reg[3]\(1),
      I2 => \cnts_reg[3]\(2),
      I3 => \cnts_reg[3]\(3),
      O => \cnts[3][4]_i_2_n_0\
    );
\cnts[3][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44408880"
    )
        port map (
      I0 => \cnts[3][5]_i_2_n_0\,
      I1 => \currentpr1__14_carry__0_n_3\,
      I2 => \acknowledges_reg[3]_3\(0),
      I3 => \acknowledges_reg[3]_3\(1),
      I4 => \cnts_reg[3]\(5),
      O => \cnts[3]\(5)
    );
\cnts[3][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cnts_reg[3]\(4),
      I1 => \cnts_reg[3]\(3),
      I2 => \cnts_reg[3]\(2),
      I3 => \cnts_reg[3]\(1),
      I4 => \cnts_reg[3]\(0),
      O => \cnts[3][5]_i_2_n_0\
    );
\cnts[3][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88804440"
    )
        port map (
      I0 => \cnts[3][7]_i_2_n_0\,
      I1 => \currentpr1__14_carry__0_n_3\,
      I2 => \acknowledges_reg[3]_3\(0),
      I3 => \acknowledges_reg[3]_3\(1),
      I4 => \cnts_reg[3]\(6),
      O => \cnts[3]\(6)
    );
\cnts[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D00020202000"
    )
        port map (
      I0 => \cnts_reg[3]\(6),
      I1 => \cnts[3][7]_i_2_n_0\,
      I2 => \currentpr1__14_carry__0_n_3\,
      I3 => \acknowledges_reg[3]_3\(0),
      I4 => \acknowledges_reg[3]_3\(1),
      I5 => \cnts_reg[3]\(7),
      O => \cnts[3]\(7)
    );
\cnts[3][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnts_reg[3]\(0),
      I1 => \cnts_reg[3]\(1),
      I2 => \cnts_reg[3]\(2),
      I3 => \cnts_reg[3]\(3),
      I4 => \cnts_reg[3]\(4),
      I5 => \cnts_reg[3]\(5),
      O => \cnts[3][7]_i_2_n_0\
    );
\cnts[3][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \acknowledges_reg[3]_3\(0),
      I1 => \acknowledges_reg[3]_3\(1),
      O => \cnts[3]_7\
    );
\cnts[3][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070700080808000"
    )
        port map (
      I0 => \cnts[3][8]_i_3_n_0\,
      I1 => \cnts_reg[3]\(7),
      I2 => \currentpr1__14_carry__0_n_3\,
      I3 => \acknowledges_reg[3]_3\(0),
      I4 => \acknowledges_reg[3]_3\(1),
      I5 => \cnts_reg[3]\(8),
      O => \cnts[3]\(8)
    );
\cnts[3][8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnts_reg[3]\(6),
      I1 => \cnts[3][7]_i_2_n_0\,
      O => \cnts[3][8]_i_3_n_0\
    );
\cnts_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(0),
      Q => \cnts_reg[0]\(0),
      R => reset
    );
\cnts_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(1),
      Q => \cnts_reg[0]\(1),
      R => reset
    );
\cnts_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(2),
      Q => \cnts_reg[0]\(2),
      R => reset
    );
\cnts_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(3),
      Q => \cnts_reg[0]\(3),
      R => reset
    );
\cnts_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(4),
      Q => \cnts_reg[0]\(4),
      R => reset
    );
\cnts_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(5),
      Q => \cnts_reg[0]\(5),
      R => reset
    );
\cnts_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(6),
      Q => \cnts_reg[0]\(6),
      R => reset
    );
\cnts_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(7),
      Q => \cnts_reg[0]\(7),
      R => reset
    );
\cnts_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[0]_4\,
      D => \cnts[0]\(8),
      Q => \cnts_reg[0]\(8),
      R => reset
    );
\cnts_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(0),
      Q => \cnts_reg[1]\(0),
      R => reset
    );
\cnts_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(1),
      Q => \cnts_reg[1]\(1),
      R => reset
    );
\cnts_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(2),
      Q => \cnts_reg[1]\(2),
      R => reset
    );
\cnts_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(3),
      Q => \cnts_reg[1]\(3),
      R => reset
    );
\cnts_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(4),
      Q => \cnts_reg[1]\(4),
      R => reset
    );
\cnts_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(5),
      Q => \cnts_reg[1]\(5),
      R => reset
    );
\cnts_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(6),
      Q => \cnts_reg[1]\(6),
      R => reset
    );
\cnts_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(7),
      Q => \cnts_reg[1]\(7),
      R => reset
    );
\cnts_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[1]_5\,
      D => \cnts[1]\(8),
      Q => \cnts_reg[1]\(8),
      R => reset
    );
\cnts_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(0),
      Q => \cnts_reg[2]\(0),
      R => reset
    );
\cnts_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(1),
      Q => \cnts_reg[2]\(1),
      R => reset
    );
\cnts_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(2),
      Q => \cnts_reg[2]\(2),
      R => reset
    );
\cnts_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(3),
      Q => \cnts_reg[2]\(3),
      R => reset
    );
\cnts_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(4),
      Q => \cnts_reg[2]\(4),
      R => reset
    );
\cnts_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(5),
      Q => \cnts_reg[2]\(5),
      R => reset
    );
\cnts_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(6),
      Q => \cnts_reg[2]\(6),
      R => reset
    );
\cnts_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(7),
      Q => \cnts_reg[2]\(7),
      R => reset
    );
\cnts_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[2]_6\,
      D => \cnts[2]\(8),
      Q => \cnts_reg[2]\(8),
      R => reset
    );
\cnts_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(0),
      Q => \cnts_reg[3]\(0),
      R => reset
    );
\cnts_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(1),
      Q => \cnts_reg[3]\(1),
      R => reset
    );
\cnts_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(2),
      Q => \cnts_reg[3]\(2),
      R => reset
    );
\cnts_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(3),
      Q => \cnts_reg[3]\(3),
      R => reset
    );
\cnts_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(4),
      Q => \cnts_reg[3]\(4),
      R => reset
    );
\cnts_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(5),
      Q => \cnts_reg[3]\(5),
      R => reset
    );
\cnts_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(6),
      Q => \cnts_reg[3]\(6),
      R => reset
    );
\cnts_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(7),
      Q => \cnts_reg[3]\(7),
      R => reset
    );
\cnts_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cnts[3]_7\,
      D => \cnts[3]\(8),
      Q => \cnts_reg[3]\(8),
      R => reset
    );
\currentpr1__14_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \currentpr1__14_carry_n_0\,
      CO(2) => \currentpr1__14_carry_n_1\,
      CO(1) => \currentpr1__14_carry_n_2\,
      CO(0) => \currentpr1__14_carry_n_3\,
      CYINIT => '0',
      DI(3) => \currentpr1__14_carry_i_1_n_0\,
      DI(2) => \currentpr1__14_carry_i_2_n_0\,
      DI(1) => \currentpr1__14_carry_i_3_n_0\,
      DI(0) => \currentpr1__14_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_currentpr1__14_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \currentpr1__14_carry_i_5_n_0\,
      S(2) => \currentpr1__14_carry_i_6_n_0\,
      S(1) => \currentpr1__14_carry_i_7_n_0\,
      S(0) => \currentpr1__14_carry_i_8_n_0\
    );
\currentpr1__14_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \currentpr1__14_carry_n_0\,
      CO(3 downto 1) => \NLW_currentpr1__14_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \currentpr1__14_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_currentpr1__14_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \currentpr1__14_carry_i_1__0_n_0\
    );
\currentpr1__14_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(6),
      I1 => \cnts_reg[3]\(6),
      I2 => \cnts_reg[3]\(7),
      I3 => acktime(7),
      O => \currentpr1__14_carry_i_1_n_0\
    );
\currentpr1__14_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnts_reg[3]\(8),
      O => \currentpr1__14_carry_i_1__0_n_0\
    );
\currentpr1__14_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(4),
      I1 => \cnts_reg[3]\(4),
      I2 => \cnts_reg[3]\(5),
      I3 => acktime(5),
      O => \currentpr1__14_carry_i_2_n_0\
    );
\currentpr1__14_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(2),
      I1 => \cnts_reg[3]\(2),
      I2 => \cnts_reg[3]\(3),
      I3 => acktime(3),
      O => \currentpr1__14_carry_i_3_n_0\
    );
\currentpr1__14_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(0),
      I1 => \cnts_reg[3]\(0),
      I2 => \cnts_reg[3]\(1),
      I3 => acktime(1),
      O => \currentpr1__14_carry_i_4_n_0\
    );
\currentpr1__14_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[3]\(7),
      I1 => acktime(7),
      I2 => \cnts_reg[3]\(6),
      I3 => acktime(6),
      O => \currentpr1__14_carry_i_5_n_0\
    );
\currentpr1__14_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[3]\(5),
      I1 => acktime(5),
      I2 => \cnts_reg[3]\(4),
      I3 => acktime(4),
      O => \currentpr1__14_carry_i_6_n_0\
    );
\currentpr1__14_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[3]\(3),
      I1 => acktime(3),
      I2 => \cnts_reg[3]\(2),
      I3 => acktime(2),
      O => \currentpr1__14_carry_i_7_n_0\
    );
\currentpr1__14_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[3]\(1),
      I1 => acktime(1),
      I2 => \cnts_reg[3]\(0),
      I3 => acktime(0),
      O => \currentpr1__14_carry_i_8_n_0\
    );
\currentpr1__4_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \currentpr1__4_carry_n_0\,
      CO(2) => \currentpr1__4_carry_n_1\,
      CO(1) => \currentpr1__4_carry_n_2\,
      CO(0) => \currentpr1__4_carry_n_3\,
      CYINIT => '0',
      DI(3) => \currentpr1__4_carry_i_1_n_0\,
      DI(2) => \currentpr1__4_carry_i_2_n_0\,
      DI(1) => \currentpr1__4_carry_i_3_n_0\,
      DI(0) => \currentpr1__4_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_currentpr1__4_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \currentpr1__4_carry_i_5_n_0\,
      S(2) => \currentpr1__4_carry_i_6_n_0\,
      S(1) => \currentpr1__4_carry_i_7_n_0\,
      S(0) => \currentpr1__4_carry_i_8_n_0\
    );
\currentpr1__4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \currentpr1__4_carry_n_0\,
      CO(3 downto 1) => \NLW_currentpr1__4_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \currentpr1__4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_currentpr1__4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \currentpr1__4_carry__0_i_1_n_0\
    );
\currentpr1__4_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnts_reg[1]\(8),
      O => \currentpr1__4_carry__0_i_1_n_0\
    );
\currentpr1__4_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(6),
      I1 => \cnts_reg[1]\(6),
      I2 => \cnts_reg[1]\(7),
      I3 => acktime(7),
      O => \currentpr1__4_carry_i_1_n_0\
    );
\currentpr1__4_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(4),
      I1 => \cnts_reg[1]\(4),
      I2 => \cnts_reg[1]\(5),
      I3 => acktime(5),
      O => \currentpr1__4_carry_i_2_n_0\
    );
\currentpr1__4_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(2),
      I1 => \cnts_reg[1]\(2),
      I2 => \cnts_reg[1]\(3),
      I3 => acktime(3),
      O => \currentpr1__4_carry_i_3_n_0\
    );
\currentpr1__4_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(0),
      I1 => \cnts_reg[1]\(0),
      I2 => \cnts_reg[1]\(1),
      I3 => acktime(1),
      O => \currentpr1__4_carry_i_4_n_0\
    );
\currentpr1__4_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[1]\(7),
      I1 => acktime(7),
      I2 => \cnts_reg[1]\(6),
      I3 => acktime(6),
      O => \currentpr1__4_carry_i_5_n_0\
    );
\currentpr1__4_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[1]\(5),
      I1 => acktime(5),
      I2 => \cnts_reg[1]\(4),
      I3 => acktime(4),
      O => \currentpr1__4_carry_i_6_n_0\
    );
\currentpr1__4_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[1]\(3),
      I1 => acktime(3),
      I2 => \cnts_reg[1]\(2),
      I3 => acktime(2),
      O => \currentpr1__4_carry_i_7_n_0\
    );
\currentpr1__4_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[1]\(1),
      I1 => acktime(1),
      I2 => \cnts_reg[1]\(0),
      I3 => acktime(0),
      O => \currentpr1__4_carry_i_8_n_0\
    );
\currentpr1__9_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \currentpr1__9_carry_n_0\,
      CO(2) => \currentpr1__9_carry_n_1\,
      CO(1) => \currentpr1__9_carry_n_2\,
      CO(0) => \currentpr1__9_carry_n_3\,
      CYINIT => '0',
      DI(3) => \currentpr1__9_carry_i_1_n_0\,
      DI(2) => \currentpr1__9_carry_i_2_n_0\,
      DI(1) => \currentpr1__9_carry_i_3_n_0\,
      DI(0) => \currentpr1__9_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_currentpr1__9_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \currentpr1__9_carry_i_5_n_0\,
      S(2) => \currentpr1__9_carry_i_6_n_0\,
      S(1) => \currentpr1__9_carry_i_7_n_0\,
      S(0) => \currentpr1__9_carry_i_8_n_0\
    );
\currentpr1__9_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \currentpr1__9_carry_n_0\,
      CO(3 downto 1) => \NLW_currentpr1__9_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \currentpr1__9_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_currentpr1__9_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \currentpr1__9_carry__0_i_1_n_0\
    );
\currentpr1__9_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnts_reg[2]\(8),
      O => \currentpr1__9_carry__0_i_1_n_0\
    );
\currentpr1__9_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(6),
      I1 => \cnts_reg[2]\(6),
      I2 => \cnts_reg[2]\(7),
      I3 => acktime(7),
      O => \currentpr1__9_carry_i_1_n_0\
    );
\currentpr1__9_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(4),
      I1 => \cnts_reg[2]\(4),
      I2 => \cnts_reg[2]\(5),
      I3 => acktime(5),
      O => \currentpr1__9_carry_i_2_n_0\
    );
\currentpr1__9_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(2),
      I1 => \cnts_reg[2]\(2),
      I2 => \cnts_reg[2]\(3),
      I3 => acktime(3),
      O => \currentpr1__9_carry_i_3_n_0\
    );
\currentpr1__9_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(0),
      I1 => \cnts_reg[2]\(0),
      I2 => \cnts_reg[2]\(1),
      I3 => acktime(1),
      O => \currentpr1__9_carry_i_4_n_0\
    );
\currentpr1__9_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[2]\(7),
      I1 => acktime(7),
      I2 => \cnts_reg[2]\(6),
      I3 => acktime(6),
      O => \currentpr1__9_carry_i_5_n_0\
    );
\currentpr1__9_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[2]\(5),
      I1 => acktime(5),
      I2 => \cnts_reg[2]\(4),
      I3 => acktime(4),
      O => \currentpr1__9_carry_i_6_n_0\
    );
\currentpr1__9_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[2]\(3),
      I1 => acktime(3),
      I2 => \cnts_reg[2]\(2),
      I3 => acktime(2),
      O => \currentpr1__9_carry_i_7_n_0\
    );
\currentpr1__9_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[2]\(1),
      I1 => acktime(1),
      I2 => \cnts_reg[2]\(0),
      I3 => acktime(0),
      O => \currentpr1__9_carry_i_8_n_0\
    );
currentpr1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => currentpr1_carry_n_0,
      CO(2) => currentpr1_carry_n_1,
      CO(1) => currentpr1_carry_n_2,
      CO(0) => currentpr1_carry_n_3,
      CYINIT => '0',
      DI(3) => currentpr1_carry_i_1_n_0,
      DI(2) => currentpr1_carry_i_2_n_0,
      DI(1) => currentpr1_carry_i_3_n_0,
      DI(0) => currentpr1_carry_i_4_n_0,
      O(3 downto 0) => NLW_currentpr1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => currentpr1_carry_i_5_n_0,
      S(2) => currentpr1_carry_i_6_n_0,
      S(1) => currentpr1_carry_i_7_n_0,
      S(0) => currentpr1_carry_i_8_n_0
    );
\currentpr1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => currentpr1_carry_n_0,
      CO(3 downto 1) => \NLW_currentpr1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \currentpr1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_currentpr1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \currentpr1_carry__0_i_1_n_0\
    );
\currentpr1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnts_reg[0]\(8),
      O => \currentpr1_carry__0_i_1_n_0\
    );
currentpr1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(6),
      I1 => \cnts_reg[0]\(6),
      I2 => \cnts_reg[0]\(7),
      I3 => acktime(7),
      O => currentpr1_carry_i_1_n_0
    );
currentpr1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(4),
      I1 => \cnts_reg[0]\(4),
      I2 => \cnts_reg[0]\(5),
      I3 => acktime(5),
      O => currentpr1_carry_i_2_n_0
    );
currentpr1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(2),
      I1 => \cnts_reg[0]\(2),
      I2 => \cnts_reg[0]\(3),
      I3 => acktime(3),
      O => currentpr1_carry_i_3_n_0
    );
currentpr1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => acktime(0),
      I1 => \cnts_reg[0]\(0),
      I2 => \cnts_reg[0]\(1),
      I3 => acktime(1),
      O => currentpr1_carry_i_4_n_0
    );
currentpr1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[0]\(7),
      I1 => acktime(7),
      I2 => \cnts_reg[0]\(6),
      I3 => acktime(6),
      O => currentpr1_carry_i_5_n_0
    );
currentpr1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[0]\(5),
      I1 => acktime(5),
      I2 => \cnts_reg[0]\(4),
      I3 => acktime(4),
      O => currentpr1_carry_i_6_n_0
    );
currentpr1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[0]\(3),
      I1 => acktime(3),
      I2 => \cnts_reg[0]\(2),
      I3 => acktime(2),
      O => currentpr1_carry_i_7_n_0
    );
currentpr1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \cnts_reg[0]\(1),
      I1 => acktime(1),
      I2 => \cnts_reg[0]\(0),
      I3 => acktime(0),
      O => currentpr1_carry_i_8_n_0
    );
\currentpr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => p_6_out(0),
      I1 => \currentpr[0]_i_3_n_0\,
      I2 => currentpren(0),
      I3 => \currentpr1_carry__0_n_3\,
      I4 => \currentpr[0]_i_4_n_0\,
      I5 => \^currentpr\(0),
      O => \currentpr[0]_i_1_n_0\
    );
\currentpr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => \acknowledges_reg[0]_0\(1),
      I1 => currentpren(0),
      I2 => ackin(0),
      I3 => ready,
      O => p_6_out(0)
    );
\currentpr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acknowledges_reg[0]_0\(1),
      I1 => \acknowledges_reg[0]_0\(0),
      O => \currentpr[0]_i_3_n_0\
    );
\currentpr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000400000"
    )
        port map (
      I0 => \cnts[0][3]_i_2_n_0\,
      I1 => ackin(0),
      I2 => currentpren(0),
      I3 => keyin(0),
      I4 => ready,
      I5 => \keyInPrev_reg_n_0_[0]\,
      O => \currentpr[0]_i_4_n_0\
    );
\currentpr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => p_6_out(1),
      I1 => \currentpr[1]_i_3_n_0\,
      I2 => currentpren(1),
      I3 => \currentpr1__4_carry__0_n_3\,
      I4 => \currentpr[1]_i_4_n_0\,
      I5 => \^currentpr\(1),
      O => \currentpr[1]_i_1_n_0\
    );
\currentpr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => \acknowledges_reg[1]_1\(1),
      I1 => currentpren(1),
      I2 => ackin(1),
      I3 => ready,
      O => p_6_out(1)
    );
\currentpr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acknowledges_reg[1]_1\(1),
      I1 => \acknowledges_reg[1]_1\(0),
      O => \currentpr[1]_i_3_n_0\
    );
\currentpr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000400000"
    )
        port map (
      I0 => \cnts[1][3]_i_2_n_0\,
      I1 => ackin(1),
      I2 => currentpren(1),
      I3 => keyin(1),
      I4 => ready,
      I5 => p_0_in,
      O => \currentpr[1]_i_4_n_0\
    );
\currentpr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => p_6_out(2),
      I1 => \currentpr[2]_i_3_n_0\,
      I2 => currentpren(2),
      I3 => \currentpr1__9_carry__0_n_3\,
      I4 => \currentpr[2]_i_4_n_0\,
      I5 => \^currentpr\(2),
      O => \currentpr[2]_i_1_n_0\
    );
\currentpr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => \acknowledges_reg[2]_2\(1),
      I1 => currentpren(2),
      I2 => ackin(2),
      I3 => ready,
      O => p_6_out(2)
    );
\currentpr[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acknowledges_reg[2]_2\(1),
      I1 => \acknowledges_reg[2]_2\(0),
      O => \currentpr[2]_i_3_n_0\
    );
\currentpr[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000400000"
    )
        port map (
      I0 => \cnts[2][3]_i_2_n_0\,
      I1 => ackin(2),
      I2 => currentpren(2),
      I3 => keyin(2),
      I4 => ready,
      I5 => p_0_in1_in,
      O => \currentpr[2]_i_4_n_0\
    );
\currentpr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => p_6_out(3),
      I1 => \currentpr[3]_i_3_n_0\,
      I2 => currentpren(3),
      I3 => \currentpr1__14_carry__0_n_3\,
      I4 => \currentpr[3]_i_4_n_0\,
      I5 => \^currentpr\(3),
      O => \currentpr[3]_i_1_n_0\
    );
\currentpr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => \acknowledges_reg[3]_3\(1),
      I1 => currentpren(3),
      I2 => ackin(3),
      I3 => ready,
      O => p_6_out(3)
    );
\currentpr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acknowledges_reg[3]_3\(1),
      I1 => \acknowledges_reg[3]_3\(0),
      O => \currentpr[3]_i_3_n_0\
    );
\currentpr[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000400000"
    )
        port map (
      I0 => \cnts[3][3]_i_2_n_0\,
      I1 => ackin(3),
      I2 => currentpren(3),
      I3 => keyin(3),
      I4 => ready,
      I5 => p_0_in4_in,
      O => \currentpr[3]_i_4_n_0\
    );
\currentpr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \currentpr[0]_i_1_n_0\,
      Q => \^currentpr\(0),
      R => reset
    );
\currentpr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \currentpr[1]_i_1_n_0\,
      Q => \^currentpr\(1),
      R => reset
    );
\currentpr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \currentpr[2]_i_1_n_0\,
      Q => \^currentpr\(2),
      R => reset
    );
\currentpr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \currentpr[3]_i_1_n_0\,
      Q => \^currentpr\(3),
      R => reset
    );
\keyInPrev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => keyin(0),
      Q => \keyInPrev_reg_n_0_[0]\,
      R => '0'
    );
\keyInPrev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => keyin(1),
      Q => p_0_in,
      R => '0'
    );
\keyInPrev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => keyin(2),
      Q => p_0_in1_in,
      R => '0'
    );
\keyInPrev_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => keyin(3),
      Q => p_0_in4_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_AcknowledgeChecker_v_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TransistorKeys_AcknowledgeChecker_v_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TransistorKeys_AcknowledgeChecker_v_0_1 : entity is "design_1_AcknowledgeChecker_v_0_1,AcknowledgeChecker_ver_1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TransistorKeys_AcknowledgeChecker_v_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TransistorKeys_AcknowledgeChecker_v_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TransistorKeys_AcknowledgeChecker_v_0_1 : entity is "AcknowledgeChecker_ver_1_0,Vivado 2019.1";
end TransistorKeys_AcknowledgeChecker_v_0_1;

architecture STRUCTURE of TransistorKeys_AcknowledgeChecker_v_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.TransistorKeys_AcknowledgeChecker_v_0_1_AcknowledgeChecker_ver_1_0
     port map (
      ackin(3 downto 0) => ackin(3 downto 0),
      ackpr(3 downto 0) => ackpr(3 downto 0),
      ackpren(3 downto 0) => ackpren(3 downto 0),
      acktime(7 downto 0) => acktime(7 downto 0),
      clk => clk,
      currentpr(3 downto 0) => currentpr(3 downto 0),
      currentpren(3 downto 0) => currentpren(3 downto 0),
      keyin(3 downto 0) => keyin(3 downto 0),
      ready => ready,
      reset => reset
    );
end STRUCTURE;
