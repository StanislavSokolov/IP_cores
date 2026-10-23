-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 11:48:31 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TransistorKeys_KeyControllerP0N_ver_0_1 -prefix
--               TransistorKeys_KeyControllerP0N_ver_0_1_ design_1_KeyControllerP0N_ver_0_0_sim_netlist.vhdl
-- Design      : design_1_KeyControllerP0N_ver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_KeyControllerP0N_ver_0_1_KeyControllerP0N_ver_2_0 is
  port (
    linePrBuf_reg_0 : out STD_LOGIC;
    keysout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    start : out STD_LOGIC;
    softshutdownpr : out STD_LOGIC;
    breaken : in STD_LOGIC;
    softshutdownen : in STD_LOGIC;
    er0in : in STD_LOGIC;
    ready : in STD_LOGIC;
    keysel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    keysen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    ob : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    isdeadtimeok : in STD_LOGIC;
    linepren : in STD_LOGIC;
    softshutdowntimer : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end TransistorKeys_KeyControllerP0N_ver_0_1_KeyControllerP0N_ver_2_0;

architecture STRUCTURE of TransistorKeys_KeyControllerP0N_ver_0_1_KeyControllerP0N_ver_2_0 is
  signal cnt6_in : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cntsoftsd[0]_i_1_n_0\ : STD_LOGIC;
  signal \cntsoftsd[0]_i_3_n_0\ : STD_LOGIC;
  signal \cntsoftsd[0]_i_4_n_0\ : STD_LOGIC;
  signal \cntsoftsd[0]_i_5_n_0\ : STD_LOGIC;
  signal \cntsoftsd[0]_i_6_n_0\ : STD_LOGIC;
  signal \cntsoftsd[0]_i_7_n_0\ : STD_LOGIC;
  signal \cntsoftsd[0]_i_8_n_0\ : STD_LOGIC;
  signal \cntsoftsd[12]_i_2_n_0\ : STD_LOGIC;
  signal \cntsoftsd[12]_i_3_n_0\ : STD_LOGIC;
  signal \cntsoftsd[12]_i_4_n_0\ : STD_LOGIC;
  signal \cntsoftsd[12]_i_5_n_0\ : STD_LOGIC;
  signal \cntsoftsd[4]_i_2_n_0\ : STD_LOGIC;
  signal \cntsoftsd[4]_i_3_n_0\ : STD_LOGIC;
  signal \cntsoftsd[4]_i_4_n_0\ : STD_LOGIC;
  signal \cntsoftsd[4]_i_5_n_0\ : STD_LOGIC;
  signal \cntsoftsd[8]_i_2_n_0\ : STD_LOGIC;
  signal \cntsoftsd[8]_i_3_n_0\ : STD_LOGIC;
  signal \cntsoftsd[8]_i_4_n_0\ : STD_LOGIC;
  signal \cntsoftsd[8]_i_5_n_0\ : STD_LOGIC;
  signal cntsoftsd_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cntsoftsd_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cntsoftsd_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cntsoftsd_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cntsoftsd_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cntsoftsd_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cntsoftsd_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cntsoftsd_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cntsoftsd_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cntsoftsd_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cntsoftsd_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cntsoftsd_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cntsoftsd_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cntsoftsd_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cntsoftsd_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cntsoftsd_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cntsoftsd_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cntsoftsd_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal errorBuf : STD_LOGIC;
  signal \errorBuf123_out__1\ : STD_LOGIC;
  signal \errorBuf1__0\ : STD_LOGIC;
  signal errorBuf_i_1_n_0 : STD_LOGIC;
  signal keys : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \keys[0]_i_1_n_0\ : STD_LOGIC;
  signal \keys[0]_i_2_n_0\ : STD_LOGIC;
  signal \keys[0]_i_3_n_0\ : STD_LOGIC;
  signal \keys[1]_i_1_n_0\ : STD_LOGIC;
  signal \keys[1]_i_2_n_0\ : STD_LOGIC;
  signal \keys[1]_i_3_n_0\ : STD_LOGIC;
  signal \keys[2]_i_1_n_0\ : STD_LOGIC;
  signal \keys[2]_i_2_n_0\ : STD_LOGIC;
  signal \keys[2]_i_3_n_0\ : STD_LOGIC;
  signal \keys[2]_i_4_n_0\ : STD_LOGIC;
  signal \keys[2]_i_5_n_0\ : STD_LOGIC;
  signal \keys[3]_i_1_n_0\ : STD_LOGIC;
  signal \keys[3]_i_2_n_0\ : STD_LOGIC;
  signal \keys[3]_i_3_n_0\ : STD_LOGIC;
  signal \keys[3]_i_4_n_0\ : STD_LOGIC;
  signal \keys_reg_n_0_[0]\ : STD_LOGIC;
  signal \keys_reg_n_0_[1]\ : STD_LOGIC;
  signal \keys_reg_n_0_[2]\ : STD_LOGIC;
  signal \keys_reg_n_0_[3]\ : STD_LOGIC;
  signal \linePrBuf1__0\ : STD_LOGIC;
  signal \linePrBuf__0\ : STD_LOGIC;
  signal linePrBuf_i_1_n_0 : STD_LOGIC;
  signal linePrBuf_i_4_n_0 : STD_LOGIC;
  signal linePrBuf_i_5_n_0 : STD_LOGIC;
  signal \^lineprbuf_reg_0\ : STD_LOGIC;
  signal \lineState[0]_i_1_n_0\ : STD_LOGIC;
  signal \lineState[0]_i_2_n_0\ : STD_LOGIC;
  signal \lineState[1]_i_1_n_0\ : STD_LOGIC;
  signal \lineState[1]_i_2_n_0\ : STD_LOGIC;
  signal \lineState[2]_i_1_n_0\ : STD_LOGIC;
  signal \lineState[2]_i_2_n_0\ : STD_LOGIC;
  signal \lineState[2]_i_3_n_0\ : STD_LOGIC;
  signal \lineState[2]_i_4_n_0\ : STD_LOGIC;
  signal \lineState[2]_i_5_n_0\ : STD_LOGIC;
  signal \lineState[2]_i_6_n_0\ : STD_LOGIC;
  signal \lineState_reg_n_0_[0]\ : STD_LOGIC;
  signal \lineState_reg_n_0_[1]\ : STD_LOGIC;
  signal \lineState_reg_n_0_[2]\ : STD_LOGIC;
  signal \^softshutdownpr\ : STD_LOGIC;
  signal softshutdownpr_i_1_n_0 : STD_LOGIC;
  signal \^start\ : STD_LOGIC;
  signal \start1__7\ : STD_LOGIC;
  signal \start1_carry__0_n_1\ : STD_LOGIC;
  signal \start1_carry__0_n_2\ : STD_LOGIC;
  signal \start1_carry__0_n_3\ : STD_LOGIC;
  signal \start1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_1_n_0 : STD_LOGIC;
  signal \start1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_2_n_0 : STD_LOGIC;
  signal \start1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_3_n_0 : STD_LOGIC;
  signal \start1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_4_n_0 : STD_LOGIC;
  signal \start1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_5_n_0 : STD_LOGIC;
  signal \start1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_6_n_0 : STD_LOGIC;
  signal \start1_carry_i_7__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_7_n_0 : STD_LOGIC;
  signal \start1_carry_i_8__0_n_0\ : STD_LOGIC;
  signal start1_carry_i_8_n_0 : STD_LOGIC;
  signal start1_carry_n_0 : STD_LOGIC;
  signal start1_carry_n_1 : STD_LOGIC;
  signal start1_carry_n_2 : STD_LOGIC;
  signal start1_carry_n_3 : STD_LOGIC;
  signal start3_in : STD_LOGIC;
  signal start_i_1_n_0 : STD_LOGIC;
  signal start_i_2_n_0 : STD_LOGIC;
  signal start_i_4_n_0 : STD_LOGIC;
  signal \NLW_cntsoftsd_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_start1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cntsoftsd[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of errorBuf_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \keys[0]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \keys[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \keys[1]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \keys[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \keys[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \keys[2]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \keys[3]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of linePrBuf_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lineState[2]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lineState[2]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of start_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of start_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of start_i_5 : label is "soft_lutpair7";
begin
  linePrBuf_reg_0 <= \^lineprbuf_reg_0\;
  softshutdownpr <= \^softshutdownpr\;
  start <= \^start\;
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF730B0000"
    )
        port map (
      I0 => \lineState_reg_n_0_[2]\,
      I1 => \errorBuf123_out__1\,
      I2 => \lineState_reg_n_0_[0]\,
      I3 => \lineState_reg_n_0_[1]\,
      I4 => \cnt[0]_i_2_n_0\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => cnt6_in,
      I1 => softshutdownen,
      I2 => \start1__7\,
      I3 => \errorBuf123_out__1\,
      I4 => \cnt[0]_i_4_n_0\,
      I5 => breaken,
      O => \cnt[0]_i_2_n_0\
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4604"
    )
        port map (
      I0 => \lineState_reg_n_0_[1]\,
      I1 => \lineState_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \lineState_reg_n_0_[0]\,
      O => cnt6_in
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5503FF033C55FF"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => keysel(1),
      I2 => keysel(0),
      I3 => \lineState_reg_n_0_[2]\,
      I4 => \lineState_reg_n_0_[1]\,
      I5 => \lineState_reg_n_0_[0]\,
      O => \cnt[0]_i_4_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => reset
    );
\cntsoftsd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E22E222E"
    )
        port map (
      I0 => \cntsoftsd[0]_i_3_n_0\,
      I1 => \errorBuf123_out__1\,
      I2 => \lineState_reg_n_0_[2]\,
      I3 => \lineState_reg_n_0_[1]\,
      I4 => \lineState_reg_n_0_[0]\,
      I5 => breaken,
      O => \cntsoftsd[0]_i_1_n_0\
    );
\cntsoftsd[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => softshutdownen,
      I1 => \start1__7\,
      O => \cntsoftsd[0]_i_3_n_0\
    );
\cntsoftsd[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(0),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[0]_i_4_n_0\
    );
\cntsoftsd[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(3),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[0]_i_5_n_0\
    );
\cntsoftsd[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(2),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[0]_i_6_n_0\
    );
\cntsoftsd[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(1),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[0]_i_7_n_0\
    );
\cntsoftsd[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => cntsoftsd_reg(0),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[0]_i_8_n_0\
    );
\cntsoftsd[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(15),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[12]_i_2_n_0\
    );
\cntsoftsd[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(14),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[12]_i_3_n_0\
    );
\cntsoftsd[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(13),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[12]_i_4_n_0\
    );
\cntsoftsd[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(12),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[12]_i_5_n_0\
    );
\cntsoftsd[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(7),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[4]_i_2_n_0\
    );
\cntsoftsd[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(6),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[4]_i_3_n_0\
    );
\cntsoftsd[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(5),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[4]_i_4_n_0\
    );
\cntsoftsd[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(4),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[4]_i_5_n_0\
    );
\cntsoftsd[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(11),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[8]_i_2_n_0\
    );
\cntsoftsd[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(10),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[8]_i_3_n_0\
    );
\cntsoftsd[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(9),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[8]_i_4_n_0\
    );
\cntsoftsd[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => cntsoftsd_reg(8),
      I1 => \^lineprbuf_reg_0\,
      I2 => ready,
      I3 => errorBuf,
      I4 => er0in,
      O => \cntsoftsd[8]_i_5_n_0\
    );
\cntsoftsd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[0]_i_2_n_7\,
      Q => cntsoftsd_reg(0),
      R => reset
    );
\cntsoftsd_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cntsoftsd_reg[0]_i_2_n_0\,
      CO(2) => \cntsoftsd_reg[0]_i_2_n_1\,
      CO(1) => \cntsoftsd_reg[0]_i_2_n_2\,
      CO(0) => \cntsoftsd_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cntsoftsd[0]_i_4_n_0\,
      O(3) => \cntsoftsd_reg[0]_i_2_n_4\,
      O(2) => \cntsoftsd_reg[0]_i_2_n_5\,
      O(1) => \cntsoftsd_reg[0]_i_2_n_6\,
      O(0) => \cntsoftsd_reg[0]_i_2_n_7\,
      S(3) => \cntsoftsd[0]_i_5_n_0\,
      S(2) => \cntsoftsd[0]_i_6_n_0\,
      S(1) => \cntsoftsd[0]_i_7_n_0\,
      S(0) => \cntsoftsd[0]_i_8_n_0\
    );
\cntsoftsd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[8]_i_1_n_5\,
      Q => cntsoftsd_reg(10),
      R => reset
    );
