-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Jun 11 07:49:57 2021
-- Host        : STAS-W10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Inverter_3lvl_P0N_3lvl_0_5 -prefix
--               Inverter_3lvl_P0N_3lvl_0_5_ Inverter_3lvl_P0N_3lvl_0_4_sim_netlist.vhdl
-- Design      : Inverter_3lvl_P0N_3lvl_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Inverter_3lvl_P0N_3lvl_0_5_P0N_3lvl is
  port (
    minTimeEr_reg_0 : out STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC;
    reset : in STD_LOGIC;
    externalCLK : in STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    er : in STD_LOGIC;
    ready : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end Inverter_3lvl_P0N_3lvl_0_5_P0N_3lvl;

architecture STRUCTURE of Inverter_3lvl_P0N_3lvl_0_5_P0N_3lvl is
  signal \FSM_onehot_lineconfig[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig[6]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_lineconfig_reg_n_0_[6]\ : STD_LOGIC;
  signal PWM_out_0_i_1_n_0 : STD_LOGIC;
  signal PWM_out_1_i_1_n_0 : STD_LOGIC;
  signal PWM_out_2_i_1_n_0 : STD_LOGIC;
  signal PWM_out_3_i_1_n_0 : STD_LOGIC;
  signal TKin0_triggered : STD_LOGIC;
  signal TKin0_triggered28_out : STD_LOGIC;
  signal TKin0_triggered_i_1_n_0 : STD_LOGIC;
  signal TKin1_triggered : STD_LOGIC;
  signal TKin1_triggered_i_1_n_0 : STD_LOGIC;
  signal \TimeCounter[0]_i_2_n_0\ : STD_LOGIC;
  signal TimeCounter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \TimeCounter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCounter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \TimeCounter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \TimeCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal deadTimeCounterReset_i_1_n_0 : STD_LOGIC;
  signal deadTimeCounterReset_i_2_n_0 : STD_LOGIC;
  signal deadTimeCounterReset_i_3_n_0 : STD_LOGIC;
  signal deadTimeCounterReset_i_4_n_0 : STD_LOGIC;
  signal deadTimeCounterReset_i_5_n_0 : STD_LOGIC;
  signal deadTimeCounterReset_i_6_n_0 : STD_LOGIC;
  signal deadTimeCounterReset_i_7_n_0 : STD_LOGIC;
  signal deadTimeCounterReset_reg_n_0 : STD_LOGIC;
  signal deadTimeOK : STD_LOGIC;
  signal deadTimeOK_i_1_n_0 : STD_LOGIC;
  signal key1_i_1_n_0 : STD_LOGIC;
  signal key1_i_2_n_0 : STD_LOGIC;
  signal key1_prev : STD_LOGIC;
  signal key1_reg_n_0 : STD_LOGIC;
  signal key2_i_2_n_0 : STD_LOGIC;
  signal key2_prev : STD_LOGIC;
  signal key2_reg_n_0 : STD_LOGIC;
  signal key3 : STD_LOGIC;
  signal key3_i_1_n_0 : STD_LOGIC;
  signal key3_prev : STD_LOGIC;
  signal key3_reg_n_0 : STD_LOGIC;
  signal key4_i_1_n_0 : STD_LOGIC;
  signal key4_prev : STD_LOGIC;
  signal key4_reg_n_0 : STD_LOGIC;
  signal \ltOp__15_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp__15_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp__15_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp__15_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp__15_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry__2_n_1\ : STD_LOGIC;
  signal \ltOp__15_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp__15_carry__2_n_3\ : STD_LOGIC;
  signal \ltOp__15_carry_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_n_0\ : STD_LOGIC;
  signal \ltOp__15_carry_n_1\ : STD_LOGIC;
  signal \ltOp__15_carry_n_2\ : STD_LOGIC;
  signal \ltOp__15_carry_n_3\ : STD_LOGIC;
  signal \ltOp__31_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp__31_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp__31_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp__31_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp__31_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp__31_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp__31_carry__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry__2_n_1\ : STD_LOGIC;
  signal \ltOp__31_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp__31_carry__2_n_3\ : STD_LOGIC;
  signal \ltOp__31_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_6__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_7__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_8__2_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_n_0\ : STD_LOGIC;
  signal \ltOp__31_carry_n_1\ : STD_LOGIC;
  signal \ltOp__31_carry_n_2\ : STD_LOGIC;
  signal \ltOp__31_carry_n_3\ : STD_LOGIC;
  signal \ltOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_n_1\ : STD_LOGIC;
  signal \ltOp_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp_carry__2_n_3\ : STD_LOGIC;
  signal ltOp_carry_i_1_n_0 : STD_LOGIC;
  signal ltOp_carry_i_2_n_0 : STD_LOGIC;
  signal ltOp_carry_i_3_n_0 : STD_LOGIC;
  signal ltOp_carry_i_4_n_0 : STD_LOGIC;
  signal ltOp_carry_i_5_n_0 : STD_LOGIC;
  signal ltOp_carry_i_6_n_0 : STD_LOGIC;
  signal ltOp_carry_i_7_n_0 : STD_LOGIC;
  signal ltOp_carry_i_8_n_0 : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal minTimeCounter_high : STD_LOGIC;
  signal \minTimeCounter_high[0]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high[0]_i_4_n_0\ : STD_LOGIC;
  signal minTimeCounter_high_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \minTimeCounter_high_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_high_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal minTimeCounter_low : STD_LOGIC;
  signal \minTimeCounter_low[0]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low[0]_i_4_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low[0]_i_5_n_0\ : STD_LOGIC;
  signal minTimeCounter_low_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \minTimeCounter_low_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \minTimeCounter_low_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal minTimeEr_i_1_n_0 : STD_LOGIC;
  signal minTimeEr_i_2_n_0 : STD_LOGIC;
  signal minTimeEr_i_3_n_0 : STD_LOGIC;
  signal minTimeEr_i_4_n_0 : STD_LOGIC;
  signal minTimeEr_i_5_n_0 : STD_LOGIC;
  signal minTimeEr_i_6_n_0 : STD_LOGIC;
  signal minTimeEr_i_7_n_0 : STD_LOGIC;
  signal minTimeEr_i_8_n_0 : STD_LOGIC;
  signal minTimeEr_i_9_n_0 : STD_LOGIC;
  signal \^mintimeer_reg_0\ : STD_LOGIC;
  signal minTimeOK_high : STD_LOGIC;
  signal minTimeOK_high_i_1_n_0 : STD_LOGIC;
  signal minTimeOK_low : STD_LOGIC;
  signal minTimeOK_low_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \NLW_TimeCounter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ltOp__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__15_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__15_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__31_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__31_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__31_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__31_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minTimeCounter_high_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minTimeCounter_low_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_lineconfig[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_lineconfig[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_lineconfig[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_lineconfig[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_lineconfig[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_lineconfig[6]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_lineconfig[6]_i_6\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_lineconfig_reg[0]\ : label is "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_lineconfig_reg[1]\ : label is "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_lineconfig_reg[2]\ : label is "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_lineconfig_reg[3]\ : label is "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_lineconfig_reg[4]\ : label is "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_lineconfig_reg[5]\ : label is "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_lineconfig_reg[6]\ : label is "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000";
  attribute SOFT_HLUTNM of PWM_out_0_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of PWM_out_1_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of deadTimeCounterReset_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of deadTimeCounterReset_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of deadTimeCounterReset_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of deadTimeOK_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of key1_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of minTimeEr_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of minTimeEr_i_9 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of minTimeOK_high_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of minTimeOK_low_i_1 : label is "soft_lutpair3";
begin
  minTimeEr_reg_0 <= \^mintimeer_reg_0\;
\FSM_onehot_lineconfig[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I4 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I5 => \FSM_onehot_lineconfig[0]_i_2_n_0\,
      O => \FSM_onehot_lineconfig[0]_i_1_n_0\
    );
\FSM_onehot_lineconfig[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TKin1,
      I1 => TKin0,
      O => \FSM_onehot_lineconfig[0]_i_2_n_0\
    );
\FSM_onehot_lineconfig[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF00000000"
    )
        port map (
      I0 => TKin1,
      I1 => TKin1_triggered,
      I2 => TKin0_triggered,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I4 => \FSM_onehot_lineconfig[5]_i_2_n_0\,
      I5 => TKin0,
      O => \FSM_onehot_lineconfig[1]_i_1_n_0\
    );
\FSM_onehot_lineconfig[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EFEF0F"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I2 => \FSM_onehot_lineconfig[2]_i_2_n_0\,
      I3 => TKin0,
      I4 => TKin1,
      O => \FSM_onehot_lineconfig[2]_i_1_n_0\
    );
\FSM_onehot_lineconfig[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"900990099009FFFF"
    )
        port map (
      I0 => TKin1,
      I1 => TKin1_triggered,
      I2 => TKin0,
      I3 => TKin0_triggered,
      I4 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I5 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      O => \FSM_onehot_lineconfig[2]_i_2_n_0\
    );
\FSM_onehot_lineconfig[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055D50000"
    )
        port map (
      I0 => \FSM_onehot_lineconfig[5]_i_2_n_0\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I2 => TKin1_triggered,
      I3 => TKin0_triggered,
      I4 => TKin1,
      I5 => TKin0,
      O => \FSM_onehot_lineconfig[3]_i_1_n_0\
    );
\FSM_onehot_lineconfig[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2230"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      I1 => TKin0,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I3 => TKin1,
      O => \FSM_onehot_lineconfig[4]_i_1_n_0\
    );
\FSM_onehot_lineconfig[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFF0C0D00050005"
    )
        port map (
      I0 => \FSM_onehot_lineconfig[5]_i_2_n_0\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I2 => TKin1,
      I3 => TKin0,
      I4 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I5 => \FSM_onehot_lineconfig[5]_i_3_n_0\,
      O => \FSM_onehot_lineconfig[5]_i_1_n_0\
    );
\FSM_onehot_lineconfig[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[0]\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[2]\,
      O => \FSM_onehot_lineconfig[5]_i_2_n_0\
    );
\FSM_onehot_lineconfig[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TKin0_triggered,
      I1 => TKin0,
      I2 => TKin1_triggered,
      I3 => TKin1,
      O => \FSM_onehot_lineconfig[5]_i_3_n_0\
    );
\FSM_onehot_lineconfig[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_lineconfig[6]_i_3_n_0\,
      I1 => \FSM_onehot_lineconfig[6]_i_4_n_0\,
      I2 => breaking_en,
      O => \FSM_onehot_lineconfig[6]_i_1_n_0\
    );
\FSM_onehot_lineconfig[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => TKin1,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I2 => TKin0,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      O => \FSM_onehot_lineconfig[6]_i_2_n_0\
    );
\FSM_onehot_lineconfig[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEECAE"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I2 => TKin1,
      I3 => TKin0,
      I4 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      O => \FSM_onehot_lineconfig[6]_i_3_n_0\
    );
\FSM_onehot_lineconfig[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAFFFFAAAA"
    )
        port map (
      I0 => \FSM_onehot_lineconfig[6]_i_5_n_0\,
      I1 => er,
      I2 => ready,
      I3 => \FSM_onehot_lineconfig[6]_i_6_n_0\,
      I4 => deadTimeOK,
      I5 => \FSM_onehot_lineconfig[2]_i_2_n_0\,
      O => \FSM_onehot_lineconfig[6]_i_4_n_0\
    );
\FSM_onehot_lineconfig[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC88A0A8"
    )
        port map (
      I0 => deadTimeOK,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I3 => TKin1,
      I4 => TKin0,
      O => \FSM_onehot_lineconfig[6]_i_5_n_0\
    );
\FSM_onehot_lineconfig[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF232323"
    )
        port map (
      I0 => deadTimeCounterReset_reg_n_0,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[0]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[2]\,
      I3 => TKin1,
      I4 => TKin0,
      O => \FSM_onehot_lineconfig[6]_i_6_n_0\
    );
\FSM_onehot_lineconfig_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => \FSM_onehot_lineconfig[6]_i_1_n_0\,
      D => \FSM_onehot_lineconfig[0]_i_1_n_0\,
      Q => \FSM_onehot_lineconfig_reg_n_0_[0]\,
      S => reset
    );
\FSM_onehot_lineconfig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => \FSM_onehot_lineconfig[6]_i_1_n_0\,
      D => \FSM_onehot_lineconfig[1]_i_1_n_0\,
      Q => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      R => reset
    );
\FSM_onehot_lineconfig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => \FSM_onehot_lineconfig[6]_i_1_n_0\,
      D => \FSM_onehot_lineconfig[2]_i_1_n_0\,
      Q => \FSM_onehot_lineconfig_reg_n_0_[2]\,
      R => reset
    );
\FSM_onehot_lineconfig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => \FSM_onehot_lineconfig[6]_i_1_n_0\,
      D => \FSM_onehot_lineconfig[3]_i_1_n_0\,
      Q => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      R => reset
    );
\FSM_onehot_lineconfig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => \FSM_onehot_lineconfig[6]_i_1_n_0\,
      D => \FSM_onehot_lineconfig[4]_i_1_n_0\,
      Q => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      R => reset
    );
\FSM_onehot_lineconfig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => \FSM_onehot_lineconfig[6]_i_1_n_0\,
      D => \FSM_onehot_lineconfig[5]_i_1_n_0\,
      Q => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      R => reset
    );
\FSM_onehot_lineconfig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => \FSM_onehot_lineconfig[6]_i_1_n_0\,
      D => \FSM_onehot_lineconfig[6]_i_2_n_0\,
      Q => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      R => reset
    );
