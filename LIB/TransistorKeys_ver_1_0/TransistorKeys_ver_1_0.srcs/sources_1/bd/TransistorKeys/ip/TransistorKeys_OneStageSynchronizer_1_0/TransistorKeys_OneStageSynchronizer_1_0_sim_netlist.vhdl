-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Oct 22 12:35:07 2026
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TransistorKeys_OneStageSynchronizer_1_0 -prefix
--               TransistorKeys_OneStageSynchronizer_1_0_ design_1_OneStageSynchronizer_0_1_sim_netlist.vhdl
-- Design      : design_1_OneStageSynchronizer_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_OneStageSynchronizer_1_0_OneStageSynchronizerAndDigitalFilterBlock_ver_1_0 is
  port (
    sync_signal : out STD_LOGIC_VECTOR ( 7 downto 0 );
    async_signal : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
end TransistorKeys_OneStageSynchronizer_1_0_OneStageSynchronizerAndDigitalFilterBlock_ver_1_0;

architecture STRUCTURE of TransistorKeys_OneStageSynchronizer_1_0_OneStageSynchronizerAndDigitalFilterBlock_ver_1_0 is
  signal \cntBuf[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \cntBuf_reg[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntBuf_reg[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntBuf_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntBuf_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntBuf_reg[4]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntBuf_reg[5]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntBuf_reg[6]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntBuf_reg[7]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \latchBuf_reg[0]_7\ : STD_LOGIC;
  signal \latchBuf_reg[1]_6\ : STD_LOGIC;
  signal \latchBuf_reg[2]_5\ : STD_LOGIC;
  signal \latchBuf_reg[3]_4\ : STD_LOGIC;
  signal \latchBuf_reg[4]_3\ : STD_LOGIC;
  signal \latchBuf_reg[5]_2\ : STD_LOGIC;
  signal \latchBuf_reg[6]_1\ : STD_LOGIC;
  signal \latchBuf_reg[7]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal \^sync_signal\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sync_signal[0]_i_1_n_0\ : STD_LOGIC;
  signal \sync_signal[1]_i_1_n_0\ : STD_LOGIC;
  signal \sync_signal[2]_i_1_n_0\ : STD_LOGIC;
  signal \sync_signal[3]_i_1_n_0\ : STD_LOGIC;
  signal \sync_signal[4]_i_1_n_0\ : STD_LOGIC;
  signal \sync_signal[5]_i_1_n_0\ : STD_LOGIC;
  signal \sync_signal[6]_i_1_n_0\ : STD_LOGIC;
  signal \sync_signal[7]_i_1_n_0\ : STD_LOGIC;
  signal \sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cntBuf[0][0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cntBuf[0][1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cntBuf[0][2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cntBuf[1][0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cntBuf[1][1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cntBuf[1][2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cntBuf[2][0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cntBuf[2][1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cntBuf[2][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cntBuf[3][0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cntBuf[3][1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cntBuf[3][2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cntBuf[4][0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cntBuf[4][1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cntBuf[4][2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cntBuf[5][0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cntBuf[5][1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cntBuf[5][2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cntBuf[6][0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cntBuf[6][1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cntBuf[6][2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cntBuf[7][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cntBuf[7][1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cntBuf[7][2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sync_signal[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sync_signal[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sync_signal[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sync_signal[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sync_signal[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sync_signal[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sync_signal[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sync_signal[7]_i_1\ : label is "soft_lutpair15";
begin
  sync_signal(7 downto 0) <= \^sync_signal\(7 downto 0);
\cntBuf[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[0]\(0),
      I1 => \cntBuf_reg[0]\(2),
      I2 => \latchBuf_reg[0]_7\,
      I3 => \sync_stage1_reg_n_0_[0]\,
      O => \cntBuf[0][0]_i_1_n_0\
    );
\cntBuf[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[0]\(2),
      I1 => \cntBuf_reg[0]\(0),
      I2 => \cntBuf_reg[0]\(1),
      I3 => \latchBuf_reg[0]_7\,
      I4 => \sync_stage1_reg_n_0_[0]\,
      O => \cntBuf[0][1]_i_1_n_0\
    );
\cntBuf[0][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[0]\(2),
      I1 => \cntBuf_reg[0]\(0),
      I2 => \cntBuf_reg[0]\(1),
      I3 => \latchBuf_reg[0]_7\,
      I4 => \sync_stage1_reg_n_0_[0]\,
      O => \cntBuf[0][2]_i_1_n_0\
    );
\cntBuf[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[1]\(0),
      I1 => \cntBuf_reg[1]\(2),
      I2 => \latchBuf_reg[1]_6\,
      I3 => p_0_in17_in,
      O => \cntBuf[1][0]_i_1_n_0\
    );
\cntBuf[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[1]\(2),
      I1 => \cntBuf_reg[1]\(0),
      I2 => \cntBuf_reg[1]\(1),
      I3 => \latchBuf_reg[1]_6\,
      I4 => p_0_in17_in,
      O => \cntBuf[1][1]_i_1_n_0\
    );
\cntBuf[1][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[1]\(2),
      I1 => \cntBuf_reg[1]\(0),
      I2 => \cntBuf_reg[1]\(1),
      I3 => \latchBuf_reg[1]_6\,
      I4 => p_0_in17_in,
      O => \cntBuf[1][2]_i_1_n_0\
    );
\cntBuf[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[2]\(0),
      I1 => \cntBuf_reg[2]\(2),
      I2 => \latchBuf_reg[2]_5\,
      I3 => p_0_in14_in,
      O => \cntBuf[2][0]_i_1_n_0\
    );
\cntBuf[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[2]\(2),
      I1 => \cntBuf_reg[2]\(0),
      I2 => \cntBuf_reg[2]\(1),
      I3 => \latchBuf_reg[2]_5\,
      I4 => p_0_in14_in,
      O => \cntBuf[2][1]_i_1_n_0\
    );
\cntBuf[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[2]\(2),
      I1 => \cntBuf_reg[2]\(0),
      I2 => \cntBuf_reg[2]\(1),
      I3 => \latchBuf_reg[2]_5\,
      I4 => p_0_in14_in,
      O => \cntBuf[2][2]_i_1_n_0\
    );
\cntBuf[3][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[3]\(0),
      I1 => \cntBuf_reg[3]\(2),
      I2 => \latchBuf_reg[3]_4\,
      I3 => p_0_in11_in,
      O => \cntBuf[3][0]_i_1_n_0\
    );
\cntBuf[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[3]\(2),
      I1 => \cntBuf_reg[3]\(0),
      I2 => \cntBuf_reg[3]\(1),
      I3 => \latchBuf_reg[3]_4\,
      I4 => p_0_in11_in,
      O => \cntBuf[3][1]_i_1_n_0\
    );
\cntBuf[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[3]\(2),
      I1 => \cntBuf_reg[3]\(0),
      I2 => \cntBuf_reg[3]\(1),
      I3 => \latchBuf_reg[3]_4\,
      I4 => p_0_in11_in,
      O => \cntBuf[3][2]_i_1_n_0\
    );
\cntBuf[4][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[4]\(0),
      I1 => \cntBuf_reg[4]\(2),
      I2 => \latchBuf_reg[4]_3\,
      I3 => p_0_in8_in,
      O => \cntBuf[4][0]_i_1_n_0\
    );
\cntBuf[4][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[4]\(2),
      I1 => \cntBuf_reg[4]\(0),
      I2 => \cntBuf_reg[4]\(1),
      I3 => \latchBuf_reg[4]_3\,
      I4 => p_0_in8_in,
      O => \cntBuf[4][1]_i_1_n_0\
    );
\cntBuf[4][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[4]\(2),
      I1 => \cntBuf_reg[4]\(0),
      I2 => \cntBuf_reg[4]\(1),
      I3 => \latchBuf_reg[4]_3\,
      I4 => p_0_in8_in,
      O => \cntBuf[4][2]_i_1_n_0\
    );
\cntBuf[5][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[5]\(0),
      I1 => \cntBuf_reg[5]\(2),
      I2 => \latchBuf_reg[5]_2\,
      I3 => p_0_in5_in,
      O => \cntBuf[5][0]_i_1_n_0\
    );
\cntBuf[5][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[5]\(2),
      I1 => \cntBuf_reg[5]\(0),
      I2 => \cntBuf_reg[5]\(1),
      I3 => \latchBuf_reg[5]_2\,
      I4 => p_0_in5_in,
      O => \cntBuf[5][1]_i_1_n_0\
    );
\cntBuf[5][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[5]\(2),
      I1 => \cntBuf_reg[5]\(0),
      I2 => \cntBuf_reg[5]\(1),
      I3 => \latchBuf_reg[5]_2\,
      I4 => p_0_in5_in,
      O => \cntBuf[5][2]_i_1_n_0\
    );
\cntBuf[6][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[6]\(0),
      I1 => \cntBuf_reg[6]\(2),
      I2 => \latchBuf_reg[6]_1\,
      I3 => p_0_in2_in,
      O => \cntBuf[6][0]_i_1_n_0\
    );
\cntBuf[6][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[6]\(2),
      I1 => \cntBuf_reg[6]\(0),
      I2 => \cntBuf_reg[6]\(1),
      I3 => \latchBuf_reg[6]_1\,
      I4 => p_0_in2_in,
      O => \cntBuf[6][1]_i_1_n_0\
    );
\cntBuf[6][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[6]\(2),
      I1 => \cntBuf_reg[6]\(0),
      I2 => \cntBuf_reg[6]\(1),
      I3 => \latchBuf_reg[6]_1\,
      I4 => p_0_in2_in,
      O => \cntBuf[6][2]_i_1_n_0\
    );
\cntBuf[7][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \cntBuf_reg[7]\(0),
      I1 => \cntBuf_reg[7]\(2),
      I2 => \latchBuf_reg[7]_0\,
      I3 => p_0_in,
      O => \cntBuf[7][0]_i_1_n_0\
    );
\cntBuf[7][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000014"
    )
        port map (
      I0 => \cntBuf_reg[7]\(2),
      I1 => \cntBuf_reg[7]\(0),
      I2 => \cntBuf_reg[7]\(1),
      I3 => \latchBuf_reg[7]_0\,
      I4 => p_0_in,
      O => \cntBuf[7][1]_i_1_n_0\
    );
\cntBuf[7][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000040"
    )
        port map (
      I0 => \cntBuf_reg[7]\(2),
      I1 => \cntBuf_reg[7]\(0),
      I2 => \cntBuf_reg[7]\(1),
      I3 => \latchBuf_reg[7]_0\,
      I4 => p_0_in,
      O => \cntBuf[7][2]_i_1_n_0\
    );
\cntBuf_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[0][0]_i_1_n_0\,
      Q => \cntBuf_reg[0]\(0),
      R => '0'
    );
\cntBuf_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[0][1]_i_1_n_0\,
      Q => \cntBuf_reg[0]\(1),
      R => '0'
    );
\cntBuf_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[0][2]_i_1_n_0\,
      Q => \cntBuf_reg[0]\(2),
      R => '0'
    );
\cntBuf_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[1][0]_i_1_n_0\,
      Q => \cntBuf_reg[1]\(0),
      R => '0'
    );
\cntBuf_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[1][1]_i_1_n_0\,
      Q => \cntBuf_reg[1]\(1),
      R => '0'
    );
\cntBuf_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[1][2]_i_1_n_0\,
      Q => \cntBuf_reg[1]\(2),
      R => '0'
    );
\cntBuf_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[2][0]_i_1_n_0\,
      Q => \cntBuf_reg[2]\(0),
      R => '0'
    );
\cntBuf_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[2][1]_i_1_n_0\,
      Q => \cntBuf_reg[2]\(1),
      R => '0'
    );
\cntBuf_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[2][2]_i_1_n_0\,
      Q => \cntBuf_reg[2]\(2),
      R => '0'
    );
\cntBuf_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[3][0]_i_1_n_0\,
      Q => \cntBuf_reg[3]\(0),
      R => '0'
    );
\cntBuf_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[3][1]_i_1_n_0\,
      Q => \cntBuf_reg[3]\(1),
      R => '0'
    );
\cntBuf_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[3][2]_i_1_n_0\,
      Q => \cntBuf_reg[3]\(2),
      R => '0'
    );
\cntBuf_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[4][0]_i_1_n_0\,
      Q => \cntBuf_reg[4]\(0),
      R => '0'
    );
\cntBuf_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[4][1]_i_1_n_0\,
      Q => \cntBuf_reg[4]\(1),
      R => '0'
    );
\cntBuf_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[4][2]_i_1_n_0\,
      Q => \cntBuf_reg[4]\(2),
      R => '0'
    );
\cntBuf_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[5][0]_i_1_n_0\,
      Q => \cntBuf_reg[5]\(0),
      R => '0'
    );
\cntBuf_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[5][1]_i_1_n_0\,
      Q => \cntBuf_reg[5]\(1),
      R => '0'
    );
\cntBuf_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[5][2]_i_1_n_0\,
      Q => \cntBuf_reg[5]\(2),
      R => '0'
    );
\cntBuf_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[6][0]_i_1_n_0\,
      Q => \cntBuf_reg[6]\(0),
      R => '0'
    );
\cntBuf_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[6][1]_i_1_n_0\,
      Q => \cntBuf_reg[6]\(1),
      R => '0'
    );
\cntBuf_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[6][2]_i_1_n_0\,
      Q => \cntBuf_reg[6]\(2),
      R => '0'
    );
\cntBuf_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[7][0]_i_1_n_0\,
      Q => \cntBuf_reg[7]\(0),
      R => '0'
    );
\cntBuf_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[7][1]_i_1_n_0\,
      Q => \cntBuf_reg[7]\(1),
      R => '0'
    );
\cntBuf_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cntBuf[7][2]_i_1_n_0\,
      Q => \cntBuf_reg[7]\(2),
      R => '0'
    );
\latchBuf_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \sync_stage1_reg_n_0_[0]\,
      Q => \latchBuf_reg[0]_7\,
      R => '0'
    );
\latchBuf_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in17_in,
      Q => \latchBuf_reg[1]_6\,
      R => '0'
    );
\latchBuf_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in14_in,
      Q => \latchBuf_reg[2]_5\,
      R => '0'
    );
\latchBuf_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in11_in,
      Q => \latchBuf_reg[3]_4\,
      R => '0'
    );
\latchBuf_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in8_in,
      Q => \latchBuf_reg[4]_3\,
      R => '0'
    );
\latchBuf_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in5_in,
      Q => \latchBuf_reg[5]_2\,
      R => '0'
    );
\latchBuf_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in2_in,
      Q => \latchBuf_reg[6]_1\,
      R => '0'
    );
\latchBuf_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => \latchBuf_reg[7]_0\,
      R => '0'
    );
\sync_signal[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(0),
      I1 => \latchBuf_reg[0]_7\,
      I2 => \cntBuf_reg[0]\(2),
      I3 => \sync_stage1_reg_n_0_[0]\,
      O => \sync_signal[0]_i_1_n_0\
    );
\sync_signal[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(1),
      I1 => \latchBuf_reg[1]_6\,
      I2 => \cntBuf_reg[1]\(2),
      I3 => p_0_in17_in,
      O => \sync_signal[1]_i_1_n_0\
    );
\sync_signal[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(2),
      I1 => \latchBuf_reg[2]_5\,
      I2 => \cntBuf_reg[2]\(2),
      I3 => p_0_in14_in,
      O => \sync_signal[2]_i_1_n_0\
    );
\sync_signal[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(3),
      I1 => \latchBuf_reg[3]_4\,
      I2 => \cntBuf_reg[3]\(2),
      I3 => p_0_in11_in,
      O => \sync_signal[3]_i_1_n_0\
    );
\sync_signal[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(4),
      I1 => \latchBuf_reg[4]_3\,
      I2 => \cntBuf_reg[4]\(2),
      I3 => p_0_in8_in,
      O => \sync_signal[4]_i_1_n_0\
    );
\sync_signal[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(5),
      I1 => \latchBuf_reg[5]_2\,
      I2 => \cntBuf_reg[5]\(2),
      I3 => p_0_in5_in,
      O => \sync_signal[5]_i_1_n_0\
    );
\sync_signal[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(6),
      I1 => \latchBuf_reg[6]_1\,
      I2 => \cntBuf_reg[6]\(2),
      I3 => p_0_in2_in,
      O => \sync_signal[6]_i_1_n_0\
    );
\sync_signal[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA8A"
    )
        port map (
      I0 => \^sync_signal\(7),
      I1 => \latchBuf_reg[7]_0\,
      I2 => \cntBuf_reg[7]\(2),
      I3 => p_0_in,
      O => \sync_signal[7]_i_1_n_0\
    );
\sync_signal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[0]_i_1_n_0\,
      Q => \^sync_signal\(0),
      R => '0'
    );
\sync_signal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[1]_i_1_n_0\,
      Q => \^sync_signal\(1),
      R => '0'
    );
\sync_signal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[2]_i_1_n_0\,
      Q => \^sync_signal\(2),
      R => '0'
    );