\cntsoftsd_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[8]_i_1_n_4\,
      Q => cntsoftsd_reg(11),
      R => reset
    );
\cntsoftsd_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[12]_i_1_n_7\,
      Q => cntsoftsd_reg(12),
      R => reset
    );
\cntsoftsd_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntsoftsd_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cntsoftsd_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cntsoftsd_reg[12]_i_1_n_1\,
      CO(1) => \cntsoftsd_reg[12]_i_1_n_2\,
      CO(0) => \cntsoftsd_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntsoftsd_reg[12]_i_1_n_4\,
      O(2) => \cntsoftsd_reg[12]_i_1_n_5\,
      O(1) => \cntsoftsd_reg[12]_i_1_n_6\,
      O(0) => \cntsoftsd_reg[12]_i_1_n_7\,
      S(3) => \cntsoftsd[12]_i_2_n_0\,
      S(2) => \cntsoftsd[12]_i_3_n_0\,
      S(1) => \cntsoftsd[12]_i_4_n_0\,
      S(0) => \cntsoftsd[12]_i_5_n_0\
    );
\cntsoftsd_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[12]_i_1_n_6\,
      Q => cntsoftsd_reg(13),
      R => reset
    );
\cntsoftsd_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[12]_i_1_n_5\,
      Q => cntsoftsd_reg(14),
      R => reset
    );
