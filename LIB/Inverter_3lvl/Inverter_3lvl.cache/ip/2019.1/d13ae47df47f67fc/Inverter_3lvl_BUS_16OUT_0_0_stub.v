// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 10 15:31:51 2021
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Inverter_3lvl_BUS_16OUT_0_0_stub.v
// Design      : Inverter_3lvl_BUS_16OUT_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "BUS_16OUT,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(BusBlock16OUT, In0, In1, In2, In3, In4, In5, In6, In7, In8, 
  In9, In10, In11, In12, In13, In14, In15, Mask)
/* synthesis syn_black_box black_box_pad_pin="BusBlock16OUT[15:0],In0,In1,In2,In3,In4,In5,In6,In7,In8,In9,In10,In11,In12,In13,In14,In15,Mask[15:0]" */;
  output [15:0]BusBlock16OUT;
  input In0;
  input In1;
  input In2;
  input In3;
  input In4;
  input In5;
  input In6;
  input In7;
  input In8;
  input In9;
  input In10;
  input In11;
  input In12;
  input In13;
  input In14;
  input In15;
  input [15:0]Mask;
endmodule
