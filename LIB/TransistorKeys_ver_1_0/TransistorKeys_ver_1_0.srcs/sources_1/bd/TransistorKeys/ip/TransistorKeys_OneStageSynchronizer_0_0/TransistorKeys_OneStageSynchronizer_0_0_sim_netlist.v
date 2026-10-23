// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 12:35:07 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top TransistorKeys_OneStageSynchronizer_0_0 -prefix
//               TransistorKeys_OneStageSynchronizer_0_0_ design_1_OneStageSynchronizer_0_3_sim_netlist.v
// Design      : design_1_OneStageSynchronizer_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TransistorKeys_OneStageSynchronizer_0_0_OneStageSynchronizerAndDigitalFilterBlock_ver_1_0
   (sync_signal,
    async_signal,
    clk);
  output [1:0]sync_signal;
  input [1:0]async_signal;
  input clk;

  wire [1:0]async_signal;
  wire clk;
  wire \cntBuf[0][0]_i_1_n_0 ;
  wire \cntBuf[0][1]_i_1_n_0 ;
  wire \cntBuf[0][2]_i_1_n_0 ;
  wire \cntBuf[1][0]_i_1_n_0 ;
  wire \cntBuf[1][1]_i_1_n_0 ;
  wire \cntBuf[1][2]_i_1_n_0 ;
  wire [2:0]\cntBuf_reg[0] ;
  wire [2:0]\cntBuf_reg[1] ;
  wire \latchBuf_reg[0]_1 ;
  wire \latchBuf_reg[1]_0 ;
  wire p_0_in;
  wire [1:0]sync_signal;
  wire \sync_signal[0]_i_1_n_0 ;
  wire \sync_signal[1]_i_1_n_0 ;
  wire \sync_stage1_reg_n_0_[0] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    \cntBuf[0][0]_i_1 
       (.I0(\cntBuf_reg[0] [0]),
        .I1(\cntBuf_reg[0] [2]),
        .I2(\latchBuf_reg[0]_1 ),
        .I3(\sync_stage1_reg_n_0_[0] ),
        .O(\cntBuf[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h14000014)) 
    \cntBuf[0][1]_i_1 
       (.I0(\cntBuf_reg[0] [2]),
        .I1(\cntBuf_reg[0] [0]),
        .I2(\cntBuf_reg[0] [1]),
        .I3(\latchBuf_reg[0]_1 ),
        .I4(\sync_stage1_reg_n_0_[0] ),
        .O(\cntBuf[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000040)) 
    \cntBuf[0][2]_i_1 
       (.I0(\cntBuf_reg[0] [2]),
        .I1(\cntBuf_reg[0] [0]),
        .I2(\cntBuf_reg[0] [1]),
        .I3(\latchBuf_reg[0]_1 ),
        .I4(\sync_stage1_reg_n_0_[0] ),
        .O(\cntBuf[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    \cntBuf[1][0]_i_1 
       (.I0(\cntBuf_reg[1] [0]),
        .I1(\cntBuf_reg[1] [2]),
        .I2(\latchBuf_reg[1]_0 ),
        .I3(p_0_in),
        .O(\cntBuf[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h14000014)) 
    \cntBuf[1][1]_i_1 
       (.I0(\cntBuf_reg[1] [2]),
        .I1(\cntBuf_reg[1] [0]),
        .I2(\cntBuf_reg[1] [1]),
        .I3(\latchBuf_reg[1]_0 ),
        .I4(p_0_in),
        .O(\cntBuf[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000040)) 
    \cntBuf[1][2]_i_1 
       (.I0(\cntBuf_reg[1] [2]),
        .I1(\cntBuf_reg[1] [0]),
        .I2(\cntBuf_reg[1] [1]),
        .I3(\latchBuf_reg[1]_0 ),
        .I4(p_0_in),
        .O(\cntBuf[1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntBuf_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntBuf[0][0]_i_1_n_0 ),
        .Q(\cntBuf_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntBuf_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntBuf[0][1]_i_1_n_0 ),
        .Q(\cntBuf_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntBuf_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntBuf[0][2]_i_1_n_0 ),
        .Q(\cntBuf_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntBuf_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntBuf[1][0]_i_1_n_0 ),
        .Q(\cntBuf_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntBuf_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntBuf[1][1]_i_1_n_0 ),
        .Q(\cntBuf_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntBuf_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntBuf[1][2]_i_1_n_0 ),
        .Q(\cntBuf_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latchBuf_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sync_stage1_reg_n_0_[0] ),
        .Q(\latchBuf_reg[0]_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latchBuf_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\latchBuf_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEA8A)) 
    \sync_signal[0]_i_1 
       (.I0(sync_signal[0]),
        .I1(\latchBuf_reg[0]_1 ),
        .I2(\cntBuf_reg[0] [2]),
        .I3(\sync_stage1_reg_n_0_[0] ),
        .O(\sync_signal[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEA8A)) 
    \sync_signal[1]_i_1 
       (.I0(sync_signal[1]),
        .I1(\latchBuf_reg[1]_0 ),
        .I2(\cntBuf_reg[1] [2]),
        .I3(p_0_in),
        .O(\sync_signal[1]_i_1_n_0 ));
  FDRE \sync_signal_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sync_signal[0]_i_1_n_0 ),
        .Q(sync_signal[0]),
        .R(1'b0));
  FDRE \sync_signal_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sync_signal[1]_i_1_n_0 ),
        .Q(sync_signal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync_stage1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(async_signal[0]),
        .Q(\sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync_stage1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(async_signal[1]),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_OneStageSynchronizer_0_3,OneStageSynchronizerAndDigitalFilterBlock_ver_1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "OneStageSynchronizerAndDigitalFilterBlock_ver_1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module TransistorKeys_OneStageSynchronizer_0_0
   (clk,
    async_signal,
    sync_signal);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  input [1:0]async_signal;
  output [1:0]sync_signal;

  wire [1:0]async_signal;
  wire clk;
  wire [1:0]sync_signal;

  TransistorKeys_OneStageSynchronizer_0_0_OneStageSynchronizerAndDigitalFilterBlock_ver_1_0 U0
       (.async_signal(async_signal),
        .clk(clk),
        .sync_signal(sync_signal));
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
