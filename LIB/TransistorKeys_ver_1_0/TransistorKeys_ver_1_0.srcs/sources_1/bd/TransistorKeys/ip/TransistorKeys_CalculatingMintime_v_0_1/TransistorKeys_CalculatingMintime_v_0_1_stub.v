// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 11:47:49 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top TransistorKeys_CalculatingMintime_v_0_1 -prefix
//               TransistorKeys_CalculatingMintime_v_0_1_ design_1_CalculatingMintime_v_0_0_stub.v
// Design      : design_1_CalculatingMintime_v_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CalculatingMintime_ver_1_0,Vivado 2019.1" *)
module TransistorKeys_CalculatingMintime_v_0_1(clk, ce, start, en, reset, mintime, timeerror, error)
/* synthesis syn_black_box black_box_pad_pin="clk,ce,start,en,reset,mintime[7:0],timeerror[7:0],error" */;
  input clk;
  input ce;
  input start;
  input en;
  input reset;
  input [7:0]mintime;
  output [7:0]timeerror;
  output error;
endmodule