PWM_out_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => key1_reg_n_0,
      I1 => er,
      I2 => ready,
      I3 => \^mintimeer_reg_0\,
      O => PWM_out_0_i_1_n_0
    );
PWM_out_0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => PWM_out_0_i_1_n_0,
      Q => PWM_out_0,
      R => '0'
    );
PWM_out_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => key2_reg_n_0,
      I1 => er,
      I2 => ready,
      I3 => \^mintimeer_reg_0\,
      O => PWM_out_1_i_1_n_0
    );
PWM_out_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => PWM_out_1_i_1_n_0,
      Q => PWM_out_1,
      R => '0'
    );
PWM_out_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => key3_reg_n_0,
      I1 => \^mintimeer_reg_0\,
      I2 => ready,
      I3 => er,
      I4 => breaking_en,
      O => PWM_out_2_i_1_n_0
    );
PWM_out_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => PWM_out_2_i_1_n_0,
      Q => PWM_out_2,
      R => '0'
    );
PWM_out_3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => key4_reg_n_0,
      I1 => \^mintimeer_reg_0\,
      I2 => ready,
      I3 => er,
      I4 => breaking_en,
      O => PWM_out_3_i_1_n_0
    );
PWM_out_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => PWM_out_3_i_1_n_0,
      Q => PWM_out_3,
      R => '0'
    );
TKin0_triggered_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08FFFFAA080000"
    )
        port map (
      I0 => TKin0,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I2 => TKin1,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      I4 => TKin0_triggered28_out,
      I5 => TKin0_triggered,
      O => TKin0_triggered_i_1_n_0
    );
TKin0_triggered_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => TKin0_triggered_i_1_n_0,
      Q => TKin0_triggered,
      R => '0'
    );
TKin1_triggered_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08FFFFAA080000"
    )
        port map (
      I0 => TKin1,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I2 => TKin0,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      I4 => TKin0_triggered28_out,
      I5 => TKin1_triggered,
      O => TKin1_triggered_i_1_n_0
    );
TKin1_triggered_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22AA22A820AA2020"
    )
        port map (
      I0 => minTimeEr_i_9_n_0,
      I1 => TKin1,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I3 => TKin0,
      I4 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I5 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      O => TKin0_triggered28_out
    );
TKin1_triggered_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => TKin1_triggered_i_1_n_0,
      Q => TKin1_triggered,
      R => '0'
    );
\TimeCounter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeCounter_reg(0),
      O => \TimeCounter[0]_i_2_n_0\
    );
\TimeCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[0]_i_1_n_7\,
      Q => TimeCounter_reg(0),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \TimeCounter_reg[0]_i_1_n_0\,
      CO(2) => \TimeCounter_reg[0]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[0]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \TimeCounter_reg[0]_i_1_n_4\,
      O(2) => \TimeCounter_reg[0]_i_1_n_5\,
      O(1) => \TimeCounter_reg[0]_i_1_n_6\,
      O(0) => \TimeCounter_reg[0]_i_1_n_7\,
      S(3 downto 1) => TimeCounter_reg(3 downto 1),
      S(0) => \TimeCounter[0]_i_2_n_0\
    );
\TimeCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[8]_i_1_n_5\,
      Q => TimeCounter_reg(10),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[8]_i_1_n_4\,
      Q => TimeCounter_reg(11),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[12]_i_1_n_7\,
      Q => TimeCounter_reg(12),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeCounter_reg[8]_i_1_n_0\,
      CO(3) => \TimeCounter_reg[12]_i_1_n_0\,
      CO(2) => \TimeCounter_reg[12]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[12]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \TimeCounter_reg[12]_i_1_n_4\,
      O(2) => \TimeCounter_reg[12]_i_1_n_5\,
      O(1) => \TimeCounter_reg[12]_i_1_n_6\,
      O(0) => \TimeCounter_reg[12]_i_1_n_7\,
      S(3 downto 0) => TimeCounter_reg(15 downto 12)
    );
\TimeCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[12]_i_1_n_6\,
      Q => TimeCounter_reg(13),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[12]_i_1_n_5\,
      Q => TimeCounter_reg(14),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[12]_i_1_n_4\,
      Q => TimeCounter_reg(15),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[16]_i_1_n_7\,
      Q => TimeCounter_reg(16),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeCounter_reg[12]_i_1_n_0\,
      CO(3) => \TimeCounter_reg[16]_i_1_n_0\,
      CO(2) => \TimeCounter_reg[16]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[16]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \TimeCounter_reg[16]_i_1_n_4\,
      O(2) => \TimeCounter_reg[16]_i_1_n_5\,
      O(1) => \TimeCounter_reg[16]_i_1_n_6\,
      O(0) => \TimeCounter_reg[16]_i_1_n_7\,
      S(3 downto 0) => TimeCounter_reg(19 downto 16)
    );
\TimeCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[16]_i_1_n_6\,
      Q => TimeCounter_reg(17),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[16]_i_1_n_5\,
      Q => TimeCounter_reg(18),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[16]_i_1_n_4\,
      Q => TimeCounter_reg(19),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[0]_i_1_n_6\,
      Q => TimeCounter_reg(1),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[20]_i_1_n_7\,
      Q => TimeCounter_reg(20),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeCounter_reg[16]_i_1_n_0\,
      CO(3) => \TimeCounter_reg[20]_i_1_n_0\,
      CO(2) => \TimeCounter_reg[20]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[20]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \TimeCounter_reg[20]_i_1_n_4\,
      O(2) => \TimeCounter_reg[20]_i_1_n_5\,
      O(1) => \TimeCounter_reg[20]_i_1_n_6\,
      O(0) => \TimeCounter_reg[20]_i_1_n_7\,
      S(3 downto 0) => TimeCounter_reg(23 downto 20)
    );
\TimeCounter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[20]_i_1_n_6\,
      Q => TimeCounter_reg(21),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[20]_i_1_n_5\,
      Q => TimeCounter_reg(22),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[20]_i_1_n_4\,
      Q => TimeCounter_reg(23),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[24]_i_1_n_7\,
      Q => TimeCounter_reg(24),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeCounter_reg[20]_i_1_n_0\,
      CO(3) => \TimeCounter_reg[24]_i_1_n_0\,
      CO(2) => \TimeCounter_reg[24]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[24]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \TimeCounter_reg[24]_i_1_n_4\,
      O(2) => \TimeCounter_reg[24]_i_1_n_5\,
      O(1) => \TimeCounter_reg[24]_i_1_n_6\,
      O(0) => \TimeCounter_reg[24]_i_1_n_7\,
      S(3 downto 0) => TimeCounter_reg(27 downto 24)
    );
