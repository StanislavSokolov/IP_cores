// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 11:48:30 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CalculatingDeadtime_0_0_sim_netlist.v
// Design      : design_1_CalculatingDeadtime_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CalculatingDeadtime_ver_1_0
   (isdeadtimeok,
    clk,
    ce,
    reset,
    start,
    deadtime);
  output isdeadtimeok;
  input clk;
  input ce;
  input reset;
  input start;
  input [7:0]deadtime;

  wire ce;
  wire clk;
  wire cnt;
  wire cnt0_carry_i_1_n_0;
  wire cnt0_carry_i_2_n_0;
  wire cnt0_carry_i_3_n_0;
  wire cnt0_carry_i_4_n_0;
  wire cnt0_carry_i_5_n_0;
  wire cnt0_carry_i_6_n_0;
  wire cnt0_carry_i_7_n_0;
  wire cnt0_carry_i_8_n_0;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[7]_i_4_n_0 ;
  wire [7:0]cnt_reg;
  wire [7:0]deadtime;
  wire isdeadtimeok;
  wire isdeadtimeok_i_1_n_0;
  wire [7:1]p_0_in;
  wire reset;
  wire start;
  wire [3:0]NLW_cnt0_carry_O_UNCONNECTED;

  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt0_carry_i_1_n_0,cnt0_carry_i_2_n_0,cnt0_carry_i_3_n_0,cnt0_carry_i_4_n_0}),
        .O(NLW_cnt0_carry_O_UNCONNECTED[3:0]),
        .S({cnt0_carry_i_5_n_0,cnt0_carry_i_6_n_0,cnt0_carry_i_7_n_0,cnt0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt0_carry_i_1
       (.I0(deadtime[6]),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .I3(deadtime[7]),
        .O(cnt0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt0_carry_i_2
       (.I0(deadtime[4]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .I3(deadtime[5]),
        .O(cnt0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt0_carry_i_3
       (.I0(deadtime[2]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(deadtime[3]),
        .O(cnt0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    cnt0_carry_i_4
       (.I0(deadtime[0]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(deadtime[1]),
        .O(cnt0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt0_carry_i_5
       (.I0(deadtime[6]),
        .I1(cnt_reg[6]),
        .I2(deadtime[7]),
        .I3(cnt_reg[7]),
        .O(cnt0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt0_carry_i_6
       (.I0(deadtime[4]),
        .I1(cnt_reg[4]),
        .I2(deadtime[5]),
        .I3(cnt_reg[5]),
        .O(cnt0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt0_carry_i_7
       (.I0(deadtime[2]),
        .I1(cnt_reg[2]),
        .I2(deadtime[3]),
        .I3(cnt_reg[3]),
        .O(cnt0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt0_carry_i_8
       (.I0(deadtime[0]),
        .I1(cnt_reg[0]),
        .I2(deadtime[1]),
        .I3(cnt_reg[1]),
        .O(cnt0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[7]_i_4_n_0 ),
        .I1(cnt_reg[6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt[7]_i_1 
       (.I0(reset),
        .I1(start),
        .O(\cnt[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_2 
       (.I0(ce),
        .I1(cnt0_carry_n_0),
        .O(cnt));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_3 
       (.I0(\cnt[7]_i_4_n_0 ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_4 
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[2]),
        .I5(cnt_reg[4]),
        .O(\cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(cnt),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(cnt),
        .D(p_0_in[1]),
        .Q(cnt_reg[1]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(cnt),
        .D(p_0_in[2]),
        .Q(cnt_reg[2]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(cnt),
        .D(p_0_in[3]),
        .Q(cnt_reg[3]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(cnt),
        .D(p_0_in[4]),
        .Q(cnt_reg[4]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(cnt),
        .D(p_0_in[5]),
        .Q(cnt_reg[5]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(cnt),
        .D(p_0_in[6]),
        .Q(cnt_reg[6]),
        .R(\cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(cnt),
        .D(p_0_in[7]),
        .Q(cnt_reg[7]),
        .R(\cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000AE)) 
    isdeadtimeok_i_1
       (.I0(isdeadtimeok),
        .I1(ce),
        .I2(cnt0_carry_n_0),
        .I3(start),
        .I4(reset),
        .O(isdeadtimeok_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    isdeadtimeok_reg
       (.C(clk),
        .CE(1'b1),
        .D(isdeadtimeok_i_1_n_0),
        .Q(isdeadtimeok),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_CalculatingDeadtime_0_0,CalculatingDeadtime_ver_1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "CalculatingDeadtime_ver_1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    ce,
    start,
    reset,
    deadtime,
    isdeadtimeok);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  input ce;
  input start;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]deadtime;
  output isdeadtimeok;

  wire ce;
  wire clk;
  wire [7:0]deadtime;
  wire isdeadtimeok;
  wire reset;
  wire start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CalculatingDeadtime_ver_1_0 U0
       (.ce(ce),
        .clk(clk),
        .deadtime(deadtime),
        .isdeadtimeok(isdeadtimeok),
        .reset(reset),
        .start(start));
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
