-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed May  3 11:35:55 2023
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/GITEA/GitHub/ES/IP_cores/LIB/AckCheckerBlock/AckCheckerBlock.srcs/sources_1/bd/AckChecker/ip/AckChecker_AckCheckerConcept_0_0/AckChecker_AckCheckerConcept_0_0_sim_netlist.vhdl
-- Design      : AckChecker_AckCheckerConcept_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AckChecker_AckCheckerConcept_0_0_AckCheckerConcept is
  port (
    AckPr : out STD_LOGIC;
    currentPr : out STD_LOGIC;
    reset : in STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    line : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    Ready : in STD_LOGIC;
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AckChecker_AckCheckerConcept_0_0_AckCheckerConcept : entity is "AckCheckerConcept";
end AckChecker_AckCheckerConcept_0_0_AckCheckerConcept;

architecture STRUCTURE of AckChecker_AckCheckerConcept_0_0_AckCheckerConcept is
  signal \^ackpr\ : STD_LOGIC;
  signal AckPr_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_acknowledge[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_acknowledge[1]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \TimeCnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \TimeCnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \TimeCnt_reg_n_0_[7]\ : STD_LOGIC;
  signal acknowledge : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^currentpr\ : STD_LOGIC;
  signal \currentPr1__0\ : STD_LOGIC;
  signal currentPr_i_1_n_0 : STD_LOGIC;
  signal currentPr_i_2_n_0 : STD_LOGIC;
  signal currentPr_i_3_n_0 : STD_LOGIC;
  signal currentPr_i_4_n_0 : STD_LOGIC;
  signal line_prev : STD_LOGIC;
  signal \ltOp__15\ : STD_LOGIC;
  signal \ltOp_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_carry__2_n_1\ : STD_LOGIC;
  signal \ltOp_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp_carry__2_n_3\ : STD_LOGIC;
  signal \ltOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_1__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_1_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_2__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_2_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_3__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_3_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_4__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_4_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_5__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_5_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_6__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_6_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_7__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_7_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_8__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_8_n_0 : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledge[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledge[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_acknowledge[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledge_reg[0]\ : label is "check:01,waiting_strobe_end:10,waiting:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_acknowledge_reg[1]\ : label is "check:01,waiting_strobe_end:10,waiting:00,iSTATE:11";
  attribute SOFT_HLUTNM of \TimeCnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TimeCnt[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TimeCnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \TimeCnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \TimeCnt[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \TimeCnt[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of currentPr_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of currentPr_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of currentPr_i_4 : label is "soft_lutpair2";
begin
  AckPr <= \^ackpr\;
  currentPr <= \^currentpr\;
AckPr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => \ltOp__15\,
      I1 => acknowledge(0),
      I2 => acknowledge(1),
      I3 => AckPr_en,
      I4 => \^ackpr\,
      O => AckPr_i_1_n_0
    );
AckPr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => AckPr_i_1_n_0,
      Q => \^ackpr\,
      R => reset
    );
\FSM_sequential_acknowledge[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D3D0C3C0"
    )
        port map (
      I0 => acknowledge_in,
      I1 => acknowledge(1),
      I2 => acknowledge(0),
      I3 => \currentPr1__0\,
      I4 => \ltOp__15\,
      O => \FSM_sequential_acknowledge[0]_i_1_n_0\
    );
\FSM_sequential_acknowledge[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => line_prev,
      I1 => Ready,
      I2 => line,
      O => \currentPr1__0\
    );
\FSM_sequential_acknowledge[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E8C0"
    )
        port map (
      I0 => acknowledge_in,
      I1 => acknowledge(1),
      I2 => acknowledge(0),
      I3 => \ltOp__15\,
      O => \FSM_sequential_acknowledge[1]_i_1_n_0\
    );
\FSM_sequential_acknowledge_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FSM_sequential_acknowledge[0]_i_1_n_0\,
      Q => acknowledge(0),
      R => reset
    );
\FSM_sequential_acknowledge_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FSM_sequential_acknowledge[1]_i_1_n_0\,
      Q => acknowledge(1),
      R => reset
    );
\TimeCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[0]\,
      O => \TimeCnt[0]_i_1_n_0\
    );
\TimeCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D0FFFFD0000000"
    )
        port map (
      I0 => acknowledge(1),
      I1 => acknowledge_in,
      I2 => \ltOp__15\,
      I3 => \TimeCnt_reg_n_0_[0]\,
      I4 => \TimeCnt[7]_i_2_n_0\,
      I5 => \TimeCnt_reg_n_0_[1]\,
      O => \TimeCnt[1]_i_1_n_0\
    );
\TimeCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[1]\,
      I1 => \TimeCnt_reg_n_0_[0]\,
      I2 => \TimeCnt_reg_n_0_[2]\,
      O => plusOp(2)
    );
\TimeCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D0FFFFD0000000"
    )
        port map (
      I0 => acknowledge(1),
      I1 => acknowledge_in,
      I2 => \ltOp__15\,
      I3 => \TimeCnt[3]_i_2_n_0\,
      I4 => \TimeCnt[7]_i_2_n_0\,
      I5 => \TimeCnt_reg_n_0_[3]\,
      O => \TimeCnt[3]_i_1_n_0\
    );
\TimeCnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[2]\,
      I1 => \TimeCnt_reg_n_0_[1]\,
      I2 => \TimeCnt_reg_n_0_[0]\,
      O => \TimeCnt[3]_i_2_n_0\
    );
\TimeCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[3]\,
      I1 => \TimeCnt_reg_n_0_[2]\,
      I2 => \TimeCnt_reg_n_0_[1]\,
      I3 => \TimeCnt_reg_n_0_[0]\,
      I4 => \TimeCnt_reg_n_0_[4]\,
      O => plusOp(4)
    );
\TimeCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044FFFF80880000"
    )
        port map (
      I0 => \TimeCnt[7]_i_4_n_0\,
      I1 => \ltOp__15\,
      I2 => acknowledge_in,
      I3 => acknowledge(1),
      I4 => \TimeCnt[7]_i_2_n_0\,
      I5 => \TimeCnt_reg_n_0_[5]\,
      O => \TimeCnt[5]_i_1_n_0\
    );
\TimeCnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[5]\,
      I1 => \TimeCnt[7]_i_4_n_0\,
      I2 => \TimeCnt_reg_n_0_[6]\,
      O => plusOp(6)
    );
\TimeCnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01110404"
    )
        port map (
      I0 => reset,
      I1 => acknowledge(0),
      I2 => \ltOp__15\,
      I3 => acknowledge_in,
      I4 => acknowledge(1),
      O => \TimeCnt[7]_i_1_n_0\
    );
\TimeCnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => acknowledge(1),
      I1 => acknowledge(0),
      I2 => reset,
      O => \TimeCnt[7]_i_2_n_0\
    );
\TimeCnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[6]\,
      I1 => \TimeCnt[7]_i_4_n_0\,
      I2 => \TimeCnt_reg_n_0_[5]\,
      I3 => \TimeCnt_reg_n_0_[7]\,
      O => plusOp(7)
    );
\TimeCnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[4]\,
      I1 => \TimeCnt_reg_n_0_[3]\,
      I2 => \TimeCnt_reg_n_0_[2]\,
      I3 => \TimeCnt_reg_n_0_[1]\,
      I4 => \TimeCnt_reg_n_0_[0]\,
      O => \TimeCnt[7]_i_4_n_0\
    );
\TimeCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \TimeCnt[7]_i_2_n_0\,
      D => \TimeCnt[0]_i_1_n_0\,
      Q => \TimeCnt_reg_n_0_[0]\,
      R => \TimeCnt[7]_i_1_n_0\
    );
\TimeCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \TimeCnt[1]_i_1_n_0\,
      Q => \TimeCnt_reg_n_0_[1]\,
      R => '0'
    );
\TimeCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \TimeCnt[7]_i_2_n_0\,
      D => plusOp(2),
      Q => \TimeCnt_reg_n_0_[2]\,
      R => \TimeCnt[7]_i_1_n_0\
    );
\TimeCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \TimeCnt[3]_i_1_n_0\,
      Q => \TimeCnt_reg_n_0_[3]\,
      R => '0'
    );
\TimeCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \TimeCnt[7]_i_2_n_0\,
      D => plusOp(4),
      Q => \TimeCnt_reg_n_0_[4]\,
      R => \TimeCnt[7]_i_1_n_0\
    );
\TimeCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \TimeCnt[5]_i_1_n_0\,
      Q => \TimeCnt_reg_n_0_[5]\,
      R => '0'
    );
\TimeCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \TimeCnt[7]_i_2_n_0\,
      D => plusOp(6),
      Q => \TimeCnt_reg_n_0_[6]\,
      R => \TimeCnt[7]_i_1_n_0\
    );
\TimeCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \TimeCnt[7]_i_2_n_0\,
      D => plusOp(7),
      Q => \TimeCnt_reg_n_0_[7]\,
      R => \TimeCnt[7]_i_1_n_0\
    );
currentPr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFBF88880080"
    )
        port map (
      I0 => currentPr_i_2_n_0,
      I1 => currentPr_i_3_n_0,
      I2 => acknowledge(1),
      I3 => \ltOp__15\,
      I4 => currentPr_i_4_n_0,
      I5 => \^currentpr\,
      O => currentPr_i_1_n_0
    );