\TimeCounter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[24]_i_1_n_6\,
      Q => TimeCounter_reg(25),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[24]_i_1_n_5\,
      Q => TimeCounter_reg(26),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[24]_i_1_n_4\,
      Q => TimeCounter_reg(27),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[28]_i_1_n_7\,
      Q => TimeCounter_reg(28),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeCounter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_TimeCounter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \TimeCounter_reg[28]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[28]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \TimeCounter_reg[28]_i_1_n_4\,
      O(2) => \TimeCounter_reg[28]_i_1_n_5\,
      O(1) => \TimeCounter_reg[28]_i_1_n_6\,
      O(0) => \TimeCounter_reg[28]_i_1_n_7\,
      S(3 downto 0) => TimeCounter_reg(31 downto 28)
    );
\TimeCounter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[28]_i_1_n_6\,
      Q => TimeCounter_reg(29),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[0]_i_1_n_5\,
      Q => TimeCounter_reg(2),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[28]_i_1_n_5\,
      Q => TimeCounter_reg(30),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[28]_i_1_n_4\,
      Q => TimeCounter_reg(31),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[0]_i_1_n_4\,
      Q => TimeCounter_reg(3),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[4]_i_1_n_7\,
      Q => TimeCounter_reg(4),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeCounter_reg[0]_i_1_n_0\,
      CO(3) => \TimeCounter_reg[4]_i_1_n_0\,
      CO(2) => \TimeCounter_reg[4]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[4]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \TimeCounter_reg[4]_i_1_n_4\,
      O(2) => \TimeCounter_reg[4]_i_1_n_5\,
      O(1) => \TimeCounter_reg[4]_i_1_n_6\,
      O(0) => \TimeCounter_reg[4]_i_1_n_7\,
      S(3 downto 0) => TimeCounter_reg(7 downto 4)
    );
\TimeCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[4]_i_1_n_6\,
      Q => TimeCounter_reg(5),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[4]_i_1_n_5\,
      Q => TimeCounter_reg(6),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[4]_i_1_n_4\,
      Q => TimeCounter_reg(7),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[8]_i_1_n_7\,
      Q => TimeCounter_reg(8),
      R => deadTimeCounterReset_reg_n_0
    );
\TimeCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeCounter_reg[4]_i_1_n_0\,
      CO(3) => \TimeCounter_reg[8]_i_1_n_0\,
      CO(2) => \TimeCounter_reg[8]_i_1_n_1\,
      CO(1) => \TimeCounter_reg[8]_i_1_n_2\,
      CO(0) => \TimeCounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \TimeCounter_reg[8]_i_1_n_4\,
      O(2) => \TimeCounter_reg[8]_i_1_n_5\,
      O(1) => \TimeCounter_reg[8]_i_1_n_6\,
      O(0) => \TimeCounter_reg[8]_i_1_n_7\,
      S(3 downto 0) => TimeCounter_reg(11 downto 8)
    );
\TimeCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => sel,
      D => \TimeCounter_reg[8]_i_1_n_6\,
      Q => TimeCounter_reg(9),
      R => deadTimeCounterReset_reg_n_0
    );
deadTimeCounterReset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE0000000E"
    )
        port map (
      I0 => deadTimeCounterReset_i_2_n_0,
      I1 => \FSM_onehot_lineconfig[6]_i_4_n_0\,
      I2 => reset,
      I3 => breaking_en,
      I4 => deadTimeCounterReset_i_3_n_0,
      I5 => deadTimeCounterReset_reg_n_0,
      O => deadTimeCounterReset_i_1_n_0
    );
deadTimeCounterReset_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      O => deadTimeCounterReset_i_2_n_0
    );
deadTimeCounterReset_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022220020"
    )
        port map (
      I0 => deadTimeCounterReset_i_4_n_0,
      I1 => deadTimeCounterReset_i_2_n_0,
      I2 => deadTimeCounterReset_i_5_n_0,
      I3 => deadTimeCounterReset_i_6_n_0,
      I4 => \FSM_onehot_lineconfig[5]_i_2_n_0\,
      I5 => deadTimeCounterReset_i_7_n_0,
      O => deadTimeCounterReset_i_3_n_0
    );
deadTimeCounterReset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D555555555555"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I1 => deadTimeOK,
      I2 => TKin1,
      I3 => TKin1_triggered,
      I4 => TKin0,
      I5 => TKin0_triggered,
      O => deadTimeCounterReset_i_4_n_0
    );
deadTimeCounterReset_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => deadTimeOK,
      I1 => ready,
      I2 => er,
      O => deadTimeCounterReset_i_5_n_0
    );
deadTimeCounterReset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => TKin0,
      I1 => TKin1,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[2]\,
      I3 => deadTimeCounterReset_reg_n_0,
      O => deadTimeCounterReset_i_6_n_0
    );
deadTimeCounterReset_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA2AAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I1 => TKin1,
      I2 => TKin0,
      I3 => deadTimeOK,
      I4 => TKin0_triggered,
      I5 => TKin1_triggered,
      O => deadTimeCounterReset_i_7_n_0
    );
deadTimeCounterReset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => deadTimeCounterReset_i_1_n_0,
      Q => deadTimeCounterReset_reg_n_0,
      R => '0'
    );
deadTimeOK_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sel,
      I1 => deadTimeOK,
      I2 => deadTimeCounterReset_reg_n_0,
      O => deadTimeOK_i_1_n_0
    );
deadTimeOK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => deadTimeOK_i_1_n_0,
      Q => deadTimeOK,
      R => '0'
    );
key1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD0DDDDDDDD"
    )
        port map (
      I0 => breaking_en,
      I1 => TKin0,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      I4 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I5 => key1_i_2_n_0,
      O => key1_i_1_n_0
    );
key1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[2]\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[0]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I3 => breaking_en,
      O => key1_i_2_n_0
    );
key1_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => p_0_in,
      D => key1_reg_n_0,
      Q => key1_prev,
      R => '0'
    );
key1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => p_0_in,
      D => key1_i_1_n_0,
      Q => key1_reg_n_0,
      R => '0'
    );
key2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => p_0_in
    );
key2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFFFFC"
    )
        port map (
      I0 => TKin1,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[2]\,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[0]\,
      I4 => \FSM_onehot_lineconfig_reg_n_0_[1]\,
      I5 => breaking_en,
      O => key2_i_2_n_0
    );
key2_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => p_0_in,
      D => key2_reg_n_0,
      Q => key2_prev,
      R => '0'
    );
key2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => p_0_in,
      D => key2_i_2_n_0,
      Q => key2_reg_n_0,
      R => '0'
    );
key3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAAAFCFF"
    )
        port map (
      I0 => key3_reg_n_0,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I3 => \FSM_onehot_lineconfig[5]_i_2_n_0\,
      I4 => reset,
      I5 => breaking_en,
      O => key3_i_1_n_0
    );
key3_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => p_0_in,
      D => key3_reg_n_0,
      Q => key3_prev,
      R => '0'
    );
key3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => key3_i_1_n_0,
      Q => key3_reg_n_0,
      R => '0'
    );
key4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAAAFFFC"
    )
        port map (
      I0 => key4_reg_n_0,
      I1 => key3,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[6]\,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[5]\,
      I4 => reset,
      I5 => breaking_en,
      O => key4_i_1_n_0
    );
key4_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_lineconfig_reg_n_0_[2]\,
      I1 => \FSM_onehot_lineconfig_reg_n_0_[0]\,
      I2 => \FSM_onehot_lineconfig_reg_n_0_[4]\,
      I3 => \FSM_onehot_lineconfig_reg_n_0_[3]\,
      O => key3
    );
key4_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => p_0_in,
      D => key4_reg_n_0,
      Q => key4_prev,
      R => '0'
    );
key4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => key4_i_1_n_0,
      Q => key4_reg_n_0,
      R => '0'
    );
\ltOp__15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp__15_carry_n_0\,
      CO(2) => \ltOp__15_carry_n_1\,
      CO(1) => \ltOp__15_carry_n_2\,
      CO(0) => \ltOp__15_carry_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__15_carry_i_1_n_0\,
      DI(2) => \ltOp__15_carry_i_2_n_0\,
      DI(1) => \ltOp__15_carry_i_3_n_0\,
      DI(0) => \ltOp__15_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__15_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__15_carry_i_5_n_0\,
      S(2) => \ltOp__15_carry_i_6_n_0\,
      S(1) => \ltOp__15_carry_i_7_n_0\,
      S(0) => \ltOp__15_carry_i_8_n_0\
    );
\ltOp__15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__15_carry_n_0\,
      CO(3) => \ltOp__15_carry__0_n_0\,
      CO(2) => \ltOp__15_carry__0_n_1\,
      CO(1) => \ltOp__15_carry__0_n_2\,
      CO(0) => \ltOp__15_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__15_carry__0_i_1_n_0\,
      DI(2) => \ltOp__15_carry__0_i_2_n_0\,
      DI(1) => \ltOp__15_carry__0_i_3_n_0\,
      DI(0) => \ltOp__15_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__15_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__15_carry__0_i_5_n_0\,
      S(2) => \ltOp__15_carry__0_i_6_n_0\,
      S(1) => \ltOp__15_carry__0_i_7_n_0\,
      S(0) => \ltOp__15_carry__0_i_8_n_0\
    );
\ltOp__15_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(15),
      I1 => minTimeCounter_low_reg(15),
      I2 => minTime(14),
      I3 => minTimeCounter_low_reg(14),
      O => \ltOp__15_carry__0_i_1_n_0\
    );
\ltOp__15_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(13),
      I1 => minTimeCounter_low_reg(13),
      I2 => minTime(12),
      I3 => minTimeCounter_low_reg(12),
      O => \ltOp__15_carry__0_i_2_n_0\
    );