\cntsoftsd_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[12]_i_1_n_4\,
      Q => cntsoftsd_reg(15),
      R => reset
    );
\cntsoftsd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[0]_i_2_n_6\,
      Q => cntsoftsd_reg(1),
      R => reset
    );
\cntsoftsd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[0]_i_2_n_5\,
      Q => cntsoftsd_reg(2),
      R => reset
    );
\cntsoftsd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[0]_i_2_n_4\,
      Q => cntsoftsd_reg(3),
      R => reset
    );
\cntsoftsd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[4]_i_1_n_7\,
      Q => cntsoftsd_reg(4),
      R => reset
    );
\cntsoftsd_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntsoftsd_reg[0]_i_2_n_0\,
      CO(3) => \cntsoftsd_reg[4]_i_1_n_0\,
      CO(2) => \cntsoftsd_reg[4]_i_1_n_1\,
      CO(1) => \cntsoftsd_reg[4]_i_1_n_2\,
      CO(0) => \cntsoftsd_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntsoftsd_reg[4]_i_1_n_4\,
      O(2) => \cntsoftsd_reg[4]_i_1_n_5\,
      O(1) => \cntsoftsd_reg[4]_i_1_n_6\,
      O(0) => \cntsoftsd_reg[4]_i_1_n_7\,
      S(3) => \cntsoftsd[4]_i_2_n_0\,
      S(2) => \cntsoftsd[4]_i_3_n_0\,
      S(1) => \cntsoftsd[4]_i_4_n_0\,
      S(0) => \cntsoftsd[4]_i_5_n_0\
    );