currentPr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => acknowledge(1),
      I1 => currentPr_en,
      I2 => acknowledge_in,
      I3 => Ready,
      O => currentPr_i_2_n_0
    );
currentPr_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => currentPr_en,
      I1 => acknowledge(0),
      O => currentPr_i_3_n_0
    );
currentPr_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000400"
    )
        port map (
      I0 => acknowledge(1),
      I1 => acknowledge_in,
      I2 => line,
      I3 => Ready,
      I4 => line_prev,
      O => currentPr_i_4_n_0
    );
currentPr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => currentPr_i_1_n_0,
      Q => \^currentpr\,
      R => reset
    );
line_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => line,
      Q => line_prev,
      R => '0'
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => ltOp_carry_i_1_n_0,
      DI(2) => ltOp_carry_i_2_n_0,
      DI(1) => ltOp_carry_i_3_n_0,
      DI(0) => ltOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ltOp_carry_i_5_n_0,
      S(2) => ltOp_carry_i_6_n_0,
      S(1) => ltOp_carry_i_7_n_0,
      S(0) => ltOp_carry_i_8_n_0
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => \ltOp_carry__0_n_0\,
      CO(2) => \ltOp_carry__0_n_1\,
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp_carry_i_1__0_n_0\,
      DI(2) => \ltOp_carry_i_2__0_n_0\,
      DI(1) => \ltOp_carry_i_3__0_n_0\,
      DI(0) => \ltOp_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry_i_5__0_n_0\,
      S(2) => \ltOp_carry_i_6__0_n_0\,
      S(1) => \ltOp_carry_i_7__0_n_0\,
      S(0) => \ltOp_carry_i_8__0_n_0\
    );
\ltOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__0_n_0\,
      CO(3) => \ltOp_carry__1_n_0\,
      CO(2) => \ltOp_carry__1_n_1\,
      CO(1) => \ltOp_carry__1_n_2\,
      CO(0) => \ltOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp_carry_i_1__1_n_0\,
      DI(2) => \ltOp_carry_i_2__1_n_0\,
      DI(1) => \ltOp_carry_i_3__1_n_0\,
      DI(0) => \ltOp_carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry_i_5__1_n_0\,
      S(2) => \ltOp_carry_i_6__1_n_0\,
      S(1) => \ltOp_carry_i_7__1_n_0\,
      S(0) => \ltOp_carry_i_8__1_n_0\
    );
\ltOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__1_n_0\,
      CO(3) => \ltOp__15\,
      CO(2) => \ltOp_carry__2_n_1\,
      CO(1) => \ltOp_carry__2_n_2\,
      CO(0) => \ltOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp_carry_i_1__2_n_0\,
      DI(2) => \ltOp_carry_i_2__2_n_0\,
      DI(1) => \ltOp_carry_i_3__2_n_0\,
      DI(0) => \ltOp_carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry_i_5__2_n_0\,
      S(2) => \ltOp_carry_i_6__2_n_0\,
      S(1) => \ltOp_carry_i_7__2_n_0\,
      S(0) => \ltOp_carry_i_8__2_n_0\
    );
ltOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ackTime(6),
      I1 => \TimeCnt_reg_n_0_[6]\,
      I2 => \TimeCnt_reg_n_0_[7]\,
      I3 => ackTime(7),
      O => ltOp_carry_i_1_n_0
    );
\ltOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(14),
      I1 => ackTime(15),
      O => \ltOp_carry_i_1__0_n_0\
    );
\ltOp_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(22),
      I1 => ackTime(23),
      O => \ltOp_carry_i_1__1_n_0\
    );
\ltOp_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(30),
      I1 => ackTime(31),
      O => \ltOp_carry_i_1__2_n_0\
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ackTime(4),
      I1 => \TimeCnt_reg_n_0_[4]\,
      I2 => \TimeCnt_reg_n_0_[5]\,
      I3 => ackTime(5),
      O => ltOp_carry_i_2_n_0
    );
\ltOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(12),
      I1 => ackTime(13),
      O => \ltOp_carry_i_2__0_n_0\
    );
\ltOp_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(20),
      I1 => ackTime(21),
      O => \ltOp_carry_i_2__1_n_0\
    );
\ltOp_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(28),
      I1 => ackTime(29),
      O => \ltOp_carry_i_2__2_n_0\
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ackTime(2),
      I1 => \TimeCnt_reg_n_0_[2]\,
      I2 => \TimeCnt_reg_n_0_[3]\,
      I3 => ackTime(3),
      O => ltOp_carry_i_3_n_0
    );
\ltOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(10),
      I1 => ackTime(11),
      O => \ltOp_carry_i_3__0_n_0\
    );
\ltOp_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(18),
      I1 => ackTime(19),
      O => \ltOp_carry_i_3__1_n_0\
    );
\ltOp_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(26),
      I1 => ackTime(27),
      O => \ltOp_carry_i_3__2_n_0\
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ackTime(0),
      I1 => \TimeCnt_reg_n_0_[0]\,
      I2 => \TimeCnt_reg_n_0_[1]\,
      I3 => ackTime(1),
      O => ltOp_carry_i_4_n_0
    );
\ltOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(8),
      I1 => ackTime(9),
      O => \ltOp_carry_i_4__0_n_0\
    );
\ltOp_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(16),
      I1 => ackTime(17),
      O => \ltOp_carry_i_4__1_n_0\
    );
\ltOp_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ackTime(24),
      I1 => ackTime(25),
      O => \ltOp_carry_i_4__2_n_0\
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[7]\,
      I1 => ackTime(7),
      I2 => \TimeCnt_reg_n_0_[6]\,
      I3 => ackTime(6),
      O => ltOp_carry_i_5_n_0
    );
\ltOp_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(15),
      I1 => ackTime(14),
      O => \ltOp_carry_i_5__0_n_0\
    );
\ltOp_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(23),
      I1 => ackTime(22),
      O => \ltOp_carry_i_5__1_n_0\
    );
\ltOp_carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(31),
      I1 => ackTime(30),
      O => \ltOp_carry_i_5__2_n_0\
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[5]\,
      I1 => ackTime(5),
      I2 => \TimeCnt_reg_n_0_[4]\,
      I3 => ackTime(4),
      O => ltOp_carry_i_6_n_0
    );
\ltOp_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(13),
      I1 => ackTime(12),
      O => \ltOp_carry_i_6__0_n_0\
    );
\ltOp_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(21),
      I1 => ackTime(20),
      O => \ltOp_carry_i_6__1_n_0\
    );
\ltOp_carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(29),
      I1 => ackTime(28),
      O => \ltOp_carry_i_6__2_n_0\
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[3]\,
      I1 => ackTime(3),
      I2 => \TimeCnt_reg_n_0_[2]\,
      I3 => ackTime(2),
      O => ltOp_carry_i_7_n_0
    );
\ltOp_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(11),
      I1 => ackTime(10),
      O => \ltOp_carry_i_7__0_n_0\
    );
\ltOp_carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(19),
      I1 => ackTime(18),
      O => \ltOp_carry_i_7__1_n_0\
    );
\ltOp_carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(27),
      I1 => ackTime(26),
      O => \ltOp_carry_i_7__2_n_0\
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \TimeCnt_reg_n_0_[1]\,
      I1 => ackTime(1),
      I2 => \TimeCnt_reg_n_0_[0]\,
      I3 => ackTime(0),
      O => ltOp_carry_i_8_n_0
    );
\ltOp_carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(9),
      I1 => ackTime(8),
      O => \ltOp_carry_i_8__0_n_0\
    );
\ltOp_carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(17),
      I1 => ackTime(16),
      O => \ltOp_carry_i_8__1_n_0\
    );
\ltOp_carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ackTime(25),
      I1 => ackTime(24),
      O => \ltOp_carry_i_8__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AckChecker_AckCheckerConcept_0_0 is
  port (
    ackTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AckPr_en : in STD_LOGIC;
    AckPr : out STD_LOGIC;
    acknowledge_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    currentPr_en : in STD_LOGIC;
    currentPr : out STD_LOGIC;
    line : in STD_LOGIC;
    Ready : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AckChecker_AckCheckerConcept_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AckChecker_AckCheckerConcept_0_0 : entity is "AckChecker_AckCheckerConcept_0_0,AckCheckerConcept,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of AckChecker_AckCheckerConcept_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of AckChecker_AckCheckerConcept_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of AckChecker_AckCheckerConcept_0_0 : entity is "AckCheckerConcept,Vivado 2019.1";
end AckChecker_AckCheckerConcept_0_0;

architecture STRUCTURE of AckChecker_AckCheckerConcept_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN AckChecker_Clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.AckChecker_AckCheckerConcept_0_0_AckCheckerConcept
     port map (
      AckPr => AckPr,
      AckPr_en => AckPr_en,
      Clk => Clk,
      Ready => Ready,
      ackTime(31 downto 0) => ackTime(31 downto 0),
      acknowledge_in => acknowledge_in,
      currentPr => currentPr,
      currentPr_en => currentPr_en,
      line => line,
      reset => reset
    );
end STRUCTURE;