\ltOp__15_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(11),
      I1 => minTimeCounter_low_reg(11),
      I2 => minTime(10),
      I3 => minTimeCounter_low_reg(10),
      O => \ltOp__15_carry__0_i_3_n_0\
    );
\ltOp__15_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(9),
      I1 => minTimeCounter_low_reg(9),
      I2 => minTime(8),
      I3 => minTimeCounter_low_reg(8),
      O => \ltOp__15_carry__0_i_4_n_0\
    );
\ltOp__15_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(15),
      I1 => minTime(15),
      I2 => minTimeCounter_low_reg(14),
      I3 => minTime(14),
      O => \ltOp__15_carry__0_i_5_n_0\
    );
\ltOp__15_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(13),
      I1 => minTime(13),
      I2 => minTimeCounter_low_reg(12),
      I3 => minTime(12),
      O => \ltOp__15_carry__0_i_6_n_0\
    );
\ltOp__15_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(11),
      I1 => minTime(11),
      I2 => minTimeCounter_low_reg(10),
      I3 => minTime(10),
      O => \ltOp__15_carry__0_i_7_n_0\
    );
\ltOp__15_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(9),
      I1 => minTime(9),
      I2 => minTimeCounter_low_reg(8),
      I3 => minTime(8),
      O => \ltOp__15_carry__0_i_8_n_0\
    );
\ltOp__15_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__15_carry__0_n_0\,
      CO(3) => \ltOp__15_carry__1_n_0\,
      CO(2) => \ltOp__15_carry__1_n_1\,
      CO(1) => \ltOp__15_carry__1_n_2\,
      CO(0) => \ltOp__15_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__15_carry__1_i_1_n_0\,
      DI(2) => \ltOp__15_carry__1_i_2_n_0\,
      DI(1) => \ltOp__15_carry__1_i_3_n_0\,
      DI(0) => \ltOp__15_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__15_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__15_carry__1_i_5_n_0\,
      S(2) => \ltOp__15_carry__1_i_6_n_0\,
      S(1) => \ltOp__15_carry__1_i_7_n_0\,
      S(0) => \ltOp__15_carry__1_i_8_n_0\
    );
\ltOp__15_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(23),
      I1 => minTimeCounter_low_reg(23),
      I2 => minTime(22),
      I3 => minTimeCounter_low_reg(22),
      O => \ltOp__15_carry__1_i_1_n_0\
    );
\ltOp__15_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(21),
      I1 => minTimeCounter_low_reg(21),
      I2 => minTime(20),
      I3 => minTimeCounter_low_reg(20),
      O => \ltOp__15_carry__1_i_2_n_0\
    );
\ltOp__15_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(19),
      I1 => minTimeCounter_low_reg(19),
      I2 => minTime(18),
      I3 => minTimeCounter_low_reg(18),
      O => \ltOp__15_carry__1_i_3_n_0\
    );
\ltOp__15_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(17),
      I1 => minTimeCounter_low_reg(17),
      I2 => minTime(16),
      I3 => minTimeCounter_low_reg(16),
      O => \ltOp__15_carry__1_i_4_n_0\
    );
\ltOp__15_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(23),
      I1 => minTime(23),
      I2 => minTimeCounter_low_reg(22),
      I3 => minTime(22),
      O => \ltOp__15_carry__1_i_5_n_0\
    );
\ltOp__15_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(21),
      I1 => minTime(21),
      I2 => minTimeCounter_low_reg(20),
      I3 => minTime(20),
      O => \ltOp__15_carry__1_i_6_n_0\
    );
\ltOp__15_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(19),
      I1 => minTime(19),
      I2 => minTimeCounter_low_reg(18),
      I3 => minTime(18),
      O => \ltOp__15_carry__1_i_7_n_0\
    );
\ltOp__15_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(17),
      I1 => minTime(17),
      I2 => minTimeCounter_low_reg(16),
      I3 => minTime(16),
      O => \ltOp__15_carry__1_i_8_n_0\
    );
\ltOp__15_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__15_carry__1_n_0\,
      CO(3) => \ltOp__15_carry__2_n_0\,
      CO(2) => \ltOp__15_carry__2_n_1\,
      CO(1) => \ltOp__15_carry__2_n_2\,
      CO(0) => \ltOp__15_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__15_carry__2_i_1_n_0\,
      DI(2) => \ltOp__15_carry__2_i_2_n_0\,
      DI(1) => \ltOp__15_carry__2_i_3_n_0\,
      DI(0) => \ltOp__15_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__15_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__15_carry__2_i_5_n_0\,
      S(2) => \ltOp__15_carry__2_i_6_n_0\,
      S(1) => \ltOp__15_carry__2_i_7_n_0\,
      S(0) => \ltOp__15_carry__2_i_8_n_0\
    );
\ltOp__15_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(31),
      I1 => minTimeCounter_low_reg(31),
      I2 => minTime(30),
      I3 => minTimeCounter_low_reg(30),
      O => \ltOp__15_carry__2_i_1_n_0\
    );
\ltOp__15_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(29),
      I1 => minTimeCounter_low_reg(29),
      I2 => minTime(28),
      I3 => minTimeCounter_low_reg(28),
      O => \ltOp__15_carry__2_i_2_n_0\
    );
\ltOp__15_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(27),
      I1 => minTimeCounter_low_reg(27),
      I2 => minTime(26),
      I3 => minTimeCounter_low_reg(26),
      O => \ltOp__15_carry__2_i_3_n_0\
    );
\ltOp__15_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(25),
      I1 => minTimeCounter_low_reg(25),
      I2 => minTime(24),
      I3 => minTimeCounter_low_reg(24),
      O => \ltOp__15_carry__2_i_4_n_0\
    );
\ltOp__15_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(31),
      I1 => minTime(31),
      I2 => minTimeCounter_low_reg(30),
      I3 => minTime(30),
      O => \ltOp__15_carry__2_i_5_n_0\
    );
\ltOp__15_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(29),
      I1 => minTime(29),
      I2 => minTimeCounter_low_reg(28),
      I3 => minTime(28),
      O => \ltOp__15_carry__2_i_6_n_0\
    );
\ltOp__15_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(27),
      I1 => minTime(27),
      I2 => minTimeCounter_low_reg(26),
      I3 => minTime(26),
      O => \ltOp__15_carry__2_i_7_n_0\
    );
\ltOp__15_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(25),
      I1 => minTime(25),
      I2 => minTimeCounter_low_reg(24),
      I3 => minTime(24),
      O => \ltOp__15_carry__2_i_8_n_0\
    );
\ltOp__15_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(7),
      I1 => minTimeCounter_low_reg(7),
      I2 => minTime(6),
      I3 => minTimeCounter_low_reg(6),
      O => \ltOp__15_carry_i_1_n_0\
    );
\ltOp__15_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(5),
      I1 => minTimeCounter_low_reg(5),
      I2 => minTime(4),
      I3 => minTimeCounter_low_reg(4),
      O => \ltOp__15_carry_i_2_n_0\
    );
\ltOp__15_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(3),
      I1 => minTimeCounter_low_reg(3),
      I2 => minTime(2),
      I3 => minTimeCounter_low_reg(2),
      O => \ltOp__15_carry_i_3_n_0\
    );
\ltOp__15_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(1),
      I1 => minTimeCounter_low_reg(1),
      I2 => minTime(0),
      I3 => minTimeCounter_low_reg(0),
      O => \ltOp__15_carry_i_4_n_0\
    );
\ltOp__15_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(7),
      I1 => minTime(7),
      I2 => minTimeCounter_low_reg(6),
      I3 => minTime(6),
      O => \ltOp__15_carry_i_5_n_0\
    );
\ltOp__15_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(5),
      I1 => minTime(5),
      I2 => minTimeCounter_low_reg(4),
      I3 => minTime(4),
      O => \ltOp__15_carry_i_6_n_0\
    );
\ltOp__15_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(3),
      I1 => minTime(3),
      I2 => minTimeCounter_low_reg(2),
      I3 => minTime(2),
      O => \ltOp__15_carry_i_7_n_0\
    );
\ltOp__15_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_low_reg(1),
      I1 => minTime(1),
      I2 => minTimeCounter_low_reg(0),
      I3 => minTime(0),
      O => \ltOp__15_carry_i_8_n_0\
    );
\ltOp__31_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp__31_carry_n_0\,
      CO(2) => \ltOp__31_carry_n_1\,
      CO(1) => \ltOp__31_carry_n_2\,
      CO(0) => \ltOp__31_carry_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__31_carry_i_1_n_0\,
      DI(2) => \ltOp__31_carry_i_2_n_0\,
      DI(1) => \ltOp__31_carry_i_3_n_0\,
      DI(0) => \ltOp__31_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__31_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__31_carry_i_5_n_0\,
      S(2) => \ltOp__31_carry_i_6_n_0\,
      S(1) => \ltOp__31_carry_i_7_n_0\,
      S(0) => \ltOp__31_carry_i_8_n_0\
    );
\ltOp__31_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__31_carry_n_0\,
      CO(3) => \ltOp__31_carry__0_n_0\,
      CO(2) => \ltOp__31_carry__0_n_1\,
      CO(1) => \ltOp__31_carry__0_n_2\,
      CO(0) => \ltOp__31_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__31_carry_i_1__0_n_0\,
      DI(2) => \ltOp__31_carry_i_2__0_n_0\,
      DI(1) => \ltOp__31_carry_i_3__0_n_0\,
      DI(0) => \ltOp__31_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ltOp__31_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__31_carry_i_5__0_n_0\,
      S(2) => \ltOp__31_carry_i_6__0_n_0\,
      S(1) => \ltOp__31_carry_i_7__0_n_0\,
      S(0) => \ltOp__31_carry_i_8__0_n_0\
    );