\cntsoftsd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[4]_i_1_n_6\,
      Q => cntsoftsd_reg(5),
      R => reset
    );
\cntsoftsd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[4]_i_1_n_5\,
      Q => cntsoftsd_reg(6),
      R => reset
    );
\cntsoftsd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[4]_i_1_n_4\,
      Q => cntsoftsd_reg(7),
      R => reset
    );
\cntsoftsd_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[8]_i_1_n_7\,
      Q => cntsoftsd_reg(8),
      R => reset
    );
\cntsoftsd_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntsoftsd_reg[4]_i_1_n_0\,
      CO(3) => \cntsoftsd_reg[8]_i_1_n_0\,
      CO(2) => \cntsoftsd_reg[8]_i_1_n_1\,
      CO(1) => \cntsoftsd_reg[8]_i_1_n_2\,
      CO(0) => \cntsoftsd_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cntsoftsd_reg[8]_i_1_n_4\,
      O(2) => \cntsoftsd_reg[8]_i_1_n_5\,
      O(1) => \cntsoftsd_reg[8]_i_1_n_6\,
      O(0) => \cntsoftsd_reg[8]_i_1_n_7\,
      S(3) => \cntsoftsd[8]_i_2_n_0\,
      S(2) => \cntsoftsd[8]_i_3_n_0\,
      S(1) => \cntsoftsd[8]_i_4_n_0\,
      S(0) => \cntsoftsd[8]_i_5_n_0\
    );
\cntsoftsd_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cntsoftsd[0]_i_1_n_0\,
      D => \cntsoftsd_reg[8]_i_1_n_6\,
      Q => cntsoftsd_reg(9),
      R => reset
    );
errorBuf_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBBFB"
    )
        port map (
      I0 => er0in,
      I1 => ready,
      I2 => \^lineprbuf_reg_0\,
      I3 => breaken,
      I4 => errorBuf,
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
      Q => errorBuf,
      R => reset
    );
\keys[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2E22"
    )
        port map (
      I0 => \keys_reg_n_0_[0]\,
      I1 => \keys[1]_i_2_n_0\,
      I2 => reset,
      I3 => \keys[0]_i_2_n_0\,
      I4 => keys(1),
      O => \keys[0]_i_1_n_0\
    );
\keys[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2AAA"
    )
        port map (
      I0 => \keys[0]_i_3_n_0\,
      I1 => \lineState_reg_n_0_[1]\,
      I2 => \errorBuf123_out__1\,
      I3 => \lineState_reg_n_0_[2]\,
      I4 => breaken,
      I5 => \lineState_reg_n_0_[0]\,
      O => \keys[0]_i_2_n_0\
    );
\keys[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => errorBuf,
      I1 => er0in,
      I2 => ready,
      I3 => keysel(0),
      I4 => breaken,
      O => \keys[0]_i_3_n_0\
    );
