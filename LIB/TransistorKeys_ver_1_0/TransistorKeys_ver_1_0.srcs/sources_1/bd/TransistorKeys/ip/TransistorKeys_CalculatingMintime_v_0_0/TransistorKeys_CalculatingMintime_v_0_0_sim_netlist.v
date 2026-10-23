// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 11:47:49 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top TransistorKeys_CalculatingMintime_v_0_0 -prefix
//               TransistorKeys_CalculatingMintime_v_0_0_ design_1_CalculatingMintime_v_0_0_sim_netlist.v
// Design      : design_1_CalculatingMintime_v_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TransistorKeys_CalculatingMintime_v_0_0_CalculatingMintime_ver_1_0
   (timeerror,
    error,
    clk,
    reset,
    start,
    en,
    mintime,
    ce);
  output [7:0]timeerror;
  output error;
  input clk;
  input reset;
  input start;
  input en;
  input [7:0]mintime;
  input ce;

  wire ce;
  wire clk;
  wire [7:0]cnt;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire en;
  wire error;
  wire errorBuf1__3;
  wire errorBuf1_carry_i_1_n_0;
  wire errorBuf1_carry_i_2_n_0;
  wire errorBuf1_carry_i_3_n_0;
  wire errorBuf1_carry_i_4_n_0;
  wire errorBuf1_carry_i_5_n_0;
  wire errorBuf1_carry_i_6_n_0;
  wire errorBuf1_carry_i_7_n_0;
  wire errorBuf1_carry_i_8_n_0;
  wire errorBuf1_carry_n_1;
  wire errorBuf1_carry_n_2;
  wire errorBuf1_carry_n_3;
  wire errorBuf_i_1_n_0;
  wire [7:0]mintime;
  wire [7:0]p_1_in;
  wire reset;
  wire start;
  wire [7:0]timeerror;
  wire \timeerror[7]_i_1_n_0 ;
  wire [3:0]NLW_errorBuf1_carry_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h888B)) 
    \cnt[0]_i_1 
       (.I0(mintime[0]),
        .I1(reset),
        .I2(cnt[0]),
        .I3(start),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \cnt[1]_i_1 
       (.I0(mintime[1]),
        .I1(reset),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(start),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \cnt[2]_i_1 
       (.I0(mintime[2]),
        .I1(reset),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(start),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \cnt[3]_i_1 
       (.I0(mintime[3]),
        .I1(reset),
        .I2(cnt[3]),
        .I3(\cnt[3]_i_2_n_0 ),
        .I4(start),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[3]_i_2 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .O(\cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \cnt[4]_i_1 
       (.I0(mintime[4]),
        .I1(reset),
        .I2(cnt[4]),
        .I3(\cnt[4]_i_2_n_0 ),
        .I4(start),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt[4]_i_2 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .O(\cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \cnt[5]_i_1 
       (.I0(mintime[5]),
        .I1(reset),
        .I2(cnt[5]),
        .I3(\cnt[5]_i_2_n_0 ),
        .I4(start),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[5]_i_2 
       (.I0(cnt[4]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \cnt[6]_i_1 
       (.I0(mintime[6]),
        .I1(reset),
        .I2(cnt[6]),
        .I3(\cnt[7]_i_3_n_0 ),
        .I4(start),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \cnt[7]_i_1 
       (.I0(reset),
        .I1(errorBuf1__3),
        .I2(ce),
        .I3(error),
        .I4(start),
        .O(\cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \cnt[7]_i_2 
       (.I0(mintime[7]),
        .I1(reset),
        .I2(cnt[7]),
        .I3(cnt[6]),
        .I4(\cnt[7]_i_3_n_0 ),
        .I5(start),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_3 
       (.I0(cnt[5]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .I5(cnt[4]),
        .O(\cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(cnt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(cnt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(cnt[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(cnt[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(cnt[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(\cnt[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(cnt[7]),
        .R(1'b0));
  CARRY4 errorBuf1_carry
       (.CI(1'b0),
        .CO({errorBuf1__3,errorBuf1_carry_n_1,errorBuf1_carry_n_2,errorBuf1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({errorBuf1_carry_i_1_n_0,errorBuf1_carry_i_2_n_0,errorBuf1_carry_i_3_n_0,errorBuf1_carry_i_4_n_0}),
        .O(NLW_errorBuf1_carry_O_UNCONNECTED[3:0]),
        .S({errorBuf1_carry_i_5_n_0,errorBuf1_carry_i_6_n_0,errorBuf1_carry_i_7_n_0,errorBuf1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    errorBuf1_carry_i_1
       (.I0(mintime[6]),
        .I1(cnt[6]),
        .I2(cnt[7]),
        .I3(mintime[7]),
        .O(errorBuf1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    errorBuf1_carry_i_2
       (.I0(mintime[4]),
        .I1(cnt[4]),
        .I2(cnt[5]),
        .I3(mintime[5]),
        .O(errorBuf1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    errorBuf1_carry_i_3
       (.I0(mintime[2]),
        .I1(cnt[2]),
        .I2(cnt[3]),
        .I3(mintime[3]),
        .O(errorBuf1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    errorBuf1_carry_i_4
       (.I0(mintime[0]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(mintime[1]),
        .O(errorBuf1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    errorBuf1_carry_i_5
       (.I0(mintime[6]),
        .I1(cnt[6]),
        .I2(mintime[7]),
        .I3(cnt[7]),
        .O(errorBuf1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    errorBuf1_carry_i_6
       (.I0(mintime[4]),
        .I1(cnt[4]),
        .I2(mintime[5]),
        .I3(cnt[5]),
        .O(errorBuf1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    errorBuf1_carry_i_7
       (.I0(mintime[2]),
        .I1(cnt[2]),
        .I2(mintime[3]),
        .I3(cnt[3]),
        .O(errorBuf1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    errorBuf1_carry_i_8
       (.I0(mintime[0]),
        .I1(cnt[0]),
        .I2(mintime[1]),
        .I3(cnt[1]),
        .O(errorBuf1_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    errorBuf_i_1
       (.I0(error),
        .I1(start),
        .I2(en),
        .I3(errorBuf1__3),
        .I4(reset),
        .O(errorBuf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    errorBuf_reg
       (.C(clk),
        .CE(1'b1),
        .D(errorBuf_i_1_n_0),
        .Q(error),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \timeerror[7]_i_1 
       (.I0(start),
        .I1(en),
        .I2(errorBuf1__3),
        .O(\timeerror[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[0] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[0]),
        .Q(timeerror[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[1] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[1]),
        .Q(timeerror[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[2] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[2]),
        .Q(timeerror[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[3] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[3]),
        .Q(timeerror[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[4] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[4]),
        .Q(timeerror[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[5] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[5]),
        .Q(timeerror[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[6] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[6]),
        .Q(timeerror[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \timeerror_reg[7] 
       (.C(clk),
        .CE(\timeerror[7]_i_1_n_0 ),
        .D(cnt[7]),
        .Q(timeerror[7]),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_CalculatingMintime_v_0_0,CalculatingMintime_ver_1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "CalculatingMintime_ver_1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module TransistorKeys_CalculatingMintime_v_0_0
   (clk,
    ce,
    start,
    en,
    reset,
    mintime,
    timeerror,
    error);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  input ce;
  input start;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]mintime;
  output [7:0]timeerror;
  output error;

  wire ce;
  wire clk;
  wire en;
  wire error;
  wire [7:0]mintime;
  wire reset;
  wire start;
  wire [7:0]timeerror;

  TransistorKeys_CalculatingMintime_v_0_0_CalculatingMintime_ver_1_0 U0
       (.ce(ce),
        .clk(clk),
        .en(en),
        .error(error),
        .mintime(mintime),
        .reset(reset),
        .start(start),
        .timeerror(timeerror));
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