\ltOp__31_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__31_carry__0_n_0\,
      CO(3) => \ltOp__31_carry__1_n_0\,
      CO(2) => \ltOp__31_carry__1_n_1\,
      CO(1) => \ltOp__31_carry__1_n_2\,
      CO(0) => \ltOp__31_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__31_carry_i_1__1_n_0\,
      DI(2) => \ltOp__31_carry_i_2__1_n_0\,
      DI(1) => \ltOp__31_carry_i_3__1_n_0\,
      DI(0) => \ltOp__31_carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_ltOp__31_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__31_carry_i_5__1_n_0\,
      S(2) => \ltOp__31_carry_i_6__1_n_0\,
      S(1) => \ltOp__31_carry_i_7__1_n_0\,
      S(0) => \ltOp__31_carry_i_8__1_n_0\
    );
\ltOp__31_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__31_carry__1_n_0\,
      CO(3) => \ltOp__31_carry__2_n_0\,
      CO(2) => \ltOp__31_carry__2_n_1\,
      CO(1) => \ltOp__31_carry__2_n_2\,
      CO(0) => \ltOp__31_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__31_carry_i_1__2_n_0\,
      DI(2) => \ltOp__31_carry_i_2__2_n_0\,
      DI(1) => \ltOp__31_carry_i_3__2_n_0\,
      DI(0) => \ltOp__31_carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_ltOp__31_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__31_carry_i_5__2_n_0\,
      S(2) => \ltOp__31_carry_i_6__2_n_0\,
      S(1) => \ltOp__31_carry_i_7__2_n_0\,
      S(0) => \ltOp__31_carry_i_8__2_n_0\
    );
\ltOp__31_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(7),
      I1 => minTimeCounter_high_reg(7),
      I2 => minTime(6),
      I3 => minTimeCounter_high_reg(6),
      O => \ltOp__31_carry_i_1_n_0\
    );
\ltOp__31_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(15),
      I1 => minTimeCounter_high_reg(15),
      I2 => minTime(14),
      I3 => minTimeCounter_high_reg(14),
      O => \ltOp__31_carry_i_1__0_n_0\
    );
\ltOp__31_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(23),
      I1 => minTimeCounter_high_reg(23),
      I2 => minTime(22),
      I3 => minTimeCounter_high_reg(22),
      O => \ltOp__31_carry_i_1__1_n_0\
    );
\ltOp__31_carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(31),
      I1 => minTimeCounter_high_reg(31),
      I2 => minTime(30),
      I3 => minTimeCounter_high_reg(30),
      O => \ltOp__31_carry_i_1__2_n_0\
    );
\ltOp__31_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(5),
      I1 => minTimeCounter_high_reg(5),
      I2 => minTime(4),
      I3 => minTimeCounter_high_reg(4),
      O => \ltOp__31_carry_i_2_n_0\
    );
\ltOp__31_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(13),
      I1 => minTimeCounter_high_reg(13),
      I2 => minTime(12),
      I3 => minTimeCounter_high_reg(12),
      O => \ltOp__31_carry_i_2__0_n_0\
    );
\ltOp__31_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(21),
      I1 => minTimeCounter_high_reg(21),
      I2 => minTime(20),
      I3 => minTimeCounter_high_reg(20),
      O => \ltOp__31_carry_i_2__1_n_0\
    );
\ltOp__31_carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(29),
      I1 => minTimeCounter_high_reg(29),
      I2 => minTime(28),
      I3 => minTimeCounter_high_reg(28),
      O => \ltOp__31_carry_i_2__2_n_0\
    );
\ltOp__31_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(3),
      I1 => minTimeCounter_high_reg(3),
      I2 => minTime(2),
      I3 => minTimeCounter_high_reg(2),
      O => \ltOp__31_carry_i_3_n_0\
    );
\ltOp__31_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(11),
      I1 => minTimeCounter_high_reg(11),
      I2 => minTime(10),
      I3 => minTimeCounter_high_reg(10),
      O => \ltOp__31_carry_i_3__0_n_0\
    );
\ltOp__31_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(19),
      I1 => minTimeCounter_high_reg(19),
      I2 => minTime(18),
      I3 => minTimeCounter_high_reg(18),
      O => \ltOp__31_carry_i_3__1_n_0\
    );
\ltOp__31_carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(27),
      I1 => minTimeCounter_high_reg(27),
      I2 => minTime(26),
      I3 => minTimeCounter_high_reg(26),
      O => \ltOp__31_carry_i_3__2_n_0\
    );
\ltOp__31_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(1),
      I1 => minTimeCounter_high_reg(1),
      I2 => minTime(0),
      I3 => minTimeCounter_high_reg(0),
      O => \ltOp__31_carry_i_4_n_0\
    );
\ltOp__31_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(9),
      I1 => minTimeCounter_high_reg(9),
      I2 => minTime(8),
      I3 => minTimeCounter_high_reg(8),
      O => \ltOp__31_carry_i_4__0_n_0\
    );
\ltOp__31_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(17),
      I1 => minTimeCounter_high_reg(17),
      I2 => minTime(16),
      I3 => minTimeCounter_high_reg(16),
      O => \ltOp__31_carry_i_4__1_n_0\
    );
\ltOp__31_carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => minTime(25),
      I1 => minTimeCounter_high_reg(25),
      I2 => minTime(24),
      I3 => minTimeCounter_high_reg(24),
      O => \ltOp__31_carry_i_4__2_n_0\
    );
\ltOp__31_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(7),
      I1 => minTime(7),
      I2 => minTimeCounter_high_reg(6),
      I3 => minTime(6),
      O => \ltOp__31_carry_i_5_n_0\
    );
\ltOp__31_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(15),
      I1 => minTime(15),
      I2 => minTimeCounter_high_reg(14),
      I3 => minTime(14),
      O => \ltOp__31_carry_i_5__0_n_0\
    );
\ltOp__31_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(23),
      I1 => minTime(23),
      I2 => minTimeCounter_high_reg(22),
      I3 => minTime(22),
      O => \ltOp__31_carry_i_5__1_n_0\
    );
\ltOp__31_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(31),
      I1 => minTime(31),
      I2 => minTimeCounter_high_reg(30),
      I3 => minTime(30),
      O => \ltOp__31_carry_i_5__2_n_0\
    );
\ltOp__31_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(5),
      I1 => minTime(5),
      I2 => minTimeCounter_high_reg(4),
      I3 => minTime(4),
      O => \ltOp__31_carry_i_6_n_0\
    );
\ltOp__31_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(13),
      I1 => minTime(13),
      I2 => minTimeCounter_high_reg(12),
      I3 => minTime(12),
      O => \ltOp__31_carry_i_6__0_n_0\
    );
\ltOp__31_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(21),
      I1 => minTime(21),
      I2 => minTimeCounter_high_reg(20),
      I3 => minTime(20),
      O => \ltOp__31_carry_i_6__1_n_0\
    );
\ltOp__31_carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(29),
      I1 => minTime(29),
      I2 => minTimeCounter_high_reg(28),
      I3 => minTime(28),
      O => \ltOp__31_carry_i_6__2_n_0\
    );
\ltOp__31_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(3),
      I1 => minTime(3),
      I2 => minTimeCounter_high_reg(2),
      I3 => minTime(2),
      O => \ltOp__31_carry_i_7_n_0\
    );
\ltOp__31_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(11),
      I1 => minTime(11),
      I2 => minTimeCounter_high_reg(10),
      I3 => minTime(10),
      O => \ltOp__31_carry_i_7__0_n_0\
    );
\ltOp__31_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(19),
      I1 => minTime(19),
      I2 => minTimeCounter_high_reg(18),
      I3 => minTime(18),
      O => \ltOp__31_carry_i_7__1_n_0\
    );
\ltOp__31_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(27),
      I1 => minTime(27),
      I2 => minTimeCounter_high_reg(26),
      I3 => minTime(26),
      O => \ltOp__31_carry_i_7__2_n_0\
    );
\ltOp__31_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(1),
      I1 => minTime(1),
      I2 => minTimeCounter_high_reg(0),
      I3 => minTime(0),
      O => \ltOp__31_carry_i_8_n_0\
    );
\ltOp__31_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(9),
      I1 => minTime(9),
      I2 => minTimeCounter_high_reg(8),
      I3 => minTime(8),
      O => \ltOp__31_carry_i_8__0_n_0\
    );
\ltOp__31_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(17),
      I1 => minTime(17),
      I2 => minTimeCounter_high_reg(16),
      I3 => minTime(16),
      O => \ltOp__31_carry_i_8__1_n_0\
    );
\ltOp__31_carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minTimeCounter_high_reg(25),
      I1 => minTime(25),
      I2 => minTimeCounter_high_reg(24),
      I3 => minTime(24),
      O => \ltOp__31_carry_i_8__2_n_0\
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
      DI(3) => \ltOp_carry__0_i_1_n_0\,
      DI(2) => \ltOp_carry__0_i_2_n_0\,
      DI(1) => \ltOp_carry__0_i_3_n_0\,
      DI(0) => \ltOp_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__0_i_5_n_0\,
      S(2) => \ltOp_carry__0_i_6_n_0\,
      S(1) => \ltOp_carry__0_i_7_n_0\,
      S(0) => \ltOp_carry__0_i_8_n_0\
    );
\ltOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(15),
      I1 => TimeCounter_reg(15),
      I2 => deadTime(14),
      I3 => TimeCounter_reg(14),
      O => \ltOp_carry__0_i_1_n_0\
    );
\ltOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(13),
      I1 => TimeCounter_reg(13),
      I2 => deadTime(12),
      I3 => TimeCounter_reg(12),
      O => \ltOp_carry__0_i_2_n_0\
    );
\ltOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(11),
      I1 => TimeCounter_reg(11),
      I2 => deadTime(10),
      I3 => TimeCounter_reg(10),
      O => \ltOp_carry__0_i_3_n_0\
    );
\ltOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(9),
      I1 => TimeCounter_reg(9),
      I2 => deadTime(8),
      I3 => TimeCounter_reg(8),
      O => \ltOp_carry__0_i_4_n_0\
    );
\ltOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(15),
      I1 => deadTime(15),
      I2 => TimeCounter_reg(14),
      I3 => deadTime(14),
      O => \ltOp_carry__0_i_5_n_0\
    );
\ltOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(13),
      I1 => deadTime(13),
      I2 => TimeCounter_reg(12),
      I3 => deadTime(12),
      O => \ltOp_carry__0_i_6_n_0\
    );
\ltOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(11),
      I1 => deadTime(11),
      I2 => TimeCounter_reg(10),
      I3 => deadTime(10),
      O => \ltOp_carry__0_i_7_n_0\
    );
\ltOp_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(9),
      I1 => deadTime(9),
      I2 => TimeCounter_reg(8),
      I3 => deadTime(8),
      O => \ltOp_carry__0_i_8_n_0\
    );
\ltOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__0_n_0\,
      CO(3) => \ltOp_carry__1_n_0\,
      CO(2) => \ltOp_carry__1_n_1\,
      CO(1) => \ltOp_carry__1_n_2\,
      CO(0) => \ltOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp_carry__1_i_1_n_0\,
      DI(2) => \ltOp_carry__1_i_2_n_0\,
      DI(1) => \ltOp_carry__1_i_3_n_0\,
      DI(0) => \ltOp_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__1_i_5_n_0\,
      S(2) => \ltOp_carry__1_i_6_n_0\,
      S(1) => \ltOp_carry__1_i_7_n_0\,
      S(0) => \ltOp_carry__1_i_8_n_0\
    );
\ltOp_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(23),
      I1 => TimeCounter_reg(23),
      I2 => deadTime(22),
      I3 => TimeCounter_reg(22),
      O => \ltOp_carry__1_i_1_n_0\
    );
\ltOp_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(21),
      I1 => TimeCounter_reg(21),
      I2 => deadTime(20),
      I3 => TimeCounter_reg(20),
      O => \ltOp_carry__1_i_2_n_0\
    );
\ltOp_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(19),
      I1 => TimeCounter_reg(19),
      I2 => deadTime(18),
      I3 => TimeCounter_reg(18),
      O => \ltOp_carry__1_i_3_n_0\
    );
\ltOp_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(17),
      I1 => TimeCounter_reg(17),
      I2 => deadTime(16),
      I3 => TimeCounter_reg(16),
      O => \ltOp_carry__1_i_4_n_0\
    );
\ltOp_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(23),
      I1 => deadTime(23),
      I2 => TimeCounter_reg(22),
      I3 => deadTime(22),
      O => \ltOp_carry__1_i_5_n_0\
    );
\ltOp_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(21),
      I1 => deadTime(21),
      I2 => TimeCounter_reg(20),
      I3 => deadTime(20),
      O => \ltOp_carry__1_i_6_n_0\
    );
\ltOp_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(19),
      I1 => deadTime(19),
      I2 => TimeCounter_reg(18),
      I3 => deadTime(18),
      O => \ltOp_carry__1_i_7_n_0\
    );
\ltOp_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(17),
      I1 => deadTime(17),
      I2 => TimeCounter_reg(16),
      I3 => deadTime(16),
      O => \ltOp_carry__1_i_8_n_0\
    );
\ltOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__1_n_0\,
      CO(3) => sel,
      CO(2) => \ltOp_carry__2_n_1\,
      CO(1) => \ltOp_carry__2_n_2\,
      CO(0) => \ltOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp_carry__2_i_1_n_0\,
      DI(2) => \ltOp_carry__2_i_2_n_0\,
      DI(1) => \ltOp_carry__2_i_3_n_0\,
      DI(0) => \ltOp_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__2_i_5_n_0\,
      S(2) => \ltOp_carry__2_i_6_n_0\,
      S(1) => \ltOp_carry__2_i_7_n_0\,
      S(0) => \ltOp_carry__2_i_8_n_0\
    );
\ltOp_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(31),
      I1 => TimeCounter_reg(31),
      I2 => deadTime(30),
      I3 => TimeCounter_reg(30),
      O => \ltOp_carry__2_i_1_n_0\
    );
\ltOp_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(29),
      I1 => TimeCounter_reg(29),
      I2 => deadTime(28),
      I3 => TimeCounter_reg(28),
      O => \ltOp_carry__2_i_2_n_0\
    );
\ltOp_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(27),
      I1 => TimeCounter_reg(27),
      I2 => deadTime(26),
      I3 => TimeCounter_reg(26),
      O => \ltOp_carry__2_i_3_n_0\
    );
\ltOp_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(25),
      I1 => TimeCounter_reg(25),
      I2 => deadTime(24),
      I3 => TimeCounter_reg(24),
      O => \ltOp_carry__2_i_4_n_0\
    );
\ltOp_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(31),
      I1 => deadTime(31),
      I2 => TimeCounter_reg(30),
      I3 => deadTime(30),
      O => \ltOp_carry__2_i_5_n_0\
    );
\ltOp_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(29),
      I1 => deadTime(29),
      I2 => TimeCounter_reg(28),
      I3 => deadTime(28),
      O => \ltOp_carry__2_i_6_n_0\
    );
\ltOp_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(27),
      I1 => deadTime(27),
      I2 => TimeCounter_reg(26),
      I3 => deadTime(26),
      O => \ltOp_carry__2_i_7_n_0\
    );
\ltOp_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(25),
      I1 => deadTime(25),
      I2 => TimeCounter_reg(24),
      I3 => deadTime(24),
      O => \ltOp_carry__2_i_8_n_0\
    );
ltOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(7),
      I1 => TimeCounter_reg(7),
      I2 => deadTime(6),
      I3 => TimeCounter_reg(6),
      O => ltOp_carry_i_1_n_0
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(5),
      I1 => TimeCounter_reg(5),
      I2 => deadTime(4),
      I3 => TimeCounter_reg(4),
      O => ltOp_carry_i_2_n_0
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(3),
      I1 => TimeCounter_reg(3),
      I2 => deadTime(2),
      I3 => TimeCounter_reg(2),
      O => ltOp_carry_i_3_n_0
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => deadTime(1),
      I1 => TimeCounter_reg(1),
      I2 => deadTime(0),
      I3 => TimeCounter_reg(0),
      O => ltOp_carry_i_4_n_0
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(7),
      I1 => deadTime(7),
      I2 => TimeCounter_reg(6),
      I3 => deadTime(6),
      O => ltOp_carry_i_5_n_0
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(5),
      I1 => deadTime(5),
      I2 => TimeCounter_reg(4),
      I3 => deadTime(4),
      O => ltOp_carry_i_6_n_0
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(3),
      I1 => deadTime(3),
      I2 => TimeCounter_reg(2),
      I3 => deadTime(2),
      O => ltOp_carry_i_7_n_0
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => TimeCounter_reg(1),
      I1 => deadTime(1),
      I2 => TimeCounter_reg(0),
      I3 => deadTime(0),
      O => ltOp_carry_i_8_n_0
    );
\minTimeCounter_high[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222F22"
    )
        port map (
      I0 => key1_prev,
      I1 => key1_reg_n_0,
      I2 => key2_reg_n_0,
      I3 => key2_prev,
      I4 => breaking_en,
      I5 => reset,
      O => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ltOp__31_carry__2_n_0\,
      I1 => reset,
      O => minTimeCounter_high
    );
\minTimeCounter_high[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => minTimeCounter_high_reg(0),
      O => \minTimeCounter_high[0]_i_4_n_0\
    );
\minTimeCounter_high_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[0]_i_3_n_7\,
      Q => minTimeCounter_high_reg(0),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minTimeCounter_high_reg[0]_i_3_n_0\,
      CO(2) => \minTimeCounter_high_reg[0]_i_3_n_1\,
      CO(1) => \minTimeCounter_high_reg[0]_i_3_n_2\,
      CO(0) => \minTimeCounter_high_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \minTimeCounter_high_reg[0]_i_3_n_4\,
      O(2) => \minTimeCounter_high_reg[0]_i_3_n_5\,
      O(1) => \minTimeCounter_high_reg[0]_i_3_n_6\,
      O(0) => \minTimeCounter_high_reg[0]_i_3_n_7\,
      S(3 downto 1) => minTimeCounter_high_reg(3 downto 1),
      S(0) => \minTimeCounter_high[0]_i_4_n_0\
    );
\minTimeCounter_high_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[8]_i_1_n_5\,
      Q => minTimeCounter_high_reg(10),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[8]_i_1_n_4\,
      Q => minTimeCounter_high_reg(11),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[12]_i_1_n_7\,
      Q => minTimeCounter_high_reg(12),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_high_reg[8]_i_1_n_0\,
      CO(3) => \minTimeCounter_high_reg[12]_i_1_n_0\,
      CO(2) => \minTimeCounter_high_reg[12]_i_1_n_1\,
      CO(1) => \minTimeCounter_high_reg[12]_i_1_n_2\,
      CO(0) => \minTimeCounter_high_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_high_reg[12]_i_1_n_4\,
      O(2) => \minTimeCounter_high_reg[12]_i_1_n_5\,
      O(1) => \minTimeCounter_high_reg[12]_i_1_n_6\,
      O(0) => \minTimeCounter_high_reg[12]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_high_reg(15 downto 12)
    );
\minTimeCounter_high_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[12]_i_1_n_6\,
      Q => minTimeCounter_high_reg(13),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[12]_i_1_n_5\,
      Q => minTimeCounter_high_reg(14),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[12]_i_1_n_4\,
      Q => minTimeCounter_high_reg(15),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[16]_i_1_n_7\,
      Q => minTimeCounter_high_reg(16),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_high_reg[12]_i_1_n_0\,
      CO(3) => \minTimeCounter_high_reg[16]_i_1_n_0\,
      CO(2) => \minTimeCounter_high_reg[16]_i_1_n_1\,
      CO(1) => \minTimeCounter_high_reg[16]_i_1_n_2\,
      CO(0) => \minTimeCounter_high_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_high_reg[16]_i_1_n_4\,
      O(2) => \minTimeCounter_high_reg[16]_i_1_n_5\,
      O(1) => \minTimeCounter_high_reg[16]_i_1_n_6\,
      O(0) => \minTimeCounter_high_reg[16]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_high_reg(19 downto 16)
    );
