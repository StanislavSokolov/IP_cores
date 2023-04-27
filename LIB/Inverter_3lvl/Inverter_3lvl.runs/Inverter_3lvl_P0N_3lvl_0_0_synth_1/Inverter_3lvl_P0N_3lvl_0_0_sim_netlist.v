// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun 11 07:49:59 2021
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Inverter_3lvl_P0N_3lvl_0_0_sim_netlist.v
// Design      : Inverter_3lvl_P0N_3lvl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Inverter_3lvl_P0N_3lvl_0_0,P0N_3lvl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "P0N_3lvl,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (externalCLK,
    ready,
    reset,
    deadTime,
    minTime,
    er,
    minTime_En,
    minTimeEr,
    TKin0,
    TKin1,
    breaking_en,
    PWM_out_0,
    PWM_out_1,
    PWM_out_2,
    PWM_out_3);
  input externalCLK;
  input ready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]deadTime;
  input [31:0]minTime;
  input er;
  input minTime_En;
  output minTimeEr;
  input TKin0;
  input TKin1;
  input breaking_en;
  output PWM_out_0;
  output PWM_out_1;
  output PWM_out_2;
  output PWM_out_3;

  wire PWM_out_0;
  wire PWM_out_1;
  wire PWM_out_2;
  wire PWM_out_3;
  wire TKin0;
  wire TKin1;
  wire breaking_en;
  wire [31:0]deadTime;
  wire er;
  wire externalCLK;
  wire [31:0]minTime;
  wire minTimeEr;
  wire minTime_En;
  wire ready;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_P0N_3lvl U0
       (.PWM_out_0(PWM_out_0),
        .PWM_out_1(PWM_out_1),
        .PWM_out_2(PWM_out_2),
        .PWM_out_3(PWM_out_3),
        .TKin0(TKin0),
        .TKin1(TKin1),
        .breaking_en(breaking_en),
        .deadTime(deadTime),
        .er(er),
        .externalCLK(externalCLK),
        .minTime(minTime),
        .minTimeEr_reg_0(minTimeEr),
        .minTime_En(minTime_En),
        .ready(ready),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_P0N_3lvl
   (minTimeEr_reg_0,
    PWM_out_0,
    PWM_out_1,
    PWM_out_2,
    PWM_out_3,
    reset,
    externalCLK,
    TKin0,
    TKin1,
    breaking_en,
    er,
    ready,
    minTime_En,
    deadTime,
    minTime);
  output minTimeEr_reg_0;
  output PWM_out_0;
  output PWM_out_1;
  output PWM_out_2;
  output PWM_out_3;
  input reset;
  input externalCLK;
  input TKin0;
  input TKin1;
  input breaking_en;
  input er;
  input ready;
  input minTime_En;
  input [31:0]deadTime;
  input [31:0]minTime;

  wire \FSM_onehot_lineconfig[0]_i_1_n_0 ;
  wire \FSM_onehot_lineconfig[0]_i_2_n_0 ;
  wire \FSM_onehot_lineconfig[1]_i_1_n_0 ;
  wire \FSM_onehot_lineconfig[2]_i_1_n_0 ;
  wire \FSM_onehot_lineconfig[2]_i_2_n_0 ;
  wire \FSM_onehot_lineconfig[3]_i_1_n_0 ;
  wire \FSM_onehot_lineconfig[4]_i_1_n_0 ;
  wire \FSM_onehot_lineconfig[5]_i_1_n_0 ;
  wire \FSM_onehot_lineconfig[5]_i_2_n_0 ;
  wire \FSM_onehot_lineconfig[5]_i_3_n_0 ;
  wire \FSM_onehot_lineconfig[6]_i_1_n_0 ;
  wire \FSM_onehot_lineconfig[6]_i_2_n_0 ;
  wire \FSM_onehot_lineconfig[6]_i_3_n_0 ;
  wire \FSM_onehot_lineconfig[6]_i_4_n_0 ;
  wire \FSM_onehot_lineconfig[6]_i_5_n_0 ;
  wire \FSM_onehot_lineconfig[6]_i_6_n_0 ;
  wire \FSM_onehot_lineconfig_reg_n_0_[0] ;
  wire \FSM_onehot_lineconfig_reg_n_0_[1] ;
  wire \FSM_onehot_lineconfig_reg_n_0_[2] ;
  wire \FSM_onehot_lineconfig_reg_n_0_[3] ;
  wire \FSM_onehot_lineconfig_reg_n_0_[4] ;
  wire \FSM_onehot_lineconfig_reg_n_0_[5] ;
  wire \FSM_onehot_lineconfig_reg_n_0_[6] ;
  wire PWM_out_0;
  wire PWM_out_0_i_1_n_0;
  wire PWM_out_1;
  wire PWM_out_1_i_1_n_0;
  wire PWM_out_2;
  wire PWM_out_2_i_1_n_0;
  wire PWM_out_3;
  wire PWM_out_3_i_1_n_0;
  wire TKin0;
  wire TKin0_triggered;
  wire TKin0_triggered28_out;
  wire TKin0_triggered_i_1_n_0;
  wire TKin1;
  wire TKin1_triggered;
  wire TKin1_triggered_i_1_n_0;
  wire \TimeCounter[0]_i_2_n_0 ;
  wire [31:0]TimeCounter_reg;
  wire \TimeCounter_reg[0]_i_1_n_0 ;
  wire \TimeCounter_reg[0]_i_1_n_1 ;
  wire \TimeCounter_reg[0]_i_1_n_2 ;
  wire \TimeCounter_reg[0]_i_1_n_3 ;
  wire \TimeCounter_reg[0]_i_1_n_4 ;
  wire \TimeCounter_reg[0]_i_1_n_5 ;
  wire \TimeCounter_reg[0]_i_1_n_6 ;
  wire \TimeCounter_reg[0]_i_1_n_7 ;
  wire \TimeCounter_reg[12]_i_1_n_0 ;
  wire \TimeCounter_reg[12]_i_1_n_1 ;
  wire \TimeCounter_reg[12]_i_1_n_2 ;
  wire \TimeCounter_reg[12]_i_1_n_3 ;
  wire \TimeCounter_reg[12]_i_1_n_4 ;
  wire \TimeCounter_reg[12]_i_1_n_5 ;
  wire \TimeCounter_reg[12]_i_1_n_6 ;
  wire \TimeCounter_reg[12]_i_1_n_7 ;
  wire \TimeCounter_reg[16]_i_1_n_0 ;
  wire \TimeCounter_reg[16]_i_1_n_1 ;
  wire \TimeCounter_reg[16]_i_1_n_2 ;
  wire \TimeCounter_reg[16]_i_1_n_3 ;
  wire \TimeCounter_reg[16]_i_1_n_4 ;
  wire \TimeCounter_reg[16]_i_1_n_5 ;
  wire \TimeCounter_reg[16]_i_1_n_6 ;
  wire \TimeCounter_reg[16]_i_1_n_7 ;
  wire \TimeCounter_reg[20]_i_1_n_0 ;
  wire \TimeCounter_reg[20]_i_1_n_1 ;
  wire \TimeCounter_reg[20]_i_1_n_2 ;
  wire \TimeCounter_reg[20]_i_1_n_3 ;
  wire \TimeCounter_reg[20]_i_1_n_4 ;
  wire \TimeCounter_reg[20]_i_1_n_5 ;
  wire \TimeCounter_reg[20]_i_1_n_6 ;
  wire \TimeCounter_reg[20]_i_1_n_7 ;
  wire \TimeCounter_reg[24]_i_1_n_0 ;
  wire \TimeCounter_reg[24]_i_1_n_1 ;
  wire \TimeCounter_reg[24]_i_1_n_2 ;
  wire \TimeCounter_reg[24]_i_1_n_3 ;
  wire \TimeCounter_reg[24]_i_1_n_4 ;
  wire \TimeCounter_reg[24]_i_1_n_5 ;
  wire \TimeCounter_reg[24]_i_1_n_6 ;
  wire \TimeCounter_reg[24]_i_1_n_7 ;
  wire \TimeCounter_reg[28]_i_1_n_1 ;
  wire \TimeCounter_reg[28]_i_1_n_2 ;
  wire \TimeCounter_reg[28]_i_1_n_3 ;
  wire \TimeCounter_reg[28]_i_1_n_4 ;
  wire \TimeCounter_reg[28]_i_1_n_5 ;
  wire \TimeCounter_reg[28]_i_1_n_6 ;
  wire \TimeCounter_reg[28]_i_1_n_7 ;
  wire \TimeCounter_reg[4]_i_1_n_0 ;
  wire \TimeCounter_reg[4]_i_1_n_1 ;
  wire \TimeCounter_reg[4]_i_1_n_2 ;
  wire \TimeCounter_reg[4]_i_1_n_3 ;
  wire \TimeCounter_reg[4]_i_1_n_4 ;
  wire \TimeCounter_reg[4]_i_1_n_5 ;
  wire \TimeCounter_reg[4]_i_1_n_6 ;
  wire \TimeCounter_reg[4]_i_1_n_7 ;
  wire \TimeCounter_reg[8]_i_1_n_0 ;
  wire \TimeCounter_reg[8]_i_1_n_1 ;
  wire \TimeCounter_reg[8]_i_1_n_2 ;
  wire \TimeCounter_reg[8]_i_1_n_3 ;
  wire \TimeCounter_reg[8]_i_1_n_4 ;
  wire \TimeCounter_reg[8]_i_1_n_5 ;
  wire \TimeCounter_reg[8]_i_1_n_6 ;
  wire \TimeCounter_reg[8]_i_1_n_7 ;
  wire breaking_en;
  wire [31:0]deadTime;
  wire deadTimeCounterReset_i_1_n_0;
  wire deadTimeCounterReset_i_2_n_0;
  wire deadTimeCounterReset_i_3_n_0;
  wire deadTimeCounterReset_i_4_n_0;
  wire deadTimeCounterReset_i_5_n_0;
  wire deadTimeCounterReset_i_6_n_0;
  wire deadTimeCounterReset_i_7_n_0;
  wire deadTimeCounterReset_reg_n_0;
  wire deadTimeOK;
  wire deadTimeOK_i_1_n_0;
  wire er;
  wire externalCLK;
  wire key1_i_1_n_0;
  wire key1_i_2_n_0;
  wire key1_prev;
  wire key1_reg_n_0;
  wire key2_i_2_n_0;
  wire key2_prev;
  wire key2_reg_n_0;
  wire key3;
  wire key3_i_1_n_0;
  wire key3_prev;
  wire key3_reg_n_0;
  wire key4_i_1_n_0;
  wire key4_prev;
  wire key4_reg_n_0;
  wire ltOp__15_carry__0_i_1_n_0;
  wire ltOp__15_carry__0_i_2_n_0;
  wire ltOp__15_carry__0_i_3_n_0;
  wire ltOp__15_carry__0_i_4_n_0;
  wire ltOp__15_carry__0_i_5_n_0;
  wire ltOp__15_carry__0_i_6_n_0;
  wire ltOp__15_carry__0_i_7_n_0;
  wire ltOp__15_carry__0_i_8_n_0;
  wire ltOp__15_carry__0_n_0;
  wire ltOp__15_carry__0_n_1;
  wire ltOp__15_carry__0_n_2;
  wire ltOp__15_carry__0_n_3;
  wire ltOp__15_carry__1_i_1_n_0;
  wire ltOp__15_carry__1_i_2_n_0;
  wire ltOp__15_carry__1_i_3_n_0;
  wire ltOp__15_carry__1_i_4_n_0;
  wire ltOp__15_carry__1_i_5_n_0;
  wire ltOp__15_carry__1_i_6_n_0;
  wire ltOp__15_carry__1_i_7_n_0;
  wire ltOp__15_carry__1_i_8_n_0;
  wire ltOp__15_carry__1_n_0;
  wire ltOp__15_carry__1_n_1;
  wire ltOp__15_carry__1_n_2;
  wire ltOp__15_carry__1_n_3;
  wire ltOp__15_carry__2_i_1_n_0;
  wire ltOp__15_carry__2_i_2_n_0;
  wire ltOp__15_carry__2_i_3_n_0;
  wire ltOp__15_carry__2_i_4_n_0;
  wire ltOp__15_carry__2_i_5_n_0;
  wire ltOp__15_carry__2_i_6_n_0;
  wire ltOp__15_carry__2_i_7_n_0;
  wire ltOp__15_carry__2_i_8_n_0;
  wire ltOp__15_carry__2_n_0;
  wire ltOp__15_carry__2_n_1;
  wire ltOp__15_carry__2_n_2;
  wire ltOp__15_carry__2_n_3;
  wire ltOp__15_carry_i_1_n_0;
  wire ltOp__15_carry_i_2_n_0;
  wire ltOp__15_carry_i_3_n_0;
  wire ltOp__15_carry_i_4_n_0;
  wire ltOp__15_carry_i_5_n_0;
  wire ltOp__15_carry_i_6_n_0;
  wire ltOp__15_carry_i_7_n_0;
  wire ltOp__15_carry_i_8_n_0;
  wire ltOp__15_carry_n_0;
  wire ltOp__15_carry_n_1;
  wire ltOp__15_carry_n_2;
  wire ltOp__15_carry_n_3;
  wire ltOp__31_carry__0_n_0;
  wire ltOp__31_carry__0_n_1;
  wire ltOp__31_carry__0_n_2;
  wire ltOp__31_carry__0_n_3;
  wire ltOp__31_carry__1_n_0;
  wire ltOp__31_carry__1_n_1;
  wire ltOp__31_carry__1_n_2;
  wire ltOp__31_carry__1_n_3;
  wire ltOp__31_carry__2_n_0;
  wire ltOp__31_carry__2_n_1;
  wire ltOp__31_carry__2_n_2;
  wire ltOp__31_carry__2_n_3;
  wire ltOp__31_carry_i_1__0_n_0;
  wire ltOp__31_carry_i_1__1_n_0;
  wire ltOp__31_carry_i_1__2_n_0;
  wire ltOp__31_carry_i_1_n_0;
  wire ltOp__31_carry_i_2__0_n_0;
  wire ltOp__31_carry_i_2__1_n_0;
  wire ltOp__31_carry_i_2__2_n_0;
  wire ltOp__31_carry_i_2_n_0;
  wire ltOp__31_carry_i_3__0_n_0;
  wire ltOp__31_carry_i_3__1_n_0;
  wire ltOp__31_carry_i_3__2_n_0;
  wire ltOp__31_carry_i_3_n_0;
  wire ltOp__31_carry_i_4__0_n_0;
  wire ltOp__31_carry_i_4__1_n_0;
  wire ltOp__31_carry_i_4__2_n_0;
  wire ltOp__31_carry_i_4_n_0;
  wire ltOp__31_carry_i_5__0_n_0;
  wire ltOp__31_carry_i_5__1_n_0;
  wire ltOp__31_carry_i_5__2_n_0;
  wire ltOp__31_carry_i_5_n_0;
  wire ltOp__31_carry_i_6__0_n_0;
  wire ltOp__31_carry_i_6__1_n_0;
  wire ltOp__31_carry_i_6__2_n_0;
  wire ltOp__31_carry_i_6_n_0;
  wire ltOp__31_carry_i_7__0_n_0;
  wire ltOp__31_carry_i_7__1_n_0;
  wire ltOp__31_carry_i_7__2_n_0;
  wire ltOp__31_carry_i_7_n_0;
  wire ltOp__31_carry_i_8__0_n_0;
  wire ltOp__31_carry_i_8__1_n_0;
  wire ltOp__31_carry_i_8__2_n_0;
  wire ltOp__31_carry_i_8_n_0;
  wire ltOp__31_carry_n_0;
  wire ltOp__31_carry_n_1;
  wire ltOp__31_carry_n_2;
  wire ltOp__31_carry_n_3;
  wire ltOp_carry__0_i_1_n_0;
  wire ltOp_carry__0_i_2_n_0;
  wire ltOp_carry__0_i_3_n_0;
  wire ltOp_carry__0_i_4_n_0;
  wire ltOp_carry__0_i_5_n_0;
  wire ltOp_carry__0_i_6_n_0;
  wire ltOp_carry__0_i_7_n_0;
  wire ltOp_carry__0_i_8_n_0;
  wire ltOp_carry__0_n_0;
  wire ltOp_carry__0_n_1;
  wire ltOp_carry__0_n_2;
  wire ltOp_carry__0_n_3;
  wire ltOp_carry__1_i_1_n_0;
  wire ltOp_carry__1_i_2_n_0;
  wire ltOp_carry__1_i_3_n_0;
  wire ltOp_carry__1_i_4_n_0;
  wire ltOp_carry__1_i_5_n_0;
  wire ltOp_carry__1_i_6_n_0;
  wire ltOp_carry__1_i_7_n_0;
  wire ltOp_carry__1_i_8_n_0;
  wire ltOp_carry__1_n_0;
  wire ltOp_carry__1_n_1;
  wire ltOp_carry__1_n_2;
  wire ltOp_carry__1_n_3;
  wire ltOp_carry__2_i_1_n_0;
  wire ltOp_carry__2_i_2_n_0;
  wire ltOp_carry__2_i_3_n_0;
  wire ltOp_carry__2_i_4_n_0;
  wire ltOp_carry__2_i_5_n_0;
  wire ltOp_carry__2_i_6_n_0;
  wire ltOp_carry__2_i_7_n_0;
  wire ltOp_carry__2_i_8_n_0;
  wire ltOp_carry__2_n_1;
  wire ltOp_carry__2_n_2;
  wire ltOp_carry__2_n_3;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8_n_0;
  wire ltOp_carry_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire [31:0]minTime;
  wire minTimeCounter_high;
  wire \minTimeCounter_high[0]_i_1_n_0 ;
  wire \minTimeCounter_high[0]_i_4_n_0 ;
  wire [31:0]minTimeCounter_high_reg;
  wire \minTimeCounter_high_reg[0]_i_3_n_0 ;
  wire \minTimeCounter_high_reg[0]_i_3_n_1 ;
  wire \minTimeCounter_high_reg[0]_i_3_n_2 ;
  wire \minTimeCounter_high_reg[0]_i_3_n_3 ;
  wire \minTimeCounter_high_reg[0]_i_3_n_4 ;
  wire \minTimeCounter_high_reg[0]_i_3_n_5 ;
  wire \minTimeCounter_high_reg[0]_i_3_n_6 ;
  wire \minTimeCounter_high_reg[0]_i_3_n_7 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_0 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_1 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_2 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_3 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_4 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_5 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_6 ;
  wire \minTimeCounter_high_reg[12]_i_1_n_7 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_0 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_1 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_2 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_3 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_4 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_5 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_6 ;
  wire \minTimeCounter_high_reg[16]_i_1_n_7 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_0 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_1 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_2 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_3 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_4 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_5 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_6 ;
  wire \minTimeCounter_high_reg[20]_i_1_n_7 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_0 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_1 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_2 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_3 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_4 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_5 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_6 ;
  wire \minTimeCounter_high_reg[24]_i_1_n_7 ;
  wire \minTimeCounter_high_reg[28]_i_1_n_1 ;
  wire \minTimeCounter_high_reg[28]_i_1_n_2 ;
  wire \minTimeCounter_high_reg[28]_i_1_n_3 ;
  wire \minTimeCounter_high_reg[28]_i_1_n_4 ;
  wire \minTimeCounter_high_reg[28]_i_1_n_5 ;
  wire \minTimeCounter_high_reg[28]_i_1_n_6 ;
  wire \minTimeCounter_high_reg[28]_i_1_n_7 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_0 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_1 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_2 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_3 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_4 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_5 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_6 ;
  wire \minTimeCounter_high_reg[4]_i_1_n_7 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_0 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_1 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_2 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_3 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_4 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_5 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_6 ;
  wire \minTimeCounter_high_reg[8]_i_1_n_7 ;
  wire minTimeCounter_low;
  wire \minTimeCounter_low[0]_i_1_n_0 ;
  wire \minTimeCounter_low[0]_i_4_n_0 ;
  wire \minTimeCounter_low[0]_i_5_n_0 ;
  wire [31:0]minTimeCounter_low_reg;
  wire \minTimeCounter_low_reg[0]_i_3_n_0 ;
  wire \minTimeCounter_low_reg[0]_i_3_n_1 ;
  wire \minTimeCounter_low_reg[0]_i_3_n_2 ;
  wire \minTimeCounter_low_reg[0]_i_3_n_3 ;
  wire \minTimeCounter_low_reg[0]_i_3_n_4 ;
  wire \minTimeCounter_low_reg[0]_i_3_n_5 ;
  wire \minTimeCounter_low_reg[0]_i_3_n_6 ;
  wire \minTimeCounter_low_reg[0]_i_3_n_7 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_0 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_1 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_2 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_3 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_4 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_5 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_6 ;
  wire \minTimeCounter_low_reg[12]_i_1_n_7 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_0 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_1 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_2 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_3 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_4 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_5 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_6 ;
  wire \minTimeCounter_low_reg[16]_i_1_n_7 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_0 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_1 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_2 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_3 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_4 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_5 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_6 ;
  wire \minTimeCounter_low_reg[20]_i_1_n_7 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_0 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_1 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_2 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_3 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_4 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_5 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_6 ;
  wire \minTimeCounter_low_reg[24]_i_1_n_7 ;
  wire \minTimeCounter_low_reg[28]_i_1_n_1 ;
  wire \minTimeCounter_low_reg[28]_i_1_n_2 ;
  wire \minTimeCounter_low_reg[28]_i_1_n_3 ;
  wire \minTimeCounter_low_reg[28]_i_1_n_4 ;
  wire \minTimeCounter_low_reg[28]_i_1_n_5 ;
  wire \minTimeCounter_low_reg[28]_i_1_n_6 ;
  wire \minTimeCounter_low_reg[28]_i_1_n_7 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_0 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_1 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_2 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_3 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_4 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_5 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_6 ;
  wire \minTimeCounter_low_reg[4]_i_1_n_7 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_0 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_1 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_2 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_3 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_4 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_5 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_6 ;
  wire \minTimeCounter_low_reg[8]_i_1_n_7 ;
  wire minTimeEr_i_1_n_0;
  wire minTimeEr_i_2_n_0;
  wire minTimeEr_i_3_n_0;
  wire minTimeEr_i_4_n_0;
  wire minTimeEr_i_5_n_0;
  wire minTimeEr_i_6_n_0;
  wire minTimeEr_i_7_n_0;
  wire minTimeEr_i_8_n_0;
  wire minTimeEr_i_9_n_0;
  wire minTimeEr_reg_0;
  wire minTimeOK_high;
  wire minTimeOK_high_i_1_n_0;
  wire minTimeOK_low;
  wire minTimeOK_low_i_1_n_0;
  wire minTime_En;
  wire p_0_in;
  wire ready;
  wire reset;
  wire sel;
  wire [3:3]\NLW_TimeCounter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_ltOp__15_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__15_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__15_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__15_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__31_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__31_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__31_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__31_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_minTimeCounter_high_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_minTimeCounter_low_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \FSM_onehot_lineconfig[0]_i_1 
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I4(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I5(\FSM_onehot_lineconfig[0]_i_2_n_0 ),
        .O(\FSM_onehot_lineconfig[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_lineconfig[0]_i_2 
       (.I0(TKin1),
        .I1(TKin0),
        .O(\FSM_onehot_lineconfig[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF00000000)) 
    \FSM_onehot_lineconfig[1]_i_1 
       (.I0(TKin1),
        .I1(TKin1_triggered),
        .I2(TKin0_triggered),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I4(\FSM_onehot_lineconfig[5]_i_2_n_0 ),
        .I5(TKin0),
        .O(\FSM_onehot_lineconfig[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00EFEF0F)) 
    \FSM_onehot_lineconfig[2]_i_1 
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I2(\FSM_onehot_lineconfig[2]_i_2_n_0 ),
        .I3(TKin0),
        .I4(TKin1),
        .O(\FSM_onehot_lineconfig[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h900990099009FFFF)) 
    \FSM_onehot_lineconfig[2]_i_2 
       (.I0(TKin1),
        .I1(TKin1_triggered),
        .I2(TKin0),
        .I3(TKin0_triggered),
        .I4(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I5(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .O(\FSM_onehot_lineconfig[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055D50000)) 
    \FSM_onehot_lineconfig[3]_i_1 
       (.I0(\FSM_onehot_lineconfig[5]_i_2_n_0 ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I2(TKin1_triggered),
        .I3(TKin0_triggered),
        .I4(TKin1),
        .I5(TKin0),
        .O(\FSM_onehot_lineconfig[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2230)) 
    \FSM_onehot_lineconfig[4]_i_1 
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .I1(TKin0),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I3(TKin1),
        .O(\FSM_onehot_lineconfig[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CFF0C0D00050005)) 
    \FSM_onehot_lineconfig[5]_i_1 
       (.I0(\FSM_onehot_lineconfig[5]_i_2_n_0 ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I2(TKin1),
        .I3(TKin0),
        .I4(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I5(\FSM_onehot_lineconfig[5]_i_3_n_0 ),
        .O(\FSM_onehot_lineconfig[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_lineconfig[5]_i_2 
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[0] ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[2] ),
        .O(\FSM_onehot_lineconfig[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_lineconfig[5]_i_3 
       (.I0(TKin0_triggered),
        .I1(TKin0),
        .I2(TKin1_triggered),
        .I3(TKin1),
        .O(\FSM_onehot_lineconfig[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_lineconfig[6]_i_1 
       (.I0(\FSM_onehot_lineconfig[6]_i_3_n_0 ),
        .I1(\FSM_onehot_lineconfig[6]_i_4_n_0 ),
        .I2(breaking_en),
        .O(\FSM_onehot_lineconfig[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \FSM_onehot_lineconfig[6]_i_2 
       (.I0(TKin1),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I2(TKin0),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .O(\FSM_onehot_lineconfig[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEECAE)) 
    \FSM_onehot_lineconfig[6]_i_3 
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I2(TKin1),
        .I3(TKin0),
        .I4(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .O(\FSM_onehot_lineconfig[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAFFFFAAAA)) 
    \FSM_onehot_lineconfig[6]_i_4 
       (.I0(\FSM_onehot_lineconfig[6]_i_5_n_0 ),
        .I1(er),
        .I2(ready),
        .I3(\FSM_onehot_lineconfig[6]_i_6_n_0 ),
        .I4(deadTimeOK),
        .I5(\FSM_onehot_lineconfig[2]_i_2_n_0 ),
        .O(\FSM_onehot_lineconfig[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFC88A0A8)) 
    \FSM_onehot_lineconfig[6]_i_5 
       (.I0(deadTimeOK),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I3(TKin1),
        .I4(TKin0),
        .O(\FSM_onehot_lineconfig[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF232323)) 
    \FSM_onehot_lineconfig[6]_i_6 
       (.I0(deadTimeCounterReset_reg_n_0),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[0] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[2] ),
        .I3(TKin1),
        .I4(TKin0),
        .O(\FSM_onehot_lineconfig[6]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_lineconfig_reg[0] 
       (.C(externalCLK),
        .CE(\FSM_onehot_lineconfig[6]_i_1_n_0 ),
        .D(\FSM_onehot_lineconfig[0]_i_1_n_0 ),
        .Q(\FSM_onehot_lineconfig_reg_n_0_[0] ),
        .S(reset));
  (* FSM_ENCODED_STATES = "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_lineconfig_reg[1] 
       (.C(externalCLK),
        .CE(\FSM_onehot_lineconfig[6]_i_1_n_0 ),
        .D(\FSM_onehot_lineconfig[1]_i_1_n_0 ),
        .Q(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_lineconfig_reg[2] 
       (.C(externalCLK),
        .CE(\FSM_onehot_lineconfig[6]_i_1_n_0 ),
        .D(\FSM_onehot_lineconfig[2]_i_1_n_0 ),
        .Q(\FSM_onehot_lineconfig_reg_n_0_[2] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_lineconfig_reg[3] 
       (.C(externalCLK),
        .CE(\FSM_onehot_lineconfig[6]_i_1_n_0 ),
        .D(\FSM_onehot_lineconfig[3]_i_1_n_0 ),
        .Q(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_lineconfig_reg[4] 
       (.C(externalCLK),
        .CE(\FSM_onehot_lineconfig[6]_i_1_n_0 ),
        .D(\FSM_onehot_lineconfig[4]_i_1_n_0 ),
        .Q(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_lineconfig_reg[5] 
       (.C(externalCLK),
        .CE(\FSM_onehot_lineconfig[6]_i_1_n_0 ),
        .D(\FSM_onehot_lineconfig[5]_i_1_n_0 ),
        .Q(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "p:0001000,zero:0100000,n:0000010,zero_p:0010000,closed:0000001,tech_closed:0000100,zero_n:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_lineconfig_reg[6] 
       (.C(externalCLK),
        .CE(\FSM_onehot_lineconfig[6]_i_1_n_0 ),
        .D(\FSM_onehot_lineconfig[6]_i_2_n_0 ),
        .Q(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    PWM_out_0_i_1
       (.I0(key1_reg_n_0),
        .I1(er),
        .I2(ready),
        .I3(minTimeEr_reg_0),
        .O(PWM_out_0_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    PWM_out_0_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(PWM_out_0_i_1_n_0),
        .Q(PWM_out_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    PWM_out_1_i_1
       (.I0(key2_reg_n_0),
        .I1(er),
        .I2(ready),
        .I3(minTimeEr_reg_0),
        .O(PWM_out_1_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    PWM_out_1_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(PWM_out_1_i_1_n_0),
        .Q(PWM_out_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    PWM_out_2_i_1
       (.I0(key3_reg_n_0),
        .I1(minTimeEr_reg_0),
        .I2(ready),
        .I3(er),
        .I4(breaking_en),
        .O(PWM_out_2_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    PWM_out_2_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(PWM_out_2_i_1_n_0),
        .Q(PWM_out_2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    PWM_out_3_i_1
       (.I0(key4_reg_n_0),
        .I1(minTimeEr_reg_0),
        .I2(ready),
        .I3(er),
        .I4(breaking_en),
        .O(PWM_out_3_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    PWM_out_3_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(PWM_out_3_i_1_n_0),
        .Q(PWM_out_3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA08FFFFAA080000)) 
    TKin0_triggered_i_1
       (.I0(TKin0),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I2(TKin1),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .I4(TKin0_triggered28_out),
        .I5(TKin0_triggered),
        .O(TKin0_triggered_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    TKin0_triggered_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(TKin0_triggered_i_1_n_0),
        .Q(TKin0_triggered),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA08FFFFAA080000)) 
    TKin1_triggered_i_1
       (.I0(TKin1),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I2(TKin0),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .I4(TKin0_triggered28_out),
        .I5(TKin1_triggered),
        .O(TKin1_triggered_i_1_n_0));
  LUT6 #(
    .INIT(64'h22AA22A820AA2020)) 
    TKin1_triggered_i_2
       (.I0(minTimeEr_i_9_n_0),
        .I1(TKin1),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I3(TKin0),
        .I4(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I5(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .O(TKin0_triggered28_out));
  FDRE #(
    .INIT(1'b1)) 
    TKin1_triggered_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(TKin1_triggered_i_1_n_0),
        .Q(TKin1_triggered),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \TimeCounter[0]_i_2 
       (.I0(TimeCounter_reg[0]),
        .O(\TimeCounter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[0] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[0]_i_1_n_7 ),
        .Q(TimeCounter_reg[0]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\TimeCounter_reg[0]_i_1_n_0 ,\TimeCounter_reg[0]_i_1_n_1 ,\TimeCounter_reg[0]_i_1_n_2 ,\TimeCounter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\TimeCounter_reg[0]_i_1_n_4 ,\TimeCounter_reg[0]_i_1_n_5 ,\TimeCounter_reg[0]_i_1_n_6 ,\TimeCounter_reg[0]_i_1_n_7 }),
        .S({TimeCounter_reg[3:1],\TimeCounter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[10] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[8]_i_1_n_5 ),
        .Q(TimeCounter_reg[10]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[11] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[8]_i_1_n_4 ),
        .Q(TimeCounter_reg[11]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[12] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[12]_i_1_n_7 ),
        .Q(TimeCounter_reg[12]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[12]_i_1 
       (.CI(\TimeCounter_reg[8]_i_1_n_0 ),
        .CO({\TimeCounter_reg[12]_i_1_n_0 ,\TimeCounter_reg[12]_i_1_n_1 ,\TimeCounter_reg[12]_i_1_n_2 ,\TimeCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\TimeCounter_reg[12]_i_1_n_4 ,\TimeCounter_reg[12]_i_1_n_5 ,\TimeCounter_reg[12]_i_1_n_6 ,\TimeCounter_reg[12]_i_1_n_7 }),
        .S(TimeCounter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[13] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[12]_i_1_n_6 ),
        .Q(TimeCounter_reg[13]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[14] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[12]_i_1_n_5 ),
        .Q(TimeCounter_reg[14]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[15] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[12]_i_1_n_4 ),
        .Q(TimeCounter_reg[15]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[16] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[16]_i_1_n_7 ),
        .Q(TimeCounter_reg[16]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[16]_i_1 
       (.CI(\TimeCounter_reg[12]_i_1_n_0 ),
        .CO({\TimeCounter_reg[16]_i_1_n_0 ,\TimeCounter_reg[16]_i_1_n_1 ,\TimeCounter_reg[16]_i_1_n_2 ,\TimeCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\TimeCounter_reg[16]_i_1_n_4 ,\TimeCounter_reg[16]_i_1_n_5 ,\TimeCounter_reg[16]_i_1_n_6 ,\TimeCounter_reg[16]_i_1_n_7 }),
        .S(TimeCounter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[17] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[16]_i_1_n_6 ),
        .Q(TimeCounter_reg[17]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[18] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[16]_i_1_n_5 ),
        .Q(TimeCounter_reg[18]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[19] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[16]_i_1_n_4 ),
        .Q(TimeCounter_reg[19]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[1] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[0]_i_1_n_6 ),
        .Q(TimeCounter_reg[1]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[20] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[20]_i_1_n_7 ),
        .Q(TimeCounter_reg[20]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[20]_i_1 
       (.CI(\TimeCounter_reg[16]_i_1_n_0 ),
        .CO({\TimeCounter_reg[20]_i_1_n_0 ,\TimeCounter_reg[20]_i_1_n_1 ,\TimeCounter_reg[20]_i_1_n_2 ,\TimeCounter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\TimeCounter_reg[20]_i_1_n_4 ,\TimeCounter_reg[20]_i_1_n_5 ,\TimeCounter_reg[20]_i_1_n_6 ,\TimeCounter_reg[20]_i_1_n_7 }),
        .S(TimeCounter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[21] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[20]_i_1_n_6 ),
        .Q(TimeCounter_reg[21]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[22] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[20]_i_1_n_5 ),
        .Q(TimeCounter_reg[22]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[23] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[20]_i_1_n_4 ),
        .Q(TimeCounter_reg[23]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[24] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[24]_i_1_n_7 ),
        .Q(TimeCounter_reg[24]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[24]_i_1 
       (.CI(\TimeCounter_reg[20]_i_1_n_0 ),
        .CO({\TimeCounter_reg[24]_i_1_n_0 ,\TimeCounter_reg[24]_i_1_n_1 ,\TimeCounter_reg[24]_i_1_n_2 ,\TimeCounter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\TimeCounter_reg[24]_i_1_n_4 ,\TimeCounter_reg[24]_i_1_n_5 ,\TimeCounter_reg[24]_i_1_n_6 ,\TimeCounter_reg[24]_i_1_n_7 }),
        .S(TimeCounter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[25] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[24]_i_1_n_6 ),
        .Q(TimeCounter_reg[25]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[26] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[24]_i_1_n_5 ),
        .Q(TimeCounter_reg[26]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[27] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[24]_i_1_n_4 ),
        .Q(TimeCounter_reg[27]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[28] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[28]_i_1_n_7 ),
        .Q(TimeCounter_reg[28]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[28]_i_1 
       (.CI(\TimeCounter_reg[24]_i_1_n_0 ),
        .CO({\NLW_TimeCounter_reg[28]_i_1_CO_UNCONNECTED [3],\TimeCounter_reg[28]_i_1_n_1 ,\TimeCounter_reg[28]_i_1_n_2 ,\TimeCounter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\TimeCounter_reg[28]_i_1_n_4 ,\TimeCounter_reg[28]_i_1_n_5 ,\TimeCounter_reg[28]_i_1_n_6 ,\TimeCounter_reg[28]_i_1_n_7 }),
        .S(TimeCounter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[29] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[28]_i_1_n_6 ),
        .Q(TimeCounter_reg[29]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[2] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[0]_i_1_n_5 ),
        .Q(TimeCounter_reg[2]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[30] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[28]_i_1_n_5 ),
        .Q(TimeCounter_reg[30]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[31] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[28]_i_1_n_4 ),
        .Q(TimeCounter_reg[31]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[3] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[0]_i_1_n_4 ),
        .Q(TimeCounter_reg[3]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[4] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[4]_i_1_n_7 ),
        .Q(TimeCounter_reg[4]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[4]_i_1 
       (.CI(\TimeCounter_reg[0]_i_1_n_0 ),
        .CO({\TimeCounter_reg[4]_i_1_n_0 ,\TimeCounter_reg[4]_i_1_n_1 ,\TimeCounter_reg[4]_i_1_n_2 ,\TimeCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\TimeCounter_reg[4]_i_1_n_4 ,\TimeCounter_reg[4]_i_1_n_5 ,\TimeCounter_reg[4]_i_1_n_6 ,\TimeCounter_reg[4]_i_1_n_7 }),
        .S(TimeCounter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[5] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[4]_i_1_n_6 ),
        .Q(TimeCounter_reg[5]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[6] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[4]_i_1_n_5 ),
        .Q(TimeCounter_reg[6]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[7] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[4]_i_1_n_4 ),
        .Q(TimeCounter_reg[7]),
        .R(deadTimeCounterReset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[8] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[8]_i_1_n_7 ),
        .Q(TimeCounter_reg[8]),
        .R(deadTimeCounterReset_reg_n_0));
  CARRY4 \TimeCounter_reg[8]_i_1 
       (.CI(\TimeCounter_reg[4]_i_1_n_0 ),
        .CO({\TimeCounter_reg[8]_i_1_n_0 ,\TimeCounter_reg[8]_i_1_n_1 ,\TimeCounter_reg[8]_i_1_n_2 ,\TimeCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\TimeCounter_reg[8]_i_1_n_4 ,\TimeCounter_reg[8]_i_1_n_5 ,\TimeCounter_reg[8]_i_1_n_6 ,\TimeCounter_reg[8]_i_1_n_7 }),
        .S(TimeCounter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCounter_reg[9] 
       (.C(externalCLK),
        .CE(sel),
        .D(\TimeCounter_reg[8]_i_1_n_6 ),
        .Q(TimeCounter_reg[9]),
        .R(deadTimeCounterReset_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE0000000E)) 
    deadTimeCounterReset_i_1
       (.I0(deadTimeCounterReset_i_2_n_0),
        .I1(\FSM_onehot_lineconfig[6]_i_4_n_0 ),
        .I2(reset),
        .I3(breaking_en),
        .I4(deadTimeCounterReset_i_3_n_0),
        .I5(deadTimeCounterReset_reg_n_0),
        .O(deadTimeCounterReset_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    deadTimeCounterReset_i_2
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .O(deadTimeCounterReset_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000022220020)) 
    deadTimeCounterReset_i_3
       (.I0(deadTimeCounterReset_i_4_n_0),
        .I1(deadTimeCounterReset_i_2_n_0),
        .I2(deadTimeCounterReset_i_5_n_0),
        .I3(deadTimeCounterReset_i_6_n_0),
        .I4(\FSM_onehot_lineconfig[5]_i_2_n_0 ),
        .I5(deadTimeCounterReset_i_7_n_0),
        .O(deadTimeCounterReset_i_3_n_0));
  LUT6 #(
    .INIT(64'h555D555555555555)) 
    deadTimeCounterReset_i_4
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I1(deadTimeOK),
        .I2(TKin1),
        .I3(TKin1_triggered),
        .I4(TKin0),
        .I5(TKin0_triggered),
        .O(deadTimeCounterReset_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    deadTimeCounterReset_i_5
       (.I0(deadTimeOK),
        .I1(ready),
        .I2(er),
        .O(deadTimeCounterReset_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF777)) 
    deadTimeCounterReset_i_6
       (.I0(TKin0),
        .I1(TKin1),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[2] ),
        .I3(deadTimeCounterReset_reg_n_0),
        .O(deadTimeCounterReset_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAAAAA)) 
    deadTimeCounterReset_i_7
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I1(TKin1),
        .I2(TKin0),
        .I3(deadTimeOK),
        .I4(TKin0_triggered),
        .I5(TKin1_triggered),
        .O(deadTimeCounterReset_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    deadTimeCounterReset_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(deadTimeCounterReset_i_1_n_0),
        .Q(deadTimeCounterReset_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    deadTimeOK_i_1
       (.I0(sel),
        .I1(deadTimeOK),
        .I2(deadTimeCounterReset_reg_n_0),
        .O(deadTimeOK_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    deadTimeOK_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(deadTimeOK_i_1_n_0),
        .Q(deadTimeOK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDDDD0DDDDDDDD)) 
    key1_i_1
       (.I0(breaking_en),
        .I1(TKin0),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .I4(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I5(key1_i_2_n_0),
        .O(key1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    key1_i_2
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[2] ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[0] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I3(breaking_en),
        .O(key1_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    key1_prev_reg
       (.C(externalCLK),
        .CE(p_0_in),
        .D(key1_reg_n_0),
        .Q(key1_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    key1_reg
       (.C(externalCLK),
        .CE(p_0_in),
        .D(key1_i_1_n_0),
        .Q(key1_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    key2_i_1
       (.I0(reset),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFFC)) 
    key2_i_2
       (.I0(TKin1),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[2] ),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[0] ),
        .I4(\FSM_onehot_lineconfig_reg_n_0_[1] ),
        .I5(breaking_en),
        .O(key2_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    key2_prev_reg
       (.C(externalCLK),
        .CE(p_0_in),
        .D(key2_reg_n_0),
        .Q(key2_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    key2_reg
       (.C(externalCLK),
        .CE(p_0_in),
        .D(key2_i_2_n_0),
        .Q(key2_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAFCFF)) 
    key3_i_1
       (.I0(key3_reg_n_0),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I3(\FSM_onehot_lineconfig[5]_i_2_n_0 ),
        .I4(reset),
        .I5(breaking_en),
        .O(key3_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    key3_prev_reg
       (.C(externalCLK),
        .CE(p_0_in),
        .D(key3_reg_n_0),
        .Q(key3_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    key3_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(key3_i_1_n_0),
        .Q(key3_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAFFFC)) 
    key4_i_1
       (.I0(key4_reg_n_0),
        .I1(key3),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[6] ),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[5] ),
        .I4(reset),
        .I5(breaking_en),
        .O(key4_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    key4_i_2
       (.I0(\FSM_onehot_lineconfig_reg_n_0_[2] ),
        .I1(\FSM_onehot_lineconfig_reg_n_0_[0] ),
        .I2(\FSM_onehot_lineconfig_reg_n_0_[4] ),
        .I3(\FSM_onehot_lineconfig_reg_n_0_[3] ),
        .O(key3));
  FDRE #(
    .INIT(1'b1)) 
    key4_prev_reg
       (.C(externalCLK),
        .CE(p_0_in),
        .D(key4_reg_n_0),
        .Q(key4_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    key4_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(key4_i_1_n_0),
        .Q(key4_reg_n_0),
        .R(1'b0));
  CARRY4 ltOp__15_carry
       (.CI(1'b0),
        .CO({ltOp__15_carry_n_0,ltOp__15_carry_n_1,ltOp__15_carry_n_2,ltOp__15_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__15_carry_i_1_n_0,ltOp__15_carry_i_2_n_0,ltOp__15_carry_i_3_n_0,ltOp__15_carry_i_4_n_0}),
        .O(NLW_ltOp__15_carry_O_UNCONNECTED[3:0]),
        .S({ltOp__15_carry_i_5_n_0,ltOp__15_carry_i_6_n_0,ltOp__15_carry_i_7_n_0,ltOp__15_carry_i_8_n_0}));
  CARRY4 ltOp__15_carry__0
       (.CI(ltOp__15_carry_n_0),
        .CO({ltOp__15_carry__0_n_0,ltOp__15_carry__0_n_1,ltOp__15_carry__0_n_2,ltOp__15_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__15_carry__0_i_1_n_0,ltOp__15_carry__0_i_2_n_0,ltOp__15_carry__0_i_3_n_0,ltOp__15_carry__0_i_4_n_0}),
        .O(NLW_ltOp__15_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp__15_carry__0_i_5_n_0,ltOp__15_carry__0_i_6_n_0,ltOp__15_carry__0_i_7_n_0,ltOp__15_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__0_i_1
       (.I0(minTime[15]),
        .I1(minTimeCounter_low_reg[15]),
        .I2(minTime[14]),
        .I3(minTimeCounter_low_reg[14]),
        .O(ltOp__15_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__0_i_2
       (.I0(minTime[13]),
        .I1(minTimeCounter_low_reg[13]),
        .I2(minTime[12]),
        .I3(minTimeCounter_low_reg[12]),
        .O(ltOp__15_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__0_i_3
       (.I0(minTime[11]),
        .I1(minTimeCounter_low_reg[11]),
        .I2(minTime[10]),
        .I3(minTimeCounter_low_reg[10]),
        .O(ltOp__15_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__0_i_4
       (.I0(minTime[9]),
        .I1(minTimeCounter_low_reg[9]),
        .I2(minTime[8]),
        .I3(minTimeCounter_low_reg[8]),
        .O(ltOp__15_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__0_i_5
       (.I0(minTimeCounter_low_reg[15]),
        .I1(minTime[15]),
        .I2(minTimeCounter_low_reg[14]),
        .I3(minTime[14]),
        .O(ltOp__15_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__0_i_6
       (.I0(minTimeCounter_low_reg[13]),
        .I1(minTime[13]),
        .I2(minTimeCounter_low_reg[12]),
        .I3(minTime[12]),
        .O(ltOp__15_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__0_i_7
       (.I0(minTimeCounter_low_reg[11]),
        .I1(minTime[11]),
        .I2(minTimeCounter_low_reg[10]),
        .I3(minTime[10]),
        .O(ltOp__15_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__0_i_8
       (.I0(minTimeCounter_low_reg[9]),
        .I1(minTime[9]),
        .I2(minTimeCounter_low_reg[8]),
        .I3(minTime[8]),
        .O(ltOp__15_carry__0_i_8_n_0));
  CARRY4 ltOp__15_carry__1
       (.CI(ltOp__15_carry__0_n_0),
        .CO({ltOp__15_carry__1_n_0,ltOp__15_carry__1_n_1,ltOp__15_carry__1_n_2,ltOp__15_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__15_carry__1_i_1_n_0,ltOp__15_carry__1_i_2_n_0,ltOp__15_carry__1_i_3_n_0,ltOp__15_carry__1_i_4_n_0}),
        .O(NLW_ltOp__15_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp__15_carry__1_i_5_n_0,ltOp__15_carry__1_i_6_n_0,ltOp__15_carry__1_i_7_n_0,ltOp__15_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__1_i_1
       (.I0(minTime[23]),
        .I1(minTimeCounter_low_reg[23]),
        .I2(minTime[22]),
        .I3(minTimeCounter_low_reg[22]),
        .O(ltOp__15_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__1_i_2
       (.I0(minTime[21]),
        .I1(minTimeCounter_low_reg[21]),
        .I2(minTime[20]),
        .I3(minTimeCounter_low_reg[20]),
        .O(ltOp__15_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__1_i_3
       (.I0(minTime[19]),
        .I1(minTimeCounter_low_reg[19]),
        .I2(minTime[18]),
        .I3(minTimeCounter_low_reg[18]),
        .O(ltOp__15_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__1_i_4
       (.I0(minTime[17]),
        .I1(minTimeCounter_low_reg[17]),
        .I2(minTime[16]),
        .I3(minTimeCounter_low_reg[16]),
        .O(ltOp__15_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__1_i_5
       (.I0(minTimeCounter_low_reg[23]),
        .I1(minTime[23]),
        .I2(minTimeCounter_low_reg[22]),
        .I3(minTime[22]),
        .O(ltOp__15_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__1_i_6
       (.I0(minTimeCounter_low_reg[21]),
        .I1(minTime[21]),
        .I2(minTimeCounter_low_reg[20]),
        .I3(minTime[20]),
        .O(ltOp__15_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__1_i_7
       (.I0(minTimeCounter_low_reg[19]),
        .I1(minTime[19]),
        .I2(minTimeCounter_low_reg[18]),
        .I3(minTime[18]),
        .O(ltOp__15_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__1_i_8
       (.I0(minTimeCounter_low_reg[17]),
        .I1(minTime[17]),
        .I2(minTimeCounter_low_reg[16]),
        .I3(minTime[16]),
        .O(ltOp__15_carry__1_i_8_n_0));
  CARRY4 ltOp__15_carry__2
       (.CI(ltOp__15_carry__1_n_0),
        .CO({ltOp__15_carry__2_n_0,ltOp__15_carry__2_n_1,ltOp__15_carry__2_n_2,ltOp__15_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__15_carry__2_i_1_n_0,ltOp__15_carry__2_i_2_n_0,ltOp__15_carry__2_i_3_n_0,ltOp__15_carry__2_i_4_n_0}),
        .O(NLW_ltOp__15_carry__2_O_UNCONNECTED[3:0]),
        .S({ltOp__15_carry__2_i_5_n_0,ltOp__15_carry__2_i_6_n_0,ltOp__15_carry__2_i_7_n_0,ltOp__15_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__2_i_1
       (.I0(minTime[31]),
        .I1(minTimeCounter_low_reg[31]),
        .I2(minTime[30]),
        .I3(minTimeCounter_low_reg[30]),
        .O(ltOp__15_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__2_i_2
       (.I0(minTime[29]),
        .I1(minTimeCounter_low_reg[29]),
        .I2(minTime[28]),
        .I3(minTimeCounter_low_reg[28]),
        .O(ltOp__15_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__2_i_3
       (.I0(minTime[27]),
        .I1(minTimeCounter_low_reg[27]),
        .I2(minTime[26]),
        .I3(minTimeCounter_low_reg[26]),
        .O(ltOp__15_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry__2_i_4
       (.I0(minTime[25]),
        .I1(minTimeCounter_low_reg[25]),
        .I2(minTime[24]),
        .I3(minTimeCounter_low_reg[24]),
        .O(ltOp__15_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__2_i_5
       (.I0(minTimeCounter_low_reg[31]),
        .I1(minTime[31]),
        .I2(minTimeCounter_low_reg[30]),
        .I3(minTime[30]),
        .O(ltOp__15_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__2_i_6
       (.I0(minTimeCounter_low_reg[29]),
        .I1(minTime[29]),
        .I2(minTimeCounter_low_reg[28]),
        .I3(minTime[28]),
        .O(ltOp__15_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__2_i_7
       (.I0(minTimeCounter_low_reg[27]),
        .I1(minTime[27]),
        .I2(minTimeCounter_low_reg[26]),
        .I3(minTime[26]),
        .O(ltOp__15_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry__2_i_8
       (.I0(minTimeCounter_low_reg[25]),
        .I1(minTime[25]),
        .I2(minTimeCounter_low_reg[24]),
        .I3(minTime[24]),
        .O(ltOp__15_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry_i_1
       (.I0(minTime[7]),
        .I1(minTimeCounter_low_reg[7]),
        .I2(minTime[6]),
        .I3(minTimeCounter_low_reg[6]),
        .O(ltOp__15_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry_i_2
       (.I0(minTime[5]),
        .I1(minTimeCounter_low_reg[5]),
        .I2(minTime[4]),
        .I3(minTimeCounter_low_reg[4]),
        .O(ltOp__15_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry_i_3
       (.I0(minTime[3]),
        .I1(minTimeCounter_low_reg[3]),
        .I2(minTime[2]),
        .I3(minTimeCounter_low_reg[2]),
        .O(ltOp__15_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__15_carry_i_4
       (.I0(minTime[1]),
        .I1(minTimeCounter_low_reg[1]),
        .I2(minTime[0]),
        .I3(minTimeCounter_low_reg[0]),
        .O(ltOp__15_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry_i_5
       (.I0(minTimeCounter_low_reg[7]),
        .I1(minTime[7]),
        .I2(minTimeCounter_low_reg[6]),
        .I3(minTime[6]),
        .O(ltOp__15_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry_i_6
       (.I0(minTimeCounter_low_reg[5]),
        .I1(minTime[5]),
        .I2(minTimeCounter_low_reg[4]),
        .I3(minTime[4]),
        .O(ltOp__15_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry_i_7
       (.I0(minTimeCounter_low_reg[3]),
        .I1(minTime[3]),
        .I2(minTimeCounter_low_reg[2]),
        .I3(minTime[2]),
        .O(ltOp__15_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__15_carry_i_8
       (.I0(minTimeCounter_low_reg[1]),
        .I1(minTime[1]),
        .I2(minTimeCounter_low_reg[0]),
        .I3(minTime[0]),
        .O(ltOp__15_carry_i_8_n_0));
  CARRY4 ltOp__31_carry
       (.CI(1'b0),
        .CO({ltOp__31_carry_n_0,ltOp__31_carry_n_1,ltOp__31_carry_n_2,ltOp__31_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__31_carry_i_1_n_0,ltOp__31_carry_i_2_n_0,ltOp__31_carry_i_3_n_0,ltOp__31_carry_i_4_n_0}),
        .O(NLW_ltOp__31_carry_O_UNCONNECTED[3:0]),
        .S({ltOp__31_carry_i_5_n_0,ltOp__31_carry_i_6_n_0,ltOp__31_carry_i_7_n_0,ltOp__31_carry_i_8_n_0}));
  CARRY4 ltOp__31_carry__0
       (.CI(ltOp__31_carry_n_0),
        .CO({ltOp__31_carry__0_n_0,ltOp__31_carry__0_n_1,ltOp__31_carry__0_n_2,ltOp__31_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__31_carry_i_1__0_n_0,ltOp__31_carry_i_2__0_n_0,ltOp__31_carry_i_3__0_n_0,ltOp__31_carry_i_4__0_n_0}),
        .O(NLW_ltOp__31_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp__31_carry_i_5__0_n_0,ltOp__31_carry_i_6__0_n_0,ltOp__31_carry_i_7__0_n_0,ltOp__31_carry_i_8__0_n_0}));
  CARRY4 ltOp__31_carry__1
       (.CI(ltOp__31_carry__0_n_0),
        .CO({ltOp__31_carry__1_n_0,ltOp__31_carry__1_n_1,ltOp__31_carry__1_n_2,ltOp__31_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__31_carry_i_1__1_n_0,ltOp__31_carry_i_2__1_n_0,ltOp__31_carry_i_3__1_n_0,ltOp__31_carry_i_4__1_n_0}),
        .O(NLW_ltOp__31_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp__31_carry_i_5__1_n_0,ltOp__31_carry_i_6__1_n_0,ltOp__31_carry_i_7__1_n_0,ltOp__31_carry_i_8__1_n_0}));
  CARRY4 ltOp__31_carry__2
       (.CI(ltOp__31_carry__1_n_0),
        .CO({ltOp__31_carry__2_n_0,ltOp__31_carry__2_n_1,ltOp__31_carry__2_n_2,ltOp__31_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__31_carry_i_1__2_n_0,ltOp__31_carry_i_2__2_n_0,ltOp__31_carry_i_3__2_n_0,ltOp__31_carry_i_4__2_n_0}),
        .O(NLW_ltOp__31_carry__2_O_UNCONNECTED[3:0]),
        .S({ltOp__31_carry_i_5__2_n_0,ltOp__31_carry_i_6__2_n_0,ltOp__31_carry_i_7__2_n_0,ltOp__31_carry_i_8__2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_1
       (.I0(minTime[7]),
        .I1(minTimeCounter_high_reg[7]),
        .I2(minTime[6]),
        .I3(minTimeCounter_high_reg[6]),
        .O(ltOp__31_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_1__0
       (.I0(minTime[15]),
        .I1(minTimeCounter_high_reg[15]),
        .I2(minTime[14]),
        .I3(minTimeCounter_high_reg[14]),
        .O(ltOp__31_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_1__1
       (.I0(minTime[23]),
        .I1(minTimeCounter_high_reg[23]),
        .I2(minTime[22]),
        .I3(minTimeCounter_high_reg[22]),
        .O(ltOp__31_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_1__2
       (.I0(minTime[31]),
        .I1(minTimeCounter_high_reg[31]),
        .I2(minTime[30]),
        .I3(minTimeCounter_high_reg[30]),
        .O(ltOp__31_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_2
       (.I0(minTime[5]),
        .I1(minTimeCounter_high_reg[5]),
        .I2(minTime[4]),
        .I3(minTimeCounter_high_reg[4]),
        .O(ltOp__31_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_2__0
       (.I0(minTime[13]),
        .I1(minTimeCounter_high_reg[13]),
        .I2(minTime[12]),
        .I3(minTimeCounter_high_reg[12]),
        .O(ltOp__31_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_2__1
       (.I0(minTime[21]),
        .I1(minTimeCounter_high_reg[21]),
        .I2(minTime[20]),
        .I3(minTimeCounter_high_reg[20]),
        .O(ltOp__31_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_2__2
       (.I0(minTime[29]),
        .I1(minTimeCounter_high_reg[29]),
        .I2(minTime[28]),
        .I3(minTimeCounter_high_reg[28]),
        .O(ltOp__31_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_3
       (.I0(minTime[3]),
        .I1(minTimeCounter_high_reg[3]),
        .I2(minTime[2]),
        .I3(minTimeCounter_high_reg[2]),
        .O(ltOp__31_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_3__0
       (.I0(minTime[11]),
        .I1(minTimeCounter_high_reg[11]),
        .I2(minTime[10]),
        .I3(minTimeCounter_high_reg[10]),
        .O(ltOp__31_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_3__1
       (.I0(minTime[19]),
        .I1(minTimeCounter_high_reg[19]),
        .I2(minTime[18]),
        .I3(minTimeCounter_high_reg[18]),
        .O(ltOp__31_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_3__2
       (.I0(minTime[27]),
        .I1(minTimeCounter_high_reg[27]),
        .I2(minTime[26]),
        .I3(minTimeCounter_high_reg[26]),
        .O(ltOp__31_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_4
       (.I0(minTime[1]),
        .I1(minTimeCounter_high_reg[1]),
        .I2(minTime[0]),
        .I3(minTimeCounter_high_reg[0]),
        .O(ltOp__31_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_4__0
       (.I0(minTime[9]),
        .I1(minTimeCounter_high_reg[9]),
        .I2(minTime[8]),
        .I3(minTimeCounter_high_reg[8]),
        .O(ltOp__31_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_4__1
       (.I0(minTime[17]),
        .I1(minTimeCounter_high_reg[17]),
        .I2(minTime[16]),
        .I3(minTimeCounter_high_reg[16]),
        .O(ltOp__31_carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__31_carry_i_4__2
       (.I0(minTime[25]),
        .I1(minTimeCounter_high_reg[25]),
        .I2(minTime[24]),
        .I3(minTimeCounter_high_reg[24]),
        .O(ltOp__31_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_5
       (.I0(minTimeCounter_high_reg[7]),
        .I1(minTime[7]),
        .I2(minTimeCounter_high_reg[6]),
        .I3(minTime[6]),
        .O(ltOp__31_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_5__0
       (.I0(minTimeCounter_high_reg[15]),
        .I1(minTime[15]),
        .I2(minTimeCounter_high_reg[14]),
        .I3(minTime[14]),
        .O(ltOp__31_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_5__1
       (.I0(minTimeCounter_high_reg[23]),
        .I1(minTime[23]),
        .I2(minTimeCounter_high_reg[22]),
        .I3(minTime[22]),
        .O(ltOp__31_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_5__2
       (.I0(minTimeCounter_high_reg[31]),
        .I1(minTime[31]),
        .I2(minTimeCounter_high_reg[30]),
        .I3(minTime[30]),
        .O(ltOp__31_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_6
       (.I0(minTimeCounter_high_reg[5]),
        .I1(minTime[5]),
        .I2(minTimeCounter_high_reg[4]),
        .I3(minTime[4]),
        .O(ltOp__31_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_6__0
       (.I0(minTimeCounter_high_reg[13]),
        .I1(minTime[13]),
        .I2(minTimeCounter_high_reg[12]),
        .I3(minTime[12]),
        .O(ltOp__31_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_6__1
       (.I0(minTimeCounter_high_reg[21]),
        .I1(minTime[21]),
        .I2(minTimeCounter_high_reg[20]),
        .I3(minTime[20]),
        .O(ltOp__31_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_6__2
       (.I0(minTimeCounter_high_reg[29]),
        .I1(minTime[29]),
        .I2(minTimeCounter_high_reg[28]),
        .I3(minTime[28]),
        .O(ltOp__31_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_7
       (.I0(minTimeCounter_high_reg[3]),
        .I1(minTime[3]),
        .I2(minTimeCounter_high_reg[2]),
        .I3(minTime[2]),
        .O(ltOp__31_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_7__0
       (.I0(minTimeCounter_high_reg[11]),
        .I1(minTime[11]),
        .I2(minTimeCounter_high_reg[10]),
        .I3(minTime[10]),
        .O(ltOp__31_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_7__1
       (.I0(minTimeCounter_high_reg[19]),
        .I1(minTime[19]),
        .I2(minTimeCounter_high_reg[18]),
        .I3(minTime[18]),
        .O(ltOp__31_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_7__2
       (.I0(minTimeCounter_high_reg[27]),
        .I1(minTime[27]),
        .I2(minTimeCounter_high_reg[26]),
        .I3(minTime[26]),
        .O(ltOp__31_carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_8
       (.I0(minTimeCounter_high_reg[1]),
        .I1(minTime[1]),
        .I2(minTimeCounter_high_reg[0]),
        .I3(minTime[0]),
        .O(ltOp__31_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_8__0
       (.I0(minTimeCounter_high_reg[9]),
        .I1(minTime[9]),
        .I2(minTimeCounter_high_reg[8]),
        .I3(minTime[8]),
        .O(ltOp__31_carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_8__1
       (.I0(minTimeCounter_high_reg[17]),
        .I1(minTime[17]),
        .I2(minTimeCounter_high_reg[16]),
        .I3(minTime[16]),
        .O(ltOp__31_carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__31_carry_i_8__2
       (.I0(minTimeCounter_high_reg[25]),
        .I1(minTime[25]),
        .I2(minTimeCounter_high_reg[24]),
        .I3(minTime[24]),
        .O(ltOp__31_carry_i_8__2_n_0));
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0,ltOp_carry_i_8_n_0}));
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp_carry__0_n_0,ltOp_carry__0_n_1,ltOp_carry__0_n_2,ltOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry__0_i_1_n_0,ltOp_carry__0_i_2_n_0,ltOp_carry__0_i_3_n_0,ltOp_carry__0_i_4_n_0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__0_i_5_n_0,ltOp_carry__0_i_6_n_0,ltOp_carry__0_i_7_n_0,ltOp_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_1
       (.I0(deadTime[15]),
        .I1(TimeCounter_reg[15]),
        .I2(deadTime[14]),
        .I3(TimeCounter_reg[14]),
        .O(ltOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_2
       (.I0(deadTime[13]),
        .I1(TimeCounter_reg[13]),
        .I2(deadTime[12]),
        .I3(TimeCounter_reg[12]),
        .O(ltOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_3
       (.I0(deadTime[11]),
        .I1(TimeCounter_reg[11]),
        .I2(deadTime[10]),
        .I3(TimeCounter_reg[10]),
        .O(ltOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_4
       (.I0(deadTime[9]),
        .I1(TimeCounter_reg[9]),
        .I2(deadTime[8]),
        .I3(TimeCounter_reg[8]),
        .O(ltOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_5
       (.I0(TimeCounter_reg[15]),
        .I1(deadTime[15]),
        .I2(TimeCounter_reg[14]),
        .I3(deadTime[14]),
        .O(ltOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_6
       (.I0(TimeCounter_reg[13]),
        .I1(deadTime[13]),
        .I2(TimeCounter_reg[12]),
        .I3(deadTime[12]),
        .O(ltOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_7
       (.I0(TimeCounter_reg[11]),
        .I1(deadTime[11]),
        .I2(TimeCounter_reg[10]),
        .I3(deadTime[10]),
        .O(ltOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_8
       (.I0(TimeCounter_reg[9]),
        .I1(deadTime[9]),
        .I2(TimeCounter_reg[8]),
        .I3(deadTime[8]),
        .O(ltOp_carry__0_i_8_n_0));
  CARRY4 ltOp_carry__1
       (.CI(ltOp_carry__0_n_0),
        .CO({ltOp_carry__1_n_0,ltOp_carry__1_n_1,ltOp_carry__1_n_2,ltOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry__1_i_1_n_0,ltOp_carry__1_i_2_n_0,ltOp_carry__1_i_3_n_0,ltOp_carry__1_i_4_n_0}),
        .O(NLW_ltOp_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__1_i_5_n_0,ltOp_carry__1_i_6_n_0,ltOp_carry__1_i_7_n_0,ltOp_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__1_i_1
       (.I0(deadTime[23]),
        .I1(TimeCounter_reg[23]),
        .I2(deadTime[22]),
        .I3(TimeCounter_reg[22]),
        .O(ltOp_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__1_i_2
       (.I0(deadTime[21]),
        .I1(TimeCounter_reg[21]),
        .I2(deadTime[20]),
        .I3(TimeCounter_reg[20]),
        .O(ltOp_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__1_i_3
       (.I0(deadTime[19]),
        .I1(TimeCounter_reg[19]),
        .I2(deadTime[18]),
        .I3(TimeCounter_reg[18]),
        .O(ltOp_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__1_i_4
       (.I0(deadTime[17]),
        .I1(TimeCounter_reg[17]),
        .I2(deadTime[16]),
        .I3(TimeCounter_reg[16]),
        .O(ltOp_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__1_i_5
       (.I0(TimeCounter_reg[23]),
        .I1(deadTime[23]),
        .I2(TimeCounter_reg[22]),
        .I3(deadTime[22]),
        .O(ltOp_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__1_i_6
       (.I0(TimeCounter_reg[21]),
        .I1(deadTime[21]),
        .I2(TimeCounter_reg[20]),
        .I3(deadTime[20]),
        .O(ltOp_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__1_i_7
       (.I0(TimeCounter_reg[19]),
        .I1(deadTime[19]),
        .I2(TimeCounter_reg[18]),
        .I3(deadTime[18]),
        .O(ltOp_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__1_i_8
       (.I0(TimeCounter_reg[17]),
        .I1(deadTime[17]),
        .I2(TimeCounter_reg[16]),
        .I3(deadTime[16]),
        .O(ltOp_carry__1_i_8_n_0));
  CARRY4 ltOp_carry__2
       (.CI(ltOp_carry__1_n_0),
        .CO({sel,ltOp_carry__2_n_1,ltOp_carry__2_n_2,ltOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry__2_i_1_n_0,ltOp_carry__2_i_2_n_0,ltOp_carry__2_i_3_n_0,ltOp_carry__2_i_4_n_0}),
        .O(NLW_ltOp_carry__2_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__2_i_5_n_0,ltOp_carry__2_i_6_n_0,ltOp_carry__2_i_7_n_0,ltOp_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__2_i_1
       (.I0(deadTime[31]),
        .I1(TimeCounter_reg[31]),
        .I2(deadTime[30]),
        .I3(TimeCounter_reg[30]),
        .O(ltOp_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__2_i_2
       (.I0(deadTime[29]),
        .I1(TimeCounter_reg[29]),
        .I2(deadTime[28]),
        .I3(TimeCounter_reg[28]),
        .O(ltOp_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__2_i_3
       (.I0(deadTime[27]),
        .I1(TimeCounter_reg[27]),
        .I2(deadTime[26]),
        .I3(TimeCounter_reg[26]),
        .O(ltOp_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__2_i_4
       (.I0(deadTime[25]),
        .I1(TimeCounter_reg[25]),
        .I2(deadTime[24]),
        .I3(TimeCounter_reg[24]),
        .O(ltOp_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__2_i_5
       (.I0(TimeCounter_reg[31]),
        .I1(deadTime[31]),
        .I2(TimeCounter_reg[30]),
        .I3(deadTime[30]),
        .O(ltOp_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__2_i_6
       (.I0(TimeCounter_reg[29]),
        .I1(deadTime[29]),
        .I2(TimeCounter_reg[28]),
        .I3(deadTime[28]),
        .O(ltOp_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__2_i_7
       (.I0(TimeCounter_reg[27]),
        .I1(deadTime[27]),
        .I2(TimeCounter_reg[26]),
        .I3(deadTime[26]),
        .O(ltOp_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__2_i_8
       (.I0(TimeCounter_reg[25]),
        .I1(deadTime[25]),
        .I2(TimeCounter_reg[24]),
        .I3(deadTime[24]),
        .O(ltOp_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_1
       (.I0(deadTime[7]),
        .I1(TimeCounter_reg[7]),
        .I2(deadTime[6]),
        .I3(TimeCounter_reg[6]),
        .O(ltOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_2
       (.I0(deadTime[5]),
        .I1(TimeCounter_reg[5]),
        .I2(deadTime[4]),
        .I3(TimeCounter_reg[4]),
        .O(ltOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_3
       (.I0(deadTime[3]),
        .I1(TimeCounter_reg[3]),
        .I2(deadTime[2]),
        .I3(TimeCounter_reg[2]),
        .O(ltOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_4
       (.I0(deadTime[1]),
        .I1(TimeCounter_reg[1]),
        .I2(deadTime[0]),
        .I3(TimeCounter_reg[0]),
        .O(ltOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_5
       (.I0(TimeCounter_reg[7]),
        .I1(deadTime[7]),
        .I2(TimeCounter_reg[6]),
        .I3(deadTime[6]),
        .O(ltOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_6
       (.I0(TimeCounter_reg[5]),
        .I1(deadTime[5]),
        .I2(TimeCounter_reg[4]),
        .I3(deadTime[4]),
        .O(ltOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7
       (.I0(TimeCounter_reg[3]),
        .I1(deadTime[3]),
        .I2(TimeCounter_reg[2]),
        .I3(deadTime[2]),
        .O(ltOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8
       (.I0(TimeCounter_reg[1]),
        .I1(deadTime[1]),
        .I2(TimeCounter_reg[0]),
        .I3(deadTime[0]),
        .O(ltOp_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000022222F22)) 
    \minTimeCounter_high[0]_i_1 
       (.I0(key1_prev),
        .I1(key1_reg_n_0),
        .I2(key2_reg_n_0),
        .I3(key2_prev),
        .I4(breaking_en),
        .I5(reset),
        .O(\minTimeCounter_high[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \minTimeCounter_high[0]_i_2 
       (.I0(ltOp__31_carry__2_n_0),
        .I1(reset),
        .O(minTimeCounter_high));
  LUT1 #(
    .INIT(2'h1)) 
    \minTimeCounter_high[0]_i_4 
       (.I0(minTimeCounter_high_reg[0]),
        .O(\minTimeCounter_high[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[0] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[0]_i_3_n_7 ),
        .Q(minTimeCounter_high_reg[0]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\minTimeCounter_high_reg[0]_i_3_n_0 ,\minTimeCounter_high_reg[0]_i_3_n_1 ,\minTimeCounter_high_reg[0]_i_3_n_2 ,\minTimeCounter_high_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\minTimeCounter_high_reg[0]_i_3_n_4 ,\minTimeCounter_high_reg[0]_i_3_n_5 ,\minTimeCounter_high_reg[0]_i_3_n_6 ,\minTimeCounter_high_reg[0]_i_3_n_7 }),
        .S({minTimeCounter_high_reg[3:1],\minTimeCounter_high[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[10] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[8]_i_1_n_5 ),
        .Q(minTimeCounter_high_reg[10]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[11] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[8]_i_1_n_4 ),
        .Q(minTimeCounter_high_reg[11]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[12] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[12]_i_1_n_7 ),
        .Q(minTimeCounter_high_reg[12]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[12]_i_1 
       (.CI(\minTimeCounter_high_reg[8]_i_1_n_0 ),
        .CO({\minTimeCounter_high_reg[12]_i_1_n_0 ,\minTimeCounter_high_reg[12]_i_1_n_1 ,\minTimeCounter_high_reg[12]_i_1_n_2 ,\minTimeCounter_high_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_high_reg[12]_i_1_n_4 ,\minTimeCounter_high_reg[12]_i_1_n_5 ,\minTimeCounter_high_reg[12]_i_1_n_6 ,\minTimeCounter_high_reg[12]_i_1_n_7 }),
        .S(minTimeCounter_high_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[13] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[12]_i_1_n_6 ),
        .Q(minTimeCounter_high_reg[13]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[14] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[12]_i_1_n_5 ),
        .Q(minTimeCounter_high_reg[14]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[15] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[12]_i_1_n_4 ),
        .Q(minTimeCounter_high_reg[15]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[16] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[16]_i_1_n_7 ),
        .Q(minTimeCounter_high_reg[16]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[16]_i_1 
       (.CI(\minTimeCounter_high_reg[12]_i_1_n_0 ),
        .CO({\minTimeCounter_high_reg[16]_i_1_n_0 ,\minTimeCounter_high_reg[16]_i_1_n_1 ,\minTimeCounter_high_reg[16]_i_1_n_2 ,\minTimeCounter_high_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_high_reg[16]_i_1_n_4 ,\minTimeCounter_high_reg[16]_i_1_n_5 ,\minTimeCounter_high_reg[16]_i_1_n_6 ,\minTimeCounter_high_reg[16]_i_1_n_7 }),
        .S(minTimeCounter_high_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[17] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[16]_i_1_n_6 ),
        .Q(minTimeCounter_high_reg[17]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[18] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[16]_i_1_n_5 ),
        .Q(minTimeCounter_high_reg[18]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[19] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[16]_i_1_n_4 ),
        .Q(minTimeCounter_high_reg[19]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[1] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[0]_i_3_n_6 ),
        .Q(minTimeCounter_high_reg[1]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[20] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[20]_i_1_n_7 ),
        .Q(minTimeCounter_high_reg[20]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[20]_i_1 
       (.CI(\minTimeCounter_high_reg[16]_i_1_n_0 ),
        .CO({\minTimeCounter_high_reg[20]_i_1_n_0 ,\minTimeCounter_high_reg[20]_i_1_n_1 ,\minTimeCounter_high_reg[20]_i_1_n_2 ,\minTimeCounter_high_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_high_reg[20]_i_1_n_4 ,\minTimeCounter_high_reg[20]_i_1_n_5 ,\minTimeCounter_high_reg[20]_i_1_n_6 ,\minTimeCounter_high_reg[20]_i_1_n_7 }),
        .S(minTimeCounter_high_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[21] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[20]_i_1_n_6 ),
        .Q(minTimeCounter_high_reg[21]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[22] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[20]_i_1_n_5 ),
        .Q(minTimeCounter_high_reg[22]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[23] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[20]_i_1_n_4 ),
        .Q(minTimeCounter_high_reg[23]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[24] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[24]_i_1_n_7 ),
        .Q(minTimeCounter_high_reg[24]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[24]_i_1 
       (.CI(\minTimeCounter_high_reg[20]_i_1_n_0 ),
        .CO({\minTimeCounter_high_reg[24]_i_1_n_0 ,\minTimeCounter_high_reg[24]_i_1_n_1 ,\minTimeCounter_high_reg[24]_i_1_n_2 ,\minTimeCounter_high_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_high_reg[24]_i_1_n_4 ,\minTimeCounter_high_reg[24]_i_1_n_5 ,\minTimeCounter_high_reg[24]_i_1_n_6 ,\minTimeCounter_high_reg[24]_i_1_n_7 }),
        .S(minTimeCounter_high_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[25] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[24]_i_1_n_6 ),
        .Q(minTimeCounter_high_reg[25]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[26] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[24]_i_1_n_5 ),
        .Q(minTimeCounter_high_reg[26]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[27] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[24]_i_1_n_4 ),
        .Q(minTimeCounter_high_reg[27]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[28] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[28]_i_1_n_7 ),
        .Q(minTimeCounter_high_reg[28]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[28]_i_1 
       (.CI(\minTimeCounter_high_reg[24]_i_1_n_0 ),
        .CO({\NLW_minTimeCounter_high_reg[28]_i_1_CO_UNCONNECTED [3],\minTimeCounter_high_reg[28]_i_1_n_1 ,\minTimeCounter_high_reg[28]_i_1_n_2 ,\minTimeCounter_high_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_high_reg[28]_i_1_n_4 ,\minTimeCounter_high_reg[28]_i_1_n_5 ,\minTimeCounter_high_reg[28]_i_1_n_6 ,\minTimeCounter_high_reg[28]_i_1_n_7 }),
        .S(minTimeCounter_high_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[29] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[28]_i_1_n_6 ),
        .Q(minTimeCounter_high_reg[29]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[2] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[0]_i_3_n_5 ),
        .Q(minTimeCounter_high_reg[2]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[30] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[28]_i_1_n_5 ),
        .Q(minTimeCounter_high_reg[30]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[31] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[28]_i_1_n_4 ),
        .Q(minTimeCounter_high_reg[31]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[3] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[0]_i_3_n_4 ),
        .Q(minTimeCounter_high_reg[3]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[4] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[4]_i_1_n_7 ),
        .Q(minTimeCounter_high_reg[4]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[4]_i_1 
       (.CI(\minTimeCounter_high_reg[0]_i_3_n_0 ),
        .CO({\minTimeCounter_high_reg[4]_i_1_n_0 ,\minTimeCounter_high_reg[4]_i_1_n_1 ,\minTimeCounter_high_reg[4]_i_1_n_2 ,\minTimeCounter_high_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_high_reg[4]_i_1_n_4 ,\minTimeCounter_high_reg[4]_i_1_n_5 ,\minTimeCounter_high_reg[4]_i_1_n_6 ,\minTimeCounter_high_reg[4]_i_1_n_7 }),
        .S(minTimeCounter_high_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[5] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[4]_i_1_n_6 ),
        .Q(minTimeCounter_high_reg[5]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[6] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[4]_i_1_n_5 ),
        .Q(minTimeCounter_high_reg[6]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[7] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[4]_i_1_n_4 ),
        .Q(minTimeCounter_high_reg[7]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[8] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[8]_i_1_n_7 ),
        .Q(minTimeCounter_high_reg[8]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_high_reg[8]_i_1 
       (.CI(\minTimeCounter_high_reg[4]_i_1_n_0 ),
        .CO({\minTimeCounter_high_reg[8]_i_1_n_0 ,\minTimeCounter_high_reg[8]_i_1_n_1 ,\minTimeCounter_high_reg[8]_i_1_n_2 ,\minTimeCounter_high_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_high_reg[8]_i_1_n_4 ,\minTimeCounter_high_reg[8]_i_1_n_5 ,\minTimeCounter_high_reg[8]_i_1_n_6 ,\minTimeCounter_high_reg[8]_i_1_n_7 }),
        .S(minTimeCounter_high_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_high_reg[9] 
       (.C(externalCLK),
        .CE(minTimeCounter_high),
        .D(\minTimeCounter_high_reg[8]_i_1_n_6 ),
        .Q(minTimeCounter_high_reg[9]),
        .R(\minTimeCounter_high[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000440F)) 
    \minTimeCounter_low[0]_i_1 
       (.I0(key2_reg_n_0),
        .I1(key2_prev),
        .I2(\minTimeCounter_low[0]_i_4_n_0 ),
        .I3(breaking_en),
        .I4(reset),
        .O(\minTimeCounter_low[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \minTimeCounter_low[0]_i_2 
       (.I0(ltOp__15_carry__2_n_0),
        .I1(reset),
        .O(minTimeCounter_low));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \minTimeCounter_low[0]_i_4 
       (.I0(key4_prev),
        .I1(key4_reg_n_0),
        .I2(key3_reg_n_0),
        .I3(key3_prev),
        .O(\minTimeCounter_low[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minTimeCounter_low[0]_i_5 
       (.I0(minTimeCounter_low_reg[0]),
        .O(\minTimeCounter_low[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[0] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[0]_i_3_n_7 ),
        .Q(minTimeCounter_low_reg[0]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\minTimeCounter_low_reg[0]_i_3_n_0 ,\minTimeCounter_low_reg[0]_i_3_n_1 ,\minTimeCounter_low_reg[0]_i_3_n_2 ,\minTimeCounter_low_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\minTimeCounter_low_reg[0]_i_3_n_4 ,\minTimeCounter_low_reg[0]_i_3_n_5 ,\minTimeCounter_low_reg[0]_i_3_n_6 ,\minTimeCounter_low_reg[0]_i_3_n_7 }),
        .S({minTimeCounter_low_reg[3:1],\minTimeCounter_low[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[10] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[8]_i_1_n_5 ),
        .Q(minTimeCounter_low_reg[10]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[11] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[8]_i_1_n_4 ),
        .Q(minTimeCounter_low_reg[11]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[12] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[12]_i_1_n_7 ),
        .Q(minTimeCounter_low_reg[12]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[12]_i_1 
       (.CI(\minTimeCounter_low_reg[8]_i_1_n_0 ),
        .CO({\minTimeCounter_low_reg[12]_i_1_n_0 ,\minTimeCounter_low_reg[12]_i_1_n_1 ,\minTimeCounter_low_reg[12]_i_1_n_2 ,\minTimeCounter_low_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_low_reg[12]_i_1_n_4 ,\minTimeCounter_low_reg[12]_i_1_n_5 ,\minTimeCounter_low_reg[12]_i_1_n_6 ,\minTimeCounter_low_reg[12]_i_1_n_7 }),
        .S(minTimeCounter_low_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[13] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[12]_i_1_n_6 ),
        .Q(minTimeCounter_low_reg[13]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[14] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[12]_i_1_n_5 ),
        .Q(minTimeCounter_low_reg[14]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[15] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[12]_i_1_n_4 ),
        .Q(minTimeCounter_low_reg[15]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[16] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[16]_i_1_n_7 ),
        .Q(minTimeCounter_low_reg[16]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[16]_i_1 
       (.CI(\minTimeCounter_low_reg[12]_i_1_n_0 ),
        .CO({\minTimeCounter_low_reg[16]_i_1_n_0 ,\minTimeCounter_low_reg[16]_i_1_n_1 ,\minTimeCounter_low_reg[16]_i_1_n_2 ,\minTimeCounter_low_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_low_reg[16]_i_1_n_4 ,\minTimeCounter_low_reg[16]_i_1_n_5 ,\minTimeCounter_low_reg[16]_i_1_n_6 ,\minTimeCounter_low_reg[16]_i_1_n_7 }),
        .S(minTimeCounter_low_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[17] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[16]_i_1_n_6 ),
        .Q(minTimeCounter_low_reg[17]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[18] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[16]_i_1_n_5 ),
        .Q(minTimeCounter_low_reg[18]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[19] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[16]_i_1_n_4 ),
        .Q(minTimeCounter_low_reg[19]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[1] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[0]_i_3_n_6 ),
        .Q(minTimeCounter_low_reg[1]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[20] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[20]_i_1_n_7 ),
        .Q(minTimeCounter_low_reg[20]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[20]_i_1 
       (.CI(\minTimeCounter_low_reg[16]_i_1_n_0 ),
        .CO({\minTimeCounter_low_reg[20]_i_1_n_0 ,\minTimeCounter_low_reg[20]_i_1_n_1 ,\minTimeCounter_low_reg[20]_i_1_n_2 ,\minTimeCounter_low_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_low_reg[20]_i_1_n_4 ,\minTimeCounter_low_reg[20]_i_1_n_5 ,\minTimeCounter_low_reg[20]_i_1_n_6 ,\minTimeCounter_low_reg[20]_i_1_n_7 }),
        .S(minTimeCounter_low_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[21] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[20]_i_1_n_6 ),
        .Q(minTimeCounter_low_reg[21]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[22] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[20]_i_1_n_5 ),
        .Q(minTimeCounter_low_reg[22]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[23] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[20]_i_1_n_4 ),
        .Q(minTimeCounter_low_reg[23]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[24] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[24]_i_1_n_7 ),
        .Q(minTimeCounter_low_reg[24]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[24]_i_1 
       (.CI(\minTimeCounter_low_reg[20]_i_1_n_0 ),
        .CO({\minTimeCounter_low_reg[24]_i_1_n_0 ,\minTimeCounter_low_reg[24]_i_1_n_1 ,\minTimeCounter_low_reg[24]_i_1_n_2 ,\minTimeCounter_low_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_low_reg[24]_i_1_n_4 ,\minTimeCounter_low_reg[24]_i_1_n_5 ,\minTimeCounter_low_reg[24]_i_1_n_6 ,\minTimeCounter_low_reg[24]_i_1_n_7 }),
        .S(minTimeCounter_low_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[25] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[24]_i_1_n_6 ),
        .Q(minTimeCounter_low_reg[25]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[26] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[24]_i_1_n_5 ),
        .Q(minTimeCounter_low_reg[26]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[27] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[24]_i_1_n_4 ),
        .Q(minTimeCounter_low_reg[27]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[28] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[28]_i_1_n_7 ),
        .Q(minTimeCounter_low_reg[28]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[28]_i_1 
       (.CI(\minTimeCounter_low_reg[24]_i_1_n_0 ),
        .CO({\NLW_minTimeCounter_low_reg[28]_i_1_CO_UNCONNECTED [3],\minTimeCounter_low_reg[28]_i_1_n_1 ,\minTimeCounter_low_reg[28]_i_1_n_2 ,\minTimeCounter_low_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_low_reg[28]_i_1_n_4 ,\minTimeCounter_low_reg[28]_i_1_n_5 ,\minTimeCounter_low_reg[28]_i_1_n_6 ,\minTimeCounter_low_reg[28]_i_1_n_7 }),
        .S(minTimeCounter_low_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[29] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[28]_i_1_n_6 ),
        .Q(minTimeCounter_low_reg[29]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[2] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[0]_i_3_n_5 ),
        .Q(minTimeCounter_low_reg[2]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[30] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[28]_i_1_n_5 ),
        .Q(minTimeCounter_low_reg[30]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[31] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[28]_i_1_n_4 ),
        .Q(minTimeCounter_low_reg[31]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[3] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[0]_i_3_n_4 ),
        .Q(minTimeCounter_low_reg[3]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[4] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[4]_i_1_n_7 ),
        .Q(minTimeCounter_low_reg[4]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[4]_i_1 
       (.CI(\minTimeCounter_low_reg[0]_i_3_n_0 ),
        .CO({\minTimeCounter_low_reg[4]_i_1_n_0 ,\minTimeCounter_low_reg[4]_i_1_n_1 ,\minTimeCounter_low_reg[4]_i_1_n_2 ,\minTimeCounter_low_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_low_reg[4]_i_1_n_4 ,\minTimeCounter_low_reg[4]_i_1_n_5 ,\minTimeCounter_low_reg[4]_i_1_n_6 ,\minTimeCounter_low_reg[4]_i_1_n_7 }),
        .S(minTimeCounter_low_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[5] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[4]_i_1_n_6 ),
        .Q(minTimeCounter_low_reg[5]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[6] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[4]_i_1_n_5 ),
        .Q(minTimeCounter_low_reg[6]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[7] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[4]_i_1_n_4 ),
        .Q(minTimeCounter_low_reg[7]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[8] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[8]_i_1_n_7 ),
        .Q(minTimeCounter_low_reg[8]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  CARRY4 \minTimeCounter_low_reg[8]_i_1 
       (.CI(\minTimeCounter_low_reg[4]_i_1_n_0 ),
        .CO({\minTimeCounter_low_reg[8]_i_1_n_0 ,\minTimeCounter_low_reg[8]_i_1_n_1 ,\minTimeCounter_low_reg[8]_i_1_n_2 ,\minTimeCounter_low_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\minTimeCounter_low_reg[8]_i_1_n_4 ,\minTimeCounter_low_reg[8]_i_1_n_5 ,\minTimeCounter_low_reg[8]_i_1_n_6 ,\minTimeCounter_low_reg[8]_i_1_n_7 }),
        .S(minTimeCounter_low_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \minTimeCounter_low_reg[9] 
       (.C(externalCLK),
        .CE(minTimeCounter_low),
        .D(\minTimeCounter_low_reg[8]_i_1_n_6 ),
        .Q(minTimeCounter_low_reg[9]),
        .R(\minTimeCounter_low[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEEEE200E2E2)) 
    minTimeEr_i_1
       (.I0(minTimeEr_i_2_n_0),
        .I1(minTimeEr_i_3_n_0),
        .I2(minTimeEr_i_4_n_0),
        .I3(minTimeEr_i_5_n_0),
        .I4(minTimeEr_i_6_n_0),
        .I5(minTimeEr_reg_0),
        .O(minTimeEr_i_1_n_0));
  LUT4 #(
    .INIT(16'h0111)) 
    minTimeEr_i_2
       (.I0(reset),
        .I1(breaking_en),
        .I2(minTimeEr_i_6_n_0),
        .I3(minTimeEr_i_7_n_0),
        .O(minTimeEr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    minTimeEr_i_3
       (.I0(breaking_en),
        .I1(reset),
        .O(minTimeEr_i_3_n_0));
  LUT6 #(
    .INIT(64'h040404FF00000000)) 
    minTimeEr_i_4
       (.I0(minTimeOK_low),
        .I1(key2_reg_n_0),
        .I2(key2_prev),
        .I3(minTimeEr_i_8_n_0),
        .I4(minTimeOK_high),
        .I5(minTime_En),
        .O(minTimeEr_i_4_n_0));
  LUT6 #(
    .INIT(64'h55555555F755F7F7)) 
    minTimeEr_i_5
       (.I0(minTimeEr_i_9_n_0),
        .I1(key2_prev),
        .I2(key2_reg_n_0),
        .I3(key1_reg_n_0),
        .I4(key1_prev),
        .I5(minTimeEr_i_7_n_0),
        .O(minTimeEr_i_5_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFBBFBFBFF)) 
    minTimeEr_i_6
       (.I0(minTimeOK_low),
        .I1(minTime_En),
        .I2(key3_prev),
        .I3(key3_reg_n_0),
        .I4(key4_reg_n_0),
        .I5(key4_prev),
        .O(minTimeEr_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFDFDDDDFFDFFFDF)) 
    minTimeEr_i_7
       (.I0(minTime_En),
        .I1(minTimeOK_high),
        .I2(key2_reg_n_0),
        .I3(key2_prev),
        .I4(key1_prev),
        .I5(key1_reg_n_0),
        .O(minTimeEr_i_7_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    minTimeEr_i_8
       (.I0(key1_prev),
        .I1(key1_reg_n_0),
        .O(minTimeEr_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    minTimeEr_i_9
       (.I0(breaking_en),
        .I1(reset),
        .O(minTimeEr_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    minTimeEr_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(minTimeEr_i_1_n_0),
        .Q(minTimeEr_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    minTimeOK_high_i_1
       (.I0(minTimeOK_high),
        .I1(ltOp__31_carry__2_n_0),
        .I2(reset),
        .I3(\minTimeCounter_high[0]_i_1_n_0 ),
        .O(minTimeOK_high_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    minTimeOK_high_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(minTimeOK_high_i_1_n_0),
        .Q(minTimeOK_high),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    minTimeOK_low_i_1
       (.I0(minTimeOK_low),
        .I1(ltOp__15_carry__2_n_0),
        .I2(reset),
        .I3(\minTimeCounter_low[0]_i_1_n_0 ),
        .O(minTimeOK_low_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    minTimeOK_low_reg
       (.C(externalCLK),
        .CE(1'b1),
        .D(minTimeOK_low_i_1_n_0),
        .Q(minTimeOK_low),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
