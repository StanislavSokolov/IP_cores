// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 11:48:31 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top TransistorKeys_KeyControllerP0N_ver_0_0 -prefix
//               TransistorKeys_KeyControllerP0N_ver_0_0_ design_1_KeyControllerP0N_ver_0_0_stub.v
// Design      : design_1_KeyControllerP0N_ver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "KeyControllerP0N_ver_2_0,Vivado 2019.1" *)
module TransistorKeys_KeyControllerP0N_ver_0_0(clk, er0in, start, isdeadtimeok, linepren, linepr, 
  keysout, keysel, keysen, breaken, ready, ob, reset, softshutdownen, softshutdowntimer, 
  softshutdownpr)
/* synthesis syn_black_box black_box_pad_pin="clk,er0in,start,isdeadtimeok,linepren,linepr,keysout[3:0],keysel[1:0],keysen[3:0],breaken,ready,ob[1:0],reset,softshutdownen,softshutdowntimer[15:0],softshutdownpr" */;
  input clk;
  input er0in;
  output start;
  input isdeadtimeok;
  input linepren;
  output linepr;
  output [3:0]keysout;
  input [1:0]keysel;
  input [3:0]keysen;
  input breaken;
  input ready;
  input [1:0]ob;
  input reset;
  input softshutdownen;
  input [15:0]softshutdowntimer;
  output softshutdownpr;
endmodule