\minTimeCounter_high_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[16]_i_1_n_6\,
      Q => minTimeCounter_high_reg(17),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[16]_i_1_n_5\,
      Q => minTimeCounter_high_reg(18),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[16]_i_1_n_4\,
      Q => minTimeCounter_high_reg(19),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[0]_i_3_n_6\,
      Q => minTimeCounter_high_reg(1),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[20]_i_1_n_7\,
      Q => minTimeCounter_high_reg(20),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_high_reg[16]_i_1_n_0\,
      CO(3) => \minTimeCounter_high_reg[20]_i_1_n_0\,
      CO(2) => \minTimeCounter_high_reg[20]_i_1_n_1\,
      CO(1) => \minTimeCounter_high_reg[20]_i_1_n_2\,
      CO(0) => \minTimeCounter_high_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_high_reg[20]_i_1_n_4\,
      O(2) => \minTimeCounter_high_reg[20]_i_1_n_5\,
      O(1) => \minTimeCounter_high_reg[20]_i_1_n_6\,
      O(0) => \minTimeCounter_high_reg[20]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_high_reg(23 downto 20)
    );
\minTimeCounter_high_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[20]_i_1_n_6\,
      Q => minTimeCounter_high_reg(21),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[20]_i_1_n_5\,
      Q => minTimeCounter_high_reg(22),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[20]_i_1_n_4\,
      Q => minTimeCounter_high_reg(23),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[24]_i_1_n_7\,
      Q => minTimeCounter_high_reg(24),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_high_reg[20]_i_1_n_0\,
      CO(3) => \minTimeCounter_high_reg[24]_i_1_n_0\,
      CO(2) => \minTimeCounter_high_reg[24]_i_1_n_1\,
      CO(1) => \minTimeCounter_high_reg[24]_i_1_n_2\,
      CO(0) => \minTimeCounter_high_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_high_reg[24]_i_1_n_4\,
      O(2) => \minTimeCounter_high_reg[24]_i_1_n_5\,
      O(1) => \minTimeCounter_high_reg[24]_i_1_n_6\,
      O(0) => \minTimeCounter_high_reg[24]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_high_reg(27 downto 24)
    );
\minTimeCounter_high_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[24]_i_1_n_6\,
      Q => minTimeCounter_high_reg(25),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[24]_i_1_n_5\,
      Q => minTimeCounter_high_reg(26),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[24]_i_1_n_4\,
      Q => minTimeCounter_high_reg(27),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[28]_i_1_n_7\,
      Q => minTimeCounter_high_reg(28),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_high_reg[24]_i_1_n_0\,
      CO(3) => \NLW_minTimeCounter_high_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \minTimeCounter_high_reg[28]_i_1_n_1\,
      CO(1) => \minTimeCounter_high_reg[28]_i_1_n_2\,
      CO(0) => \minTimeCounter_high_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_high_reg[28]_i_1_n_4\,
      O(2) => \minTimeCounter_high_reg[28]_i_1_n_5\,
      O(1) => \minTimeCounter_high_reg[28]_i_1_n_6\,
      O(0) => \minTimeCounter_high_reg[28]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_high_reg(31 downto 28)
    );
\minTimeCounter_high_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[28]_i_1_n_6\,
      Q => minTimeCounter_high_reg(29),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[0]_i_3_n_5\,
      Q => minTimeCounter_high_reg(2),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[28]_i_1_n_5\,
      Q => minTimeCounter_high_reg(30),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[28]_i_1_n_4\,
      Q => minTimeCounter_high_reg(31),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[0]_i_3_n_4\,
      Q => minTimeCounter_high_reg(3),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[4]_i_1_n_7\,
      Q => minTimeCounter_high_reg(4),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_high_reg[0]_i_3_n_0\,
      CO(3) => \minTimeCounter_high_reg[4]_i_1_n_0\,
      CO(2) => \minTimeCounter_high_reg[4]_i_1_n_1\,
      CO(1) => \minTimeCounter_high_reg[4]_i_1_n_2\,
      CO(0) => \minTimeCounter_high_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_high_reg[4]_i_1_n_4\,
      O(2) => \minTimeCounter_high_reg[4]_i_1_n_5\,
      O(1) => \minTimeCounter_high_reg[4]_i_1_n_6\,
      O(0) => \minTimeCounter_high_reg[4]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_high_reg(7 downto 4)
    );
\minTimeCounter_high_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[4]_i_1_n_6\,
      Q => minTimeCounter_high_reg(5),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[4]_i_1_n_5\,
      Q => minTimeCounter_high_reg(6),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[4]_i_1_n_4\,
      Q => minTimeCounter_high_reg(7),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[8]_i_1_n_7\,
      Q => minTimeCounter_high_reg(8),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_high_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_high_reg[4]_i_1_n_0\,
      CO(3) => \minTimeCounter_high_reg[8]_i_1_n_0\,
      CO(2) => \minTimeCounter_high_reg[8]_i_1_n_1\,
      CO(1) => \minTimeCounter_high_reg[8]_i_1_n_2\,
      CO(0) => \minTimeCounter_high_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_high_reg[8]_i_1_n_4\,
      O(2) => \minTimeCounter_high_reg[8]_i_1_n_5\,
      O(1) => \minTimeCounter_high_reg[8]_i_1_n_6\,
      O(0) => \minTimeCounter_high_reg[8]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_high_reg(11 downto 8)
    );
\minTimeCounter_high_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_high,
      D => \minTimeCounter_high_reg[8]_i_1_n_6\,
      Q => minTimeCounter_high_reg(9),
      R => \minTimeCounter_high[0]_i_1_n_0\
    );
\minTimeCounter_low[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000440F"
    )
        port map (
      I0 => key2_reg_n_0,
      I1 => key2_prev,
      I2 => \minTimeCounter_low[0]_i_4_n_0\,
      I3 => breaking_en,
      I4 => reset,
      O => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ltOp__15_carry__2_n_0\,
      I1 => reset,
      O => minTimeCounter_low
    );
\minTimeCounter_low[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => key4_prev,
      I1 => key4_reg_n_0,
      I2 => key3_reg_n_0,
      I3 => key3_prev,
      O => \minTimeCounter_low[0]_i_4_n_0\
    );
\minTimeCounter_low[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => minTimeCounter_low_reg(0),
      O => \minTimeCounter_low[0]_i_5_n_0\
    );
\minTimeCounter_low_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[0]_i_3_n_7\,
      Q => minTimeCounter_low_reg(0),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minTimeCounter_low_reg[0]_i_3_n_0\,
      CO(2) => \minTimeCounter_low_reg[0]_i_3_n_1\,
      CO(1) => \minTimeCounter_low_reg[0]_i_3_n_2\,
      CO(0) => \minTimeCounter_low_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \minTimeCounter_low_reg[0]_i_3_n_4\,
      O(2) => \minTimeCounter_low_reg[0]_i_3_n_5\,
      O(1) => \minTimeCounter_low_reg[0]_i_3_n_6\,
      O(0) => \minTimeCounter_low_reg[0]_i_3_n_7\,
      S(3 downto 1) => minTimeCounter_low_reg(3 downto 1),
      S(0) => \minTimeCounter_low[0]_i_5_n_0\
    );
\minTimeCounter_low_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[8]_i_1_n_5\,
      Q => minTimeCounter_low_reg(10),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[8]_i_1_n_4\,
      Q => minTimeCounter_low_reg(11),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[12]_i_1_n_7\,
      Q => minTimeCounter_low_reg(12),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_low_reg[8]_i_1_n_0\,
      CO(3) => \minTimeCounter_low_reg[12]_i_1_n_0\,
      CO(2) => \minTimeCounter_low_reg[12]_i_1_n_1\,
      CO(1) => \minTimeCounter_low_reg[12]_i_1_n_2\,
      CO(0) => \minTimeCounter_low_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_low_reg[12]_i_1_n_4\,
      O(2) => \minTimeCounter_low_reg[12]_i_1_n_5\,
      O(1) => \minTimeCounter_low_reg[12]_i_1_n_6\,
      O(0) => \minTimeCounter_low_reg[12]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_low_reg(15 downto 12)
    );
\minTimeCounter_low_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[12]_i_1_n_6\,
      Q => minTimeCounter_low_reg(13),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[12]_i_1_n_5\,
      Q => minTimeCounter_low_reg(14),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[12]_i_1_n_4\,
      Q => minTimeCounter_low_reg(15),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[16]_i_1_n_7\,
      Q => minTimeCounter_low_reg(16),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_low_reg[12]_i_1_n_0\,
      CO(3) => \minTimeCounter_low_reg[16]_i_1_n_0\,
      CO(2) => \minTimeCounter_low_reg[16]_i_1_n_1\,
      CO(1) => \minTimeCounter_low_reg[16]_i_1_n_2\,
      CO(0) => \minTimeCounter_low_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_low_reg[16]_i_1_n_4\,
      O(2) => \minTimeCounter_low_reg[16]_i_1_n_5\,
      O(1) => \minTimeCounter_low_reg[16]_i_1_n_6\,
      O(0) => \minTimeCounter_low_reg[16]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_low_reg(19 downto 16)
    );
\minTimeCounter_low_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[16]_i_1_n_6\,
      Q => minTimeCounter_low_reg(17),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[16]_i_1_n_5\,
      Q => minTimeCounter_low_reg(18),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[16]_i_1_n_4\,
      Q => minTimeCounter_low_reg(19),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[0]_i_3_n_6\,
      Q => minTimeCounter_low_reg(1),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[20]_i_1_n_7\,
      Q => minTimeCounter_low_reg(20),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_low_reg[16]_i_1_n_0\,
      CO(3) => \minTimeCounter_low_reg[20]_i_1_n_0\,
      CO(2) => \minTimeCounter_low_reg[20]_i_1_n_1\,
      CO(1) => \minTimeCounter_low_reg[20]_i_1_n_2\,
      CO(0) => \minTimeCounter_low_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_low_reg[20]_i_1_n_4\,
      O(2) => \minTimeCounter_low_reg[20]_i_1_n_5\,
      O(1) => \minTimeCounter_low_reg[20]_i_1_n_6\,
      O(0) => \minTimeCounter_low_reg[20]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_low_reg(23 downto 20)
    );