\keys[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2E22"
    )
        port map (
      I0 => \keys_reg_n_0_[1]\,
      I1 => \keys[1]_i_2_n_0\,
      I2 => reset,
      I3 => \keys[1]_i_3_n_0\,
      I4 => keys(1),
      O => \keys[1]_i_1_n_0\
    );
\keys[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFEF"
    )
        port map (
      I0 => reset,
      I1 => \errorBuf123_out__1\,
      I2 => \lineState_reg_n_0_[0]\,
      I3 => \lineState_reg_n_0_[1]\,
      I4 => \lineState_reg_n_0_[2]\,
      I5 => breaken,
      O => \keys[1]_i_2_n_0\
    );
\keys[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFB0BFB0BFBF"
    )
        port map (
      I0 => keysel(1),
      I1 => \errorBuf1__0\,
      I2 => breaken,
      I3 => \lineState_reg_n_0_[0]\,
      I4 => \lineState_reg_n_0_[2]\,
      I5 => \lineState_reg_n_0_[1]\,
      O => \keys[1]_i_3_n_0\
    );
\keys[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABF"
    )
        port map (
      I0 => reset,
      I1 => softshutdownen,
      I2 => \start1__7\,
      I3 => \errorBuf123_out__1\,
      I4 => breaken,
      O => keys(1)
    );
\keys[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => errorBuf,
      I1 => er0in,
      I2 => ready,
      O => \errorBuf1__0\
    );
\keys[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FFFFE2E2E2E2"
    )
        port map (
      I0 => \keys_reg_n_0_[2]\,
      I1 => \keys[3]_i_2_n_0\,
      I2 => \keys[2]_i_2_n_0\,
      I3 => ob(0),
      I4 => breaken,
      I5 => reset,
      O => \keys[2]_i_1_n_0\
    );
\keys[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45550000"
    )
        port map (
      I0 => \keys[2]_i_3_n_0\,
      I1 => \keys[2]_i_4_n_0\,
      I2 => \start1__7\,
      I3 => softshutdownen,
      I4 => \keys[2]_i_5_n_0\,
      O => \keys[2]_i_2_n_0\
    );
\keys[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55305500"
    )
        port map (
      I0 => ob(0),
      I1 => \lineState_reg_n_0_[2]\,
      I2 => \errorBuf123_out__1\,
      I3 => breaken,
      I4 => \lineState_reg_n_0_[1]\,
      O => \keys[2]_i_3_n_0\
    );
\keys[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBFB"
    )
        port map (
      I0 => breaken,
      I1 => \lineState_reg_n_0_[1]\,
      I2 => \lineState_reg_n_0_[2]\,
      I3 => \lineState_reg_n_0_[0]\,
      O => \keys[2]_i_4_n_0\
    );
\keys[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \lineState_reg_n_0_[0]\,
      I1 => \lineState_reg_n_0_[2]\,
      I2 => breaken,
      I3 => \errorBuf123_out__1\,
      I4 => \lineState_reg_n_0_[1]\,
      O => \keys[2]_i_5_n_0\
    );
\keys[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FFFFE2E2E2E2"
    )
        port map (
      I0 => \keys_reg_n_0_[3]\,
      I1 => \keys[3]_i_2_n_0\,
      I2 => \keys[3]_i_3_n_0\,
      I3 => ob(1),
      I4 => breaken,
      I5 => reset,
      O => \keys[3]_i_1_n_0\
    );
\keys[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFFFF"
    )
        port map (
      I0 => reset,
      I1 => \errorBuf123_out__1\,
      I2 => softshutdownen,
      I3 => \keys[3]_i_4_n_0\,
      I4 => \start1__7\,
      I5 => breaken,
      O => \keys[3]_i_2_n_0\
    );
\keys[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAAA3FFF"
    )
        port map (
      I0 => ob(1),
      I1 => \lineState_reg_n_0_[0]\,
      I2 => \errorBuf123_out__1\,
      I3 => \lineState_reg_n_0_[2]\,
      I4 => breaken,
      I5 => \lineState_reg_n_0_[1]\,
      O => \keys[3]_i_3_n_0\
    );
\keys[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \lineState_reg_n_0_[2]\,
      I1 => \lineState_reg_n_0_[1]\,
      I2 => \lineState_reg_n_0_[0]\,
      O => \keys[3]_i_4_n_0\
    );
\keys_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \keys[0]_i_1_n_0\,
      Q => \keys_reg_n_0_[0]\,
      R => '0'
    );
\keys_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \keys[1]_i_1_n_0\,
      Q => \keys_reg_n_0_[1]\,
      R => '0'
    );
