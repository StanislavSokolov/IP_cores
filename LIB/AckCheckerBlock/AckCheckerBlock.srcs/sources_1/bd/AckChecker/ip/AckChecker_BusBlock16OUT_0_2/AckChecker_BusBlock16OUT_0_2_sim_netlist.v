// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  3 11:35:54 2023
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top AckChecker_BusBlock16OUT_0_2 -prefix
//               AckChecker_BusBlock16OUT_0_2_ AckChecker_BusBlock16OUT_0_0_sim_netlist.v
// Design      : AckChecker_BusBlock16OUT_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AckChecker_BusBlock16OUT_0_0,BusBlock16OUT,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "BusBlock16OUT,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module AckChecker_BusBlock16OUT_0_2
   (Bus_16OUT,
    In0,
    In1,
    In2,
    In3,
    In4,
    In5,
    In6,
    In7,
    In8,
    In9,
    In10,
    In11,
    In12,
    In13,
    In14,
    In15,
    Mask);
  output [15:0]Bus_16OUT;
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

  wire [15:0]Bus_16OUT;
  wire In0;
  wire In1;
  wire In10;
  wire In11;
  wire In12;
  wire In13;
  wire In14;
  wire In15;
  wire In2;
  wire In3;
  wire In4;
  wire In5;
  wire In6;
  wire In7;
  wire In8;
  wire In9;
  wire [15:0]Mask;

  AckChecker_BusBlock16OUT_0_2_BusBlock16OUT U0
       (.Bus_16OUT(Bus_16OUT),
        .In0(In0),
        .In1(In1),
        .In10(In10),
        .In11(In11),
        .In12(In12),
        .In13(In13),
        .In14(In14),
        .In15(In15),
        .In2(In2),
        .In3(In3),
        .In4(In4),
        .In5(In5),
        .In6(In6),
        .In7(In7),
        .In8(In8),
        .In9(In9),
        .Mask(Mask));
endmodule

module AckChecker_BusBlock16OUT_0_2_BusBlock16OUT
   (Bus_16OUT,
    In0,
    Mask,
    In1,
    In2,
    In3,
    In4,
    In5,
    In6,
    In7,
    In8,
    In9,
    In10,
    In11,
    In12,
    In13,
    In14,
    In15);
  output [15:0]Bus_16OUT;
  input In0;
  input [15:0]Mask;
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

  wire [15:0]Bus_16OUT;
  wire In0;
  wire In1;
  wire In10;
  wire In11;
  wire In12;
  wire In13;
  wire In14;
  wire In15;
  wire In2;
  wire In3;
  wire In4;
  wire In5;
  wire In6;
  wire In7;
  wire In8;
  wire In9;
  wire [15:0]Mask;

  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[0]_INST_0 
       (.I0(In0),
        .I1(Mask[0]),
        .O(Bus_16OUT[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[10]_INST_0 
       (.I0(In10),
        .I1(Mask[10]),
        .O(Bus_16OUT[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[11]_INST_0 
       (.I0(In11),
        .I1(Mask[11]),
        .O(Bus_16OUT[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[12]_INST_0 
       (.I0(In12),
        .I1(Mask[12]),
        .O(Bus_16OUT[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[13]_INST_0 
       (.I0(In13),
        .I1(Mask[13]),
        .O(Bus_16OUT[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[14]_INST_0 
       (.I0(In14),
        .I1(Mask[14]),
        .O(Bus_16OUT[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[15]_INST_0 
       (.I0(In15),
        .I1(Mask[15]),
        .O(Bus_16OUT[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[1]_INST_0 
       (.I0(In1),
        .I1(Mask[1]),
        .O(Bus_16OUT[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[2]_INST_0 
       (.I0(In2),
        .I1(Mask[2]),
        .O(Bus_16OUT[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[3]_INST_0 
       (.I0(In3),
        .I1(Mask[3]),
        .O(Bus_16OUT[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[4]_INST_0 
       (.I0(In4),
        .I1(Mask[4]),
        .O(Bus_16OUT[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[5]_INST_0 
       (.I0(In5),
        .I1(Mask[5]),
        .O(Bus_16OUT[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[6]_INST_0 
       (.I0(In6),
        .I1(Mask[6]),
        .O(Bus_16OUT[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[7]_INST_0 
       (.I0(In7),
        .I1(Mask[7]),
        .O(Bus_16OUT[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[8]_INST_0 
       (.I0(In8),
        .I1(Mask[8]),
        .O(Bus_16OUT[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \Bus_16OUT[9]_INST_0 
       (.I0(In9),
        .I1(Mask[9]),
        .O(Bus_16OUT[9]));
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