\sync_signal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[3]_i_1_n_0\,
      Q => \^sync_signal\(3),
      R => '0'
    );
\sync_signal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[4]_i_1_n_0\,
      Q => \^sync_signal\(4),
      R => '0'
    );
\sync_signal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[5]_i_1_n_0\,
      Q => \^sync_signal\(5),
      R => '0'
    );
\sync_signal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[6]_i_1_n_0\,
      Q => \^sync_signal\(6),
      R => '0'
    );
\sync_signal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_signal[7]_i_1_n_0\,
      Q => \^sync_signal\(7),
      R => '0'
    );
\sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(0),
      Q => \sync_stage1_reg_n_0_[0]\,
      R => '0'
    );
\sync_stage1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(1),
      Q => p_0_in17_in,
      R => '0'
    );
\sync_stage1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(2),
      Q => p_0_in14_in,
      R => '0'
    );
\sync_stage1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(3),
      Q => p_0_in11_in,
      R => '0'
    );
\sync_stage1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(4),
      Q => p_0_in8_in,
      R => '0'
    );
\sync_stage1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(5),
      Q => p_0_in5_in,
      R => '0'
    );
\sync_stage1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(6),
      Q => p_0_in2_in,
      R => '0'
    );
\sync_stage1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => async_signal(7),
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TransistorKeys_OneStageSynchronizer_1_0 is
  port (
    clk : in STD_LOGIC;
    async_signal : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sync_signal : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TransistorKeys_OneStageSynchronizer_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TransistorKeys_OneStageSynchronizer_1_0 : entity is "design_1_OneStageSynchronizer_0_1,OneStageSynchronizerAndDigitalFilterBlock_ver_1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TransistorKeys_OneStageSynchronizer_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TransistorKeys_OneStageSynchronizer_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TransistorKeys_OneStageSynchronizer_1_0 : entity is "OneStageSynchronizerAndDigitalFilterBlock_ver_1_0,Vivado 2019.1";
end TransistorKeys_OneStageSynchronizer_1_0;

architecture STRUCTURE of TransistorKeys_OneStageSynchronizer_1_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
begin
U0: entity work.TransistorKeys_OneStageSynchronizer_1_0_OneStageSynchronizerAndDigitalFilterBlock_ver_1_0
     port map (
      async_signal(7 downto 0) => async_signal(7 downto 0),
      clk => clk,
      sync_signal(7 downto 0) => sync_signal(7 downto 0)
    );
end STRUCTURE;