\keys_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \keys[2]_i_1_n_0\,
      Q => \keys_reg_n_0_[2]\,
      R => '0'
    );
\keys_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \keys[3]_i_1_n_0\,
      Q => \keys_reg_n_0_[3]\,
      R => '0'
    );
\keysout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \keys_reg_n_0_[0]\,
      I1 => keysen(0),
      O => keysout(0)
    );
\keysout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \keys_reg_n_0_[1]\,
      I1 => keysen(1),
      O => keysout(1)
    );
\keysout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \keys_reg_n_0_[2]\,
      I1 => keysen(2),
      O => keysout(2)
    );
\keysout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \keys_reg_n_0_[3]\,
      I1 => keysen(3),
      O => keysout(3)
    );
linePrBuf_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => linepren,
      I1 => \linePrBuf__0\,
      I2 => breaken,
      I3 => \errorBuf123_out__1\,
      I4 => \^lineprbuf_reg_0\,
      O => linePrBuf_i_1_n_0
    );
linePrBuf_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => er0in,
      I1 => errorBuf,
      I2 => ready,
      I3 => \^lineprbuf_reg_0\,
      O => \errorBuf123_out__1\
    );
linePrBuf_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0000000B300000"
    )
        port map (
      I0 => \linePrBuf1__0\,
      I1 => \lineState_reg_n_0_[2]\,
      I2 => keysel(0),
      I3 => keysel(1),
      I4 => linepren,
      I5 => \lineState_reg_n_0_[1]\,
      O => linePrBuf_i_4_n_0
    );
linePrBuf_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0062000000000000"
    )
        port map (
      I0 => \lineState_reg_n_0_[2]\,
      I1 => \lineState_reg_n_0_[1]\,
      I2 => \linePrBuf1__0\,
      I3 => keysel(1),
      I4 => keysel(0),
      I5 => linepren,
      O => linePrBuf_i_5_n_0
    );
linePrBuf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => linePrBuf_i_1_n_0,
      Q => \^lineprbuf_reg_0\,
      R => reset
    );
linePrBuf_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => linePrBuf_i_4_n_0,
      I1 => linePrBuf_i_5_n_0,
      O => \linePrBuf__0\,
      S => \lineState_reg_n_0_[0]\
    );
\lineState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \lineState_reg_n_0_[0]\,
      I1 => \lineState[2]_i_2_n_0\,
      I2 => \lineState[0]_i_2_n_0\,
      I3 => \lineState[2]_i_4_n_0\,
      O => \lineState[0]_i_1_n_0\
    );
\lineState[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FF000020002000"
    )
        port map (
      I0 => keysel(1),
      I1 => keysel(0),
      I2 => \lineState_reg_n_0_[1]\,
      I3 => \errorBuf123_out__1\,
      I4 => \lineState_reg_n_0_[0]\,
      I5 => \lineState_reg_n_0_[2]\,
      O => \lineState[0]_i_2_n_0\
    );
\lineState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \lineState_reg_n_0_[1]\,
      I1 => \lineState[2]_i_2_n_0\,
      I2 => \lineState[1]_i_2_n_0\,
      I3 => \lineState[2]_i_4_n_0\,
      O => \lineState[1]_i_1_n_0\
    );
\lineState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"041B0F0500FFFFFF"
    )
        port map (
      I0 => \lineState_reg_n_0_[0]\,
      I1 => keysel(0),
      I2 => keysel(1),
      I3 => \lineState_reg_n_0_[2]\,
      I4 => \lineState_reg_n_0_[1]\,
      I5 => \errorBuf123_out__1\,
      O => \lineState[1]_i_2_n_0\
    );
\lineState[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \lineState_reg_n_0_[2]\,
      I1 => \lineState[2]_i_2_n_0\,
      I2 => \lineState[2]_i_3_n_0\,
      I3 => \lineState[2]_i_4_n_0\,
      O => \lineState[2]_i_1_n_0\
    );
\lineState[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \lineState[2]_i_5_n_0\,
      I1 => \errorBuf123_out__1\,
      I2 => \lineState[2]_i_6_n_0\,
      I3 => breaken,
      O => \lineState[2]_i_2_n_0\
    );
\lineState[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11FF180018000000"
    )
        port map (
      I0 => \lineState_reg_n_0_[0]\,
      I1 => keysel(1),
      I2 => keysel(0),
      I3 => \errorBuf123_out__1\,
      I4 => \lineState_reg_n_0_[1]\,
      I5 => \lineState_reg_n_0_[2]\,
      O => \lineState[2]_i_3_n_0\
    );
