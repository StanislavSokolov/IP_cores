// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Apr 28 16:30:48 2020
// Host        : Stas running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Inverter_3lvl_P0N_3lvl_0_2_stub.v
// Design      : Inverter_3lvl_P0N_3lvl_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "P0N_3lvl,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Clk, ready, reset, deadTime, minTime, er, minTime_En, 
  minTimeEr, TKin0, TKin1, breaking_en, PWM_out_0, PWM_out_1, PWM_out_2, PWM_out_3)
/* synthesis syn_black_box black_box_pad_pin="Clk,ready,reset,deadTime[31:0],minTime[31:0],er,minTime_En,minTimeEr,TKin0,TKin1,breaking_en,PWM_out_0,PWM_out_1,PWM_out_2,PWM_out_3" */;
  input Clk;
  input ready;
  input reset;
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
endmodule
