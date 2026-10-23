// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 11:47:49 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top TransistorKeys_SignalChangeControl_0_1 -prefix
//               TransistorKeys_SignalChangeControl_0_1_ design_1_SignalChangeControl_0_0_sim_netlist.v
// Design      : design_1_SignalChangeControl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TransistorKeys_SignalChangeControl_0_1_SignalChangeControl_ver_1_0
   (reset,
    signalchange,
    clk);
  output reset;
  input [1:0]signalchange;
  input clk;

  wire clk;
  wire neqOp__0;
  wire reset;
  wire [1:0]signalChangeBuf;
  wire [1:0]signalchange;

  LUT4 #(
    .INIT(16'h6FF6)) 
    neqOp
       (.I0(signalchange[0]),
        .I1(signalChangeBuf[0]),
        .I2(signalchange[1]),
        .I3(signalChangeBuf[1]),
        .O(neqOp__0));
  FDRE #(
    .INIT(1'b0)) 
    reset_reg
       (.C(clk),
        .CE(1'b1),
        .D(neqOp__0),
        .Q(reset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signalChangeBuf_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(signalchange[0]),
        .Q(signalChangeBuf[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signalChangeBuf_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(signalchange[1]),
        .Q(signalChangeBuf[1]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_SignalChangeControl_0_0,SignalChangeControl_ver_1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SignalChangeControl_ver_1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module TransistorKeys_SignalChangeControl_0_1
   (clk,
    reset,
    signalchange);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset;
  input [1:0]signalchange;

  wire clk;
  wire reset;
  wire [1:0]signalchange;

  TransistorKeys_SignalChangeControl_0_1_SignalChangeControl_ver_1_0 U0
       (.clk(clk),
        .reset(reset),
        .signalchange(signalchange));
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
