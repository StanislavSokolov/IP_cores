// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 12:35:07 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top TransistorKeys_OneStageSynchronizer_2_0 -prefix
//               TransistorKeys_OneStageSynchronizer_2_0_ design_1_OneStageSynchronizer_0_3_stub.v
// Design      : design_1_OneStageSynchronizer_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "OneStageSynchronizerAndDigitalFilterBlock_ver_1_0,Vivado 2019.1" *)
module TransistorKeys_OneStageSynchronizer_2_0(clk, async_signal, sync_signal)
/* synthesis syn_black_box black_box_pad_pin="clk,async_signal[1:0],sync_signal[1:0]" */;
  input clk;
  input [1:0]async_signal;
  output [1:0]sync_signal;
endmodule