\lineState[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABBB"
    )
        port map (
      I0 => reset,
      I1 => breaken,
      I2 => softshutdownen,
      I3 => \start1__7\,
      I4 => \errorBuf123_out__1\,
      O => \lineState[2]_i_4_n_0\
    );
\lineState[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A282828"
    )
        port map (
      I0 => \lineState_reg_n_0_[2]\,
      I1 => \lineState_reg_n_0_[1]\,
      I2 => \lineState_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => isdeadtimeok,
      O => \lineState[2]_i_5_n_0\
    );
\lineState[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDEFF54AADAAFDEF"
    )
        port map (
      I0 => \lineState_reg_n_0_[0]\,
      I1 => \linePrBuf1__0\,
      I2 => \lineState_reg_n_0_[2]\,
      I3 => \lineState_reg_n_0_[1]\,
      I4 => keysel(1),
      I5 => keysel(0),
      O => \lineState[2]_i_6_n_0\
    );
\lineState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \lineState[0]_i_1_n_0\,
      Q => \lineState_reg_n_0_[0]\,
      R => '0'
    );
\lineState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \lineState[1]_i_1_n_0\,
      Q => \lineState_reg_n_0_[1]\,
      R => '0'
    );
\lineState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \lineState[2]_i_1_n_0\,
      Q => \lineState_reg_n_0_[2]\,
      R => '0'
    );
softshutdownpr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => \errorBuf123_out__1\,
      I1 => softshutdownen,
      I2 => breaken,
      I3 => \^softshutdownpr\,
      O => softshutdownpr_i_1_n_0
    );
softshutdownpr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => softshutdownpr_i_1_n_0,
      Q => \^softshutdownpr\,
      R => reset
    );
start1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => start1_carry_n_0,
      CO(2) => start1_carry_n_1,
      CO(1) => start1_carry_n_2,
      CO(0) => start1_carry_n_3,
      CYINIT => '0',
      DI(3) => start1_carry_i_1_n_0,
      DI(2) => start1_carry_i_2_n_0,
      DI(1) => start1_carry_i_3_n_0,
      DI(0) => start1_carry_i_4_n_0,
      O(3 downto 0) => NLW_start1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => start1_carry_i_5_n_0,
      S(2) => start1_carry_i_6_n_0,
      S(1) => start1_carry_i_7_n_0,
      S(0) => start1_carry_i_8_n_0
    );
\start1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => start1_carry_n_0,
      CO(3) => \start1__7\,
      CO(2) => \start1_carry__0_n_1\,
      CO(1) => \start1_carry__0_n_2\,
      CO(0) => \start1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \start1_carry_i_1__0_n_0\,
      DI(2) => \start1_carry_i_2__0_n_0\,
      DI(1) => \start1_carry_i_3__0_n_0\,
      DI(0) => \start1_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_start1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \start1_carry_i_5__0_n_0\,
      S(2) => \start1_carry_i_6__0_n_0\,
      S(1) => \start1_carry_i_7__0_n_0\,
      S(0) => \start1_carry_i_8__0_n_0\
    );
start1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(6),
      I1 => cntsoftsd_reg(6),
      I2 => cntsoftsd_reg(7),
      I3 => softshutdowntimer(7),
      O => start1_carry_i_1_n_0
    );
\start1_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(14),
      I1 => cntsoftsd_reg(14),
      I2 => cntsoftsd_reg(15),
      I3 => softshutdowntimer(15),
      O => \start1_carry_i_1__0_n_0\
    );
start1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(4),
      I1 => cntsoftsd_reg(4),
      I2 => cntsoftsd_reg(5),
      I3 => softshutdowntimer(5),
      O => start1_carry_i_2_n_0
    );
\start1_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(12),
      I1 => cntsoftsd_reg(12),
      I2 => cntsoftsd_reg(13),
      I3 => softshutdowntimer(13),
      O => \start1_carry_i_2__0_n_0\
    );
start1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(2),
      I1 => cntsoftsd_reg(2),
      I2 => cntsoftsd_reg(3),
      I3 => softshutdowntimer(3),
      O => start1_carry_i_3_n_0
    );
\start1_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(10),
      I1 => cntsoftsd_reg(10),
      I2 => cntsoftsd_reg(11),
      I3 => softshutdowntimer(11),
      O => \start1_carry_i_3__0_n_0\
    );
start1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(0),
      I1 => cntsoftsd_reg(0),
      I2 => cntsoftsd_reg(1),
      I3 => softshutdowntimer(1),
      O => start1_carry_i_4_n_0
    );
\start1_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => softshutdowntimer(8),
      I1 => cntsoftsd_reg(8),
      I2 => cntsoftsd_reg(9),
      I3 => softshutdowntimer(9),
      O => \start1_carry_i_4__0_n_0\
    );