\minTimeCounter_low_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[20]_i_1_n_6\,
      Q => minTimeCounter_low_reg(21),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[20]_i_1_n_5\,
      Q => minTimeCounter_low_reg(22),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[20]_i_1_n_4\,
      Q => minTimeCounter_low_reg(23),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[24]_i_1_n_7\,
      Q => minTimeCounter_low_reg(24),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_low_reg[20]_i_1_n_0\,
      CO(3) => \minTimeCounter_low_reg[24]_i_1_n_0\,
      CO(2) => \minTimeCounter_low_reg[24]_i_1_n_1\,
      CO(1) => \minTimeCounter_low_reg[24]_i_1_n_2\,
      CO(0) => \minTimeCounter_low_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_low_reg[24]_i_1_n_4\,
      O(2) => \minTimeCounter_low_reg[24]_i_1_n_5\,
      O(1) => \minTimeCounter_low_reg[24]_i_1_n_6\,
      O(0) => \minTimeCounter_low_reg[24]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_low_reg(27 downto 24)
    );
\minTimeCounter_low_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[24]_i_1_n_6\,
      Q => minTimeCounter_low_reg(25),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[24]_i_1_n_5\,
      Q => minTimeCounter_low_reg(26),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[24]_i_1_n_4\,
      Q => minTimeCounter_low_reg(27),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[28]_i_1_n_7\,
      Q => minTimeCounter_low_reg(28),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_low_reg[24]_i_1_n_0\,
      CO(3) => \NLW_minTimeCounter_low_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \minTimeCounter_low_reg[28]_i_1_n_1\,
      CO(1) => \minTimeCounter_low_reg[28]_i_1_n_2\,
      CO(0) => \minTimeCounter_low_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_low_reg[28]_i_1_n_4\,
      O(2) => \minTimeCounter_low_reg[28]_i_1_n_5\,
      O(1) => \minTimeCounter_low_reg[28]_i_1_n_6\,
      O(0) => \minTimeCounter_low_reg[28]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_low_reg(31 downto 28)
    );
\minTimeCounter_low_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[28]_i_1_n_6\,
      Q => minTimeCounter_low_reg(29),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[0]_i_3_n_5\,
      Q => minTimeCounter_low_reg(2),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[28]_i_1_n_5\,
      Q => minTimeCounter_low_reg(30),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[28]_i_1_n_4\,
      Q => minTimeCounter_low_reg(31),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[0]_i_3_n_4\,
      Q => minTimeCounter_low_reg(3),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[4]_i_1_n_7\,
      Q => minTimeCounter_low_reg(4),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_low_reg[0]_i_3_n_0\,
      CO(3) => \minTimeCounter_low_reg[4]_i_1_n_0\,
      CO(2) => \minTimeCounter_low_reg[4]_i_1_n_1\,
      CO(1) => \minTimeCounter_low_reg[4]_i_1_n_2\,
      CO(0) => \minTimeCounter_low_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_low_reg[4]_i_1_n_4\,
      O(2) => \minTimeCounter_low_reg[4]_i_1_n_5\,
      O(1) => \minTimeCounter_low_reg[4]_i_1_n_6\,
      O(0) => \minTimeCounter_low_reg[4]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_low_reg(7 downto 4)
    );
\minTimeCounter_low_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[4]_i_1_n_6\,
      Q => minTimeCounter_low_reg(5),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[4]_i_1_n_5\,
      Q => minTimeCounter_low_reg(6),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[4]_i_1_n_4\,
      Q => minTimeCounter_low_reg(7),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[8]_i_1_n_7\,
      Q => minTimeCounter_low_reg(8),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
\minTimeCounter_low_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minTimeCounter_low_reg[4]_i_1_n_0\,
      CO(3) => \minTimeCounter_low_reg[8]_i_1_n_0\,
      CO(2) => \minTimeCounter_low_reg[8]_i_1_n_1\,
      CO(1) => \minTimeCounter_low_reg[8]_i_1_n_2\,
      CO(0) => \minTimeCounter_low_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minTimeCounter_low_reg[8]_i_1_n_4\,
      O(2) => \minTimeCounter_low_reg[8]_i_1_n_5\,
      O(1) => \minTimeCounter_low_reg[8]_i_1_n_6\,
      O(0) => \minTimeCounter_low_reg[8]_i_1_n_7\,
      S(3 downto 0) => minTimeCounter_low_reg(11 downto 8)
    );
\minTimeCounter_low_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => minTimeCounter_low,
      D => \minTimeCounter_low_reg[8]_i_1_n_6\,
      Q => minTimeCounter_low_reg(9),
      R => \minTimeCounter_low[0]_i_1_n_0\
    );
minTimeEr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEEEE200E2E2"
    )
        port map (
      I0 => minTimeEr_i_2_n_0,
      I1 => minTimeEr_i_3_n_0,
      I2 => minTimeEr_i_4_n_0,
      I3 => minTimeEr_i_5_n_0,
      I4 => minTimeEr_i_6_n_0,
      I5 => \^mintimeer_reg_0\,
      O => minTimeEr_i_1_n_0
    );
minTimeEr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => reset,
      I1 => breaking_en,
      I2 => minTimeEr_i_6_n_0,
      I3 => minTimeEr_i_7_n_0,
      O => minTimeEr_i_2_n_0
    );
minTimeEr_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => breaking_en,
      I1 => reset,
      O => minTimeEr_i_3_n_0
    );
minTimeEr_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404FF00000000"
    )
        port map (
      I0 => minTimeOK_low,
      I1 => key2_reg_n_0,
      I2 => key2_prev,
      I3 => minTimeEr_i_8_n_0,
      I4 => minTimeOK_high,
      I5 => minTime_En,
      O => minTimeEr_i_4_n_0
    );
minTimeEr_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555F755F7F7"
    )
        port map (
      I0 => minTimeEr_i_9_n_0,
      I1 => key2_prev,
      I2 => key2_reg_n_0,
      I3 => key1_reg_n_0,
      I4 => key1_prev,
      I5 => minTimeEr_i_7_n_0,
      O => minTimeEr_i_5_n_0
    );
minTimeEr_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFBBFBFBFF"
    )
        port map (
      I0 => minTimeOK_low,
      I1 => minTime_En,
      I2 => key3_prev,
      I3 => key3_reg_n_0,
      I4 => key4_reg_n_0,
      I5 => key4_prev,
      O => minTimeEr_i_6_n_0
    );
minTimeEr_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDDDDFFDFFFDF"
    )
        port map (
      I0 => minTime_En,
      I1 => minTimeOK_high,
      I2 => key2_reg_n_0,
      I3 => key2_prev,
      I4 => key1_prev,
      I5 => key1_reg_n_0,
      O => minTimeEr_i_7_n_0
    );
minTimeEr_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => key1_prev,
      I1 => key1_reg_n_0,
      O => minTimeEr_i_8_n_0
    );
minTimeEr_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => breaking_en,
      I1 => reset,
      O => minTimeEr_i_9_n_0
    );
minTimeEr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => minTimeEr_i_1_n_0,
      Q => \^mintimeer_reg_0\,
      R => '0'
    );
minTimeOK_high_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => minTimeOK_high,
      I1 => \ltOp__31_carry__2_n_0\,
      I2 => reset,
      I3 => \minTimeCounter_high[0]_i_1_n_0\,
      O => minTimeOK_high_i_1_n_0
    );
minTimeOK_high_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => minTimeOK_high_i_1_n_0,
      Q => minTimeOK_high,
      R => '0'
    );
minTimeOK_low_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => minTimeOK_low,
      I1 => \ltOp__15_carry__2_n_0\,
      I2 => reset,
      I3 => \minTimeCounter_low[0]_i_1_n_0\,
      O => minTimeOK_low_i_1_n_0
    );
minTimeOK_low_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => externalCLK,
      CE => '1',
      D => minTimeOK_low_i_1_n_0,
      Q => minTimeOK_low,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Inverter_3lvl_P0N_3lvl_0_5 is
  port (
    externalCLK : in STD_LOGIC;
    ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    deadTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    minTime : in STD_LOGIC_VECTOR ( 31 downto 0 );
    er : in STD_LOGIC;
    minTime_En : in STD_LOGIC;
    minTimeEr : out STD_LOGIC;
    TKin0 : in STD_LOGIC;
    TKin1 : in STD_LOGIC;
    breaking_en : in STD_LOGIC;
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC;
    PWM_out_2 : out STD_LOGIC;
    PWM_out_3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Inverter_3lvl_P0N_3lvl_0_5 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Inverter_3lvl_P0N_3lvl_0_5 : entity is "Inverter_3lvl_P0N_3lvl_0_4,P0N_3lvl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Inverter_3lvl_P0N_3lvl_0_5 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Inverter_3lvl_P0N_3lvl_0_5 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Inverter_3lvl_P0N_3lvl_0_5 : entity is "P0N_3lvl,Vivado 2019.1";
end Inverter_3lvl_P0N_3lvl_0_5;

architecture STRUCTURE of Inverter_3lvl_P0N_3lvl_0_5 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Inverter_3lvl_P0N_3lvl_0_5_P0N_3lvl
     port map (
      PWM_out_0 => PWM_out_0,
      PWM_out_1 => PWM_out_1,
      PWM_out_2 => PWM_out_2,
      PWM_out_3 => PWM_out_3,
      TKin0 => TKin0,
      TKin1 => TKin1,
      breaking_en => breaking_en,
      deadTime(31 downto 0) => deadTime(31 downto 0),
      er => er,
      externalCLK => externalCLK,
      minTime(31 downto 0) => minTime(31 downto 0),
      minTimeEr_reg_0 => minTimeEr,
      minTime_En => minTime_En,
      ready => ready,
      reset => reset
    );
end STRUCTURE;