start1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(6),
      I1 => cntsoftsd_reg(6),
      I2 => softshutdowntimer(7),
      I3 => cntsoftsd_reg(7),
      O => start1_carry_i_5_n_0
    );
\start1_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(14),
      I1 => cntsoftsd_reg(14),
      I2 => softshutdowntimer(15),
      I3 => cntsoftsd_reg(15),
      O => \start1_carry_i_5__0_n_0\
    );
start1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(4),
      I1 => cntsoftsd_reg(4),
      I2 => softshutdowntimer(5),
      I3 => cntsoftsd_reg(5),
      O => start1_carry_i_6_n_0
    );
\start1_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(12),
      I1 => cntsoftsd_reg(12),
      I2 => softshutdowntimer(13),
      I3 => cntsoftsd_reg(13),
      O => \start1_carry_i_6__0_n_0\
    );
start1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(2),
      I1 => cntsoftsd_reg(2),
      I2 => softshutdowntimer(3),
      I3 => cntsoftsd_reg(3),
      O => start1_carry_i_7_n_0
    );
\start1_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(10),
      I1 => cntsoftsd_reg(10),
      I2 => softshutdowntimer(11),
      I3 => cntsoftsd_reg(11),
      O => \start1_carry_i_7__0_n_0\
    );
start1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(0),
      I1 => cntsoftsd_reg(0),
      I2 => softshutdowntimer(1),
      I3 => cntsoftsd_reg(1),
      O => start1_carry_i_8_n_0
    );
\start1_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => softshutdowntimer(8),
      I1 => cntsoftsd_reg(8),
      I2 => softshutdowntimer(9),
      I3 => cntsoftsd_reg(9),
      O => \start1_carry_i_8__0_n_0\
    );
start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38FF3800"
    )
        port map (
      I0 => \lineState_reg_n_0_[2]\,
      I1 => \lineState_reg_n_0_[0]\,
      I2 => \lineState_reg_n_0_[1]\,
      I3 => start_i_2_n_0,
      I4 => \^start\,
      O => start_i_1_n_0
    );
start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => start3_in,
      I1 => softshutdownen,
      I2 => \start1__7\,
      I3 => \errorBuf123_out__1\,
      I4 => start_i_4_n_0,
      I5 => breaken,
      O => start_i_2_n_0
    );
start_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAA2A"
    )
        port map (
      I0 => \lineState_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => isdeadtimeok,
      I3 => \lineState_reg_n_0_[1]\,
      I4 => \lineState_reg_n_0_[0]\,
      O => start3_in
    );
start_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01FFF1F160F16FF"
    )
        port map (
      I0 => keysel(1),
      I1 => keysel(0),
      I2 => \lineState_reg_n_0_[2]\,
      I3 => \lineState_reg_n_0_[1]\,
      I4 => \linePrBuf1__0\,
      I5 => \lineState_reg_n_0_[0]\,
      O => start_i_4_n_0
    );
start_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => isdeadtimeok,
      O => \linePrBuf1__0\
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_i_1_n_0,
      Q => \^start\,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_KeyControllerP0N_ver_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TransistorKeys_KeyControllerP0N_ver_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TransistorKeys_KeyControllerP0N_ver_0_1 : entity is "design_1_KeyControllerP0N_ver_0_0,KeyControllerP0N_ver_2_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TransistorKeys_KeyControllerP0N_ver_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TransistorKeys_KeyControllerP0N_ver_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TransistorKeys_KeyControllerP0N_ver_0_1 : entity is "KeyControllerP0N_ver_2_0,Vivado 2019.1";
end TransistorKeys_KeyControllerP0N_ver_0_1;

architecture STRUCTURE of TransistorKeys_KeyControllerP0N_ver_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.TransistorKeys_KeyControllerP0N_ver_0_1_KeyControllerP0N_ver_2_0
     port map (
      breaken => breaken,
      clk => clk,
      er0in => er0in,
      isdeadtimeok => isdeadtimeok,
      keysel(1 downto 0) => keysel(1 downto 0),
      keysen(3 downto 0) => keysen(3 downto 0),
      keysout(3 downto 0) => keysout(3 downto 0),
      linePrBuf_reg_0 => linepr,
      linepren => linepren,
      ob(1 downto 0) => ob(1 downto 0),
      ready => ready,
      reset => reset,
      softshutdownen => softshutdownen,
      softshutdownpr => softshutdownpr,
      softshutdowntimer(15 downto 0) => softshutdowntimer(15 downto 0),
      start => start
    );
end STRUCTURE;
