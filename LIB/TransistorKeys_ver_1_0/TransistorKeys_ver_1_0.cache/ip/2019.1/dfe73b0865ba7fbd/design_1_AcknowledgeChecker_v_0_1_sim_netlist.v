// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 11:47:49 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AcknowledgeChecker_v_0_1_sim_netlist.v
// Design      : design_1_AcknowledgeChecker_v_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AcknowledgeChecker_ver_1_0
   (currentpr,
    ackpr,
    ackin,
    reset,
    clk,
    keyin,
    currentpren,
    ackpren,
    ready,
    acktime);
  output [3:0]currentpr;
  output [3:0]ackpr;
  input [3:0]ackin;
  input reset;
  input clk;
  input [3:0]keyin;
  input [3:0]currentpren;
  input [3:0]ackpren;
  input ready;
  input [7:0]acktime;

  wire \FSM_sequential_acknowledges[0][0]_i_1_n_0 ;
  wire \FSM_sequential_acknowledges[0][1]_i_1_n_0 ;
  wire \FSM_sequential_acknowledges[1][0]_i_1_n_0 ;
  wire \FSM_sequential_acknowledges[1][1]_i_1_n_0 ;
  wire \FSM_sequential_acknowledges[2][0]_i_1_n_0 ;
  wire \FSM_sequential_acknowledges[2][1]_i_1_n_0 ;
  wire \FSM_sequential_acknowledges[3][0]_i_1_n_0 ;
  wire \FSM_sequential_acknowledges[3][1]_i_1_n_0 ;
  wire [3:0]ackInPrev;
  wire [3:0]ackin;
  wire [1:0]\acknowledges_reg[0]_0 ;
  wire [1:0]\acknowledges_reg[1]_1 ;
  wire [1:0]\acknowledges_reg[2]_2 ;
  wire [1:0]\acknowledges_reg[3]_3 ;
  wire [3:0]ackpr;
  wire \ackpr[0]_i_1_n_0 ;
  wire \ackpr[1]_i_1_n_0 ;
  wire \ackpr[2]_i_1_n_0 ;
  wire \ackpr[3]_i_1_n_0 ;
  wire [3:0]ackpren;
  wire [7:0]acktime;
  wire clk;
  wire [8:0]\cnts[0] ;
  wire \cnts[0][3]_i_2_n_0 ;
  wire \cnts[0][4]_i_2_n_0 ;
  wire \cnts[0][5]_i_2_n_0 ;
  wire \cnts[0][7]_i_2_n_0 ;
  wire \cnts[0][8]_i_3_n_0 ;
  wire \cnts[0]_4 ;
  wire [8:0]\cnts[1] ;
  wire \cnts[1][3]_i_2_n_0 ;
  wire \cnts[1][4]_i_2_n_0 ;
  wire \cnts[1][5]_i_2_n_0 ;
  wire \cnts[1][7]_i_2_n_0 ;
  wire \cnts[1][8]_i_3_n_0 ;
  wire \cnts[1]_5 ;
  wire [8:0]\cnts[2] ;
  wire \cnts[2][3]_i_2_n_0 ;
  wire \cnts[2][4]_i_2_n_0 ;
  wire \cnts[2][5]_i_2_n_0 ;
  wire \cnts[2][7]_i_2_n_0 ;
  wire \cnts[2][8]_i_3_n_0 ;
  wire \cnts[2]_6 ;
  wire [8:0]\cnts[3] ;
  wire \cnts[3][3]_i_2_n_0 ;
  wire \cnts[3][4]_i_2_n_0 ;
  wire \cnts[3][5]_i_2_n_0 ;
  wire \cnts[3][7]_i_2_n_0 ;
  wire \cnts[3][8]_i_3_n_0 ;
  wire \cnts[3]_7 ;
  wire [8:0]\cnts_reg[0] ;
  wire [8:0]\cnts_reg[1] ;
  wire [8:0]\cnts_reg[2] ;
  wire [8:0]\cnts_reg[3] ;
  wire [3:0]currentpr;
  wire currentpr126_out;
  wire currentpr128_out;
  wire currentpr130_out;
  wire currentpr1__144;
  wire currentpr1__14_carry__0_n_3;
  wire currentpr1__14_carry_i_1__0_n_0;
  wire currentpr1__14_carry_i_1_n_0;
  wire currentpr1__14_carry_i_2_n_0;
  wire currentpr1__14_carry_i_3_n_0;
  wire currentpr1__14_carry_i_4_n_0;
  wire currentpr1__14_carry_i_5_n_0;
  wire currentpr1__14_carry_i_6_n_0;
  wire currentpr1__14_carry_i_7_n_0;
  wire currentpr1__14_carry_i_8_n_0;
  wire currentpr1__14_carry_n_0;
  wire currentpr1__14_carry_n_1;
  wire currentpr1__14_carry_n_2;
  wire currentpr1__14_carry_n_3;
  wire currentpr1__4_carry__0_i_1_n_0;
  wire currentpr1__4_carry__0_n_3;
  wire currentpr1__4_carry_i_1_n_0;
  wire currentpr1__4_carry_i_2_n_0;
  wire currentpr1__4_carry_i_3_n_0;
  wire currentpr1__4_carry_i_4_n_0;
  wire currentpr1__4_carry_i_5_n_0;
  wire currentpr1__4_carry_i_6_n_0;
  wire currentpr1__4_carry_i_7_n_0;
  wire currentpr1__4_carry_i_8_n_0;
  wire currentpr1__4_carry_n_0;
  wire currentpr1__4_carry_n_1;
  wire currentpr1__4_carry_n_2;
  wire currentpr1__4_carry_n_3;
  wire currentpr1__9_carry__0_i_1_n_0;
  wire currentpr1__9_carry__0_n_3;
  wire currentpr1__9_carry_i_1_n_0;
  wire currentpr1__9_carry_i_2_n_0;
  wire currentpr1__9_carry_i_3_n_0;
  wire currentpr1__9_carry_i_4_n_0;
  wire currentpr1__9_carry_i_5_n_0;
  wire currentpr1__9_carry_i_6_n_0;
  wire currentpr1__9_carry_i_7_n_0;
  wire currentpr1__9_carry_i_8_n_0;
  wire currentpr1__9_carry_n_0;
  wire currentpr1__9_carry_n_1;
  wire currentpr1__9_carry_n_2;
  wire currentpr1__9_carry_n_3;
  wire currentpr1_carry__0_i_1_n_0;
  wire currentpr1_carry__0_n_3;
  wire currentpr1_carry_i_1_n_0;
  wire currentpr1_carry_i_2_n_0;
  wire currentpr1_carry_i_3_n_0;
  wire currentpr1_carry_i_4_n_0;
  wire currentpr1_carry_i_5_n_0;
  wire currentpr1_carry_i_6_n_0;
  wire currentpr1_carry_i_7_n_0;
  wire currentpr1_carry_i_8_n_0;
  wire currentpr1_carry_n_0;
  wire currentpr1_carry_n_1;
  wire currentpr1_carry_n_2;
  wire currentpr1_carry_n_3;
  wire \currentpr[0]_i_1_n_0 ;
  wire \currentpr[0]_i_3_n_0 ;
  wire \currentpr[0]_i_4_n_0 ;
  wire \currentpr[1]_i_1_n_0 ;
  wire \currentpr[1]_i_3_n_0 ;
  wire \currentpr[1]_i_4_n_0 ;
  wire \currentpr[2]_i_1_n_0 ;
  wire \currentpr[2]_i_3_n_0 ;
  wire \currentpr[2]_i_4_n_0 ;
  wire \currentpr[3]_i_1_n_0 ;
  wire \currentpr[3]_i_3_n_0 ;
  wire \currentpr[3]_i_4_n_0 ;
  wire [3:0]currentpren;
  wire \keyInPrev_reg_n_0_[0] ;
  wire [3:0]keyin;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in4_in;
  wire [3:0]p_6_out;
  wire ready;
  wire reset;
  wire [3:0]NLW_currentpr1__14_carry_O_UNCONNECTED;
  wire [3:1]NLW_currentpr1__14_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_currentpr1__14_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_currentpr1__4_carry_O_UNCONNECTED;
  wire [3:1]NLW_currentpr1__4_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_currentpr1__4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_currentpr1__9_carry_O_UNCONNECTED;
  wire [3:1]NLW_currentpr1__9_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_currentpr1__9_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_currentpr1_carry_O_UNCONNECTED;
  wire [3:1]NLW_currentpr1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_currentpr1_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00BB00F0000000F0)) 
    \FSM_sequential_acknowledges[0][0]_i_1 
       (.I0(ackInPrev[0]),
        .I1(ackin[0]),
        .I2(currentpr1__144),
        .I3(\acknowledges_reg[0]_0 [1]),
        .I4(\acknowledges_reg[0]_0 [0]),
        .I5(currentpr1_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_sequential_acknowledges[0][0]_i_2 
       (.I0(\keyInPrev_reg_n_0_[0] ),
        .I1(ready),
        .I2(keyin[0]),
        .O(currentpr1__144));
  LUT5 #(
    .INIT(32'h04C00000)) 
    \FSM_sequential_acknowledges[0][1]_i_1 
       (.I0(ackInPrev[0]),
        .I1(ackin[0]),
        .I2(\acknowledges_reg[0]_0 [1]),
        .I3(\acknowledges_reg[0]_0 [0]),
        .I4(currentpr1_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BB00F0000000F0)) 
    \FSM_sequential_acknowledges[1][0]_i_1 
       (.I0(ackInPrev[1]),
        .I1(ackin[1]),
        .I2(currentpr126_out),
        .I3(\acknowledges_reg[1]_1 [1]),
        .I4(\acknowledges_reg[1]_1 [0]),
        .I5(currentpr1__4_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_sequential_acknowledges[1][0]_i_2 
       (.I0(p_0_in),
        .I1(ready),
        .I2(keyin[1]),
        .O(currentpr126_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04C00000)) 
    \FSM_sequential_acknowledges[1][1]_i_1 
       (.I0(ackInPrev[1]),
        .I1(ackin[1]),
        .I2(\acknowledges_reg[1]_1 [1]),
        .I3(\acknowledges_reg[1]_1 [0]),
        .I4(currentpr1__4_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BB00F0000000F0)) 
    \FSM_sequential_acknowledges[2][0]_i_1 
       (.I0(ackInPrev[2]),
        .I1(ackin[2]),
        .I2(currentpr128_out),
        .I3(\acknowledges_reg[2]_2 [1]),
        .I4(\acknowledges_reg[2]_2 [0]),
        .I5(currentpr1__9_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_sequential_acknowledges[2][0]_i_2 
       (.I0(p_0_in1_in),
        .I1(ready),
        .I2(keyin[2]),
        .O(currentpr128_out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h04C00000)) 
    \FSM_sequential_acknowledges[2][1]_i_1 
       (.I0(ackInPrev[2]),
        .I1(ackin[2]),
        .I2(\acknowledges_reg[2]_2 [1]),
        .I3(\acknowledges_reg[2]_2 [0]),
        .I4(currentpr1__9_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BB00F0000000F0)) 
    \FSM_sequential_acknowledges[3][0]_i_1 
       (.I0(ackInPrev[3]),
        .I1(ackin[3]),
        .I2(currentpr130_out),
        .I3(\acknowledges_reg[3]_3 [1]),
        .I4(\acknowledges_reg[3]_3 [0]),
        .I5(currentpr1__14_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_sequential_acknowledges[3][0]_i_2 
       (.I0(p_0_in4_in),
        .I1(ready),
        .I2(keyin[3]),
        .O(currentpr130_out));
  LUT5 #(
    .INIT(32'h04C00000)) 
    \FSM_sequential_acknowledges[3][1]_i_1 
       (.I0(ackInPrev[3]),
        .I1(ackin[3]),
        .I2(\acknowledges_reg[3]_3 [1]),
        .I3(\acknowledges_reg[3]_3 [0]),
        .I4(currentpr1__14_carry__0_n_3),
        .O(\FSM_sequential_acknowledges[3][1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[0][0]_i_1_n_0 ),
        .Q(\acknowledges_reg[0]_0 [0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[0][1]_i_1_n_0 ),
        .Q(\acknowledges_reg[0]_0 [1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[1][0]_i_1_n_0 ),
        .Q(\acknowledges_reg[1]_1 [0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[1][1]_i_1_n_0 ),
        .Q(\acknowledges_reg[1]_1 [1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[2][0]_i_1_n_0 ),
        .Q(\acknowledges_reg[2]_2 [0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[2][1]_i_1_n_0 ),
        .Q(\acknowledges_reg[2]_2 [1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[3][0]_i_1_n_0 ),
        .Q(\acknowledges_reg[3]_3 [0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waitingstrobeend:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledges_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledges[3][1]_i_1_n_0 ),
        .Q(\acknowledges_reg[3]_3 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \ackInPrev_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ackin[0]),
        .Q(ackInPrev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ackInPrev_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ackin[1]),
        .Q(ackInPrev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ackInPrev_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ackin[2]),
        .Q(ackInPrev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ackInPrev_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ackin[3]),
        .Q(ackInPrev[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \ackpr[0]_i_1 
       (.I0(currentpr1_carry__0_n_3),
        .I1(\acknowledges_reg[0]_0 [0]),
        .I2(\acknowledges_reg[0]_0 [1]),
        .I3(ackpren[0]),
        .I4(ackpr[0]),
        .O(\ackpr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \ackpr[1]_i_1 
       (.I0(currentpr1__4_carry__0_n_3),
        .I1(\acknowledges_reg[1]_1 [0]),
        .I2(\acknowledges_reg[1]_1 [1]),
        .I3(ackpren[1]),
        .I4(ackpr[1]),
        .O(\ackpr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \ackpr[2]_i_1 
       (.I0(currentpr1__9_carry__0_n_3),
        .I1(\acknowledges_reg[2]_2 [0]),
        .I2(\acknowledges_reg[2]_2 [1]),
        .I3(ackpren[2]),
        .I4(ackpr[2]),
        .O(\ackpr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \ackpr[3]_i_1 
       (.I0(currentpr1__14_carry__0_n_3),
        .I1(\acknowledges_reg[3]_3 [0]),
        .I2(\acknowledges_reg[3]_3 [1]),
        .I3(ackpren[3]),
        .I4(ackpr[3]),
        .O(\ackpr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ackpr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ackpr[0]_i_1_n_0 ),
        .Q(ackpr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \ackpr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ackpr[1]_i_1_n_0 ),
        .Q(ackpr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \ackpr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ackpr[2]_i_1_n_0 ),
        .Q(ackpr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \ackpr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\ackpr[3]_i_1_n_0 ),
        .Q(ackpr[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \cnts[0][0]_i_1 
       (.I0(currentpr1_carry__0_n_3),
        .I1(\acknowledges_reg[0]_0 [0]),
        .I2(\acknowledges_reg[0]_0 [1]),
        .I3(\cnts_reg[0] [0]),
        .O(\cnts[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \cnts[0][1]_i_1 
       (.I0(\acknowledges_reg[0]_0 [1]),
        .I1(\acknowledges_reg[0]_0 [0]),
        .I2(currentpr1_carry__0_n_3),
        .I3(\cnts_reg[0] [0]),
        .I4(\cnts_reg[0] [1]),
        .O(\cnts[0] [1]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \cnts[0][2]_i_1 
       (.I0(\acknowledges_reg[0]_0 [1]),
        .I1(\acknowledges_reg[0]_0 [0]),
        .I2(currentpr1_carry__0_n_3),
        .I3(\cnts_reg[0] [1]),
        .I4(\cnts_reg[0] [0]),
        .I5(\cnts_reg[0] [2]),
        .O(\cnts[0] [2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \cnts[0][3]_i_1 
       (.I0(\cnts[0][3]_i_2_n_0 ),
        .I1(currentpr1_carry__0_n_3),
        .I2(\cnts_reg[0] [0]),
        .I3(\cnts_reg[0] [1]),
        .I4(\cnts_reg[0] [2]),
        .I5(\cnts_reg[0] [3]),
        .O(\cnts[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnts[0][3]_i_2 
       (.I0(\acknowledges_reg[0]_0 [0]),
        .I1(\acknowledges_reg[0]_0 [1]),
        .O(\cnts[0][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[0][4]_i_1 
       (.I0(\cnts[0][4]_i_2_n_0 ),
        .I1(currentpr1_carry__0_n_3),
        .I2(\acknowledges_reg[0]_0 [0]),
        .I3(\acknowledges_reg[0]_0 [1]),
        .I4(\cnts_reg[0] [4]),
        .O(\cnts[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnts[0][4]_i_2 
       (.I0(\cnts_reg[0] [0]),
        .I1(\cnts_reg[0] [1]),
        .I2(\cnts_reg[0] [2]),
        .I3(\cnts_reg[0] [3]),
        .O(\cnts[0][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44408880)) 
    \cnts[0][5]_i_1 
       (.I0(\cnts[0][5]_i_2_n_0 ),
        .I1(currentpr1_carry__0_n_3),
        .I2(\acknowledges_reg[0]_0 [0]),
        .I3(\acknowledges_reg[0]_0 [1]),
        .I4(\cnts_reg[0] [5]),
        .O(\cnts[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnts[0][5]_i_2 
       (.I0(\cnts_reg[0] [4]),
        .I1(\cnts_reg[0] [3]),
        .I2(\cnts_reg[0] [2]),
        .I3(\cnts_reg[0] [1]),
        .I4(\cnts_reg[0] [0]),
        .O(\cnts[0][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[0][6]_i_1 
       (.I0(\cnts[0][7]_i_2_n_0 ),
        .I1(currentpr1_carry__0_n_3),
        .I2(\acknowledges_reg[0]_0 [0]),
        .I3(\acknowledges_reg[0]_0 [1]),
        .I4(\cnts_reg[0] [6]),
        .O(\cnts[0] [6]));
  LUT6 #(
    .INIT(64'hD0D0D00020202000)) 
    \cnts[0][7]_i_1 
       (.I0(\cnts_reg[0] [6]),
        .I1(\cnts[0][7]_i_2_n_0 ),
        .I2(currentpr1_carry__0_n_3),
        .I3(\acknowledges_reg[0]_0 [0]),
        .I4(\acknowledges_reg[0]_0 [1]),
        .I5(\cnts_reg[0] [7]),
        .O(\cnts[0] [7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnts[0][7]_i_2 
       (.I0(\cnts_reg[0] [0]),
        .I1(\cnts_reg[0] [1]),
        .I2(\cnts_reg[0] [2]),
        .I3(\cnts_reg[0] [3]),
        .I4(\cnts_reg[0] [4]),
        .I5(\cnts_reg[0] [5]),
        .O(\cnts[0][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnts[0][8]_i_1 
       (.I0(\acknowledges_reg[0]_0 [0]),
        .I1(\acknowledges_reg[0]_0 [1]),
        .O(\cnts[0]_4 ));
  LUT6 #(
    .INIT(64'h7070700080808000)) 
    \cnts[0][8]_i_2 
       (.I0(\cnts[0][8]_i_3_n_0 ),
        .I1(\cnts_reg[0] [7]),
        .I2(currentpr1_carry__0_n_3),
        .I3(\acknowledges_reg[0]_0 [0]),
        .I4(\acknowledges_reg[0]_0 [1]),
        .I5(\cnts_reg[0] [8]),
        .O(\cnts[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnts[0][8]_i_3 
       (.I0(\cnts_reg[0] [6]),
        .I1(\cnts[0][7]_i_2_n_0 ),
        .O(\cnts[0][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \cnts[1][0]_i_1 
       (.I0(currentpr1__4_carry__0_n_3),
        .I1(\acknowledges_reg[1]_1 [0]),
        .I2(\acknowledges_reg[1]_1 [1]),
        .I3(\cnts_reg[1] [0]),
        .O(\cnts[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \cnts[1][1]_i_1 
       (.I0(\acknowledges_reg[1]_1 [1]),
        .I1(\acknowledges_reg[1]_1 [0]),
        .I2(currentpr1__4_carry__0_n_3),
        .I3(\cnts_reg[1] [0]),
        .I4(\cnts_reg[1] [1]),
        .O(\cnts[1] [1]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \cnts[1][2]_i_1 
       (.I0(\acknowledges_reg[1]_1 [1]),
        .I1(\acknowledges_reg[1]_1 [0]),
        .I2(currentpr1__4_carry__0_n_3),
        .I3(\cnts_reg[1] [1]),
        .I4(\cnts_reg[1] [0]),
        .I5(\cnts_reg[1] [2]),
        .O(\cnts[1] [2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \cnts[1][3]_i_1 
       (.I0(\cnts[1][3]_i_2_n_0 ),
        .I1(currentpr1__4_carry__0_n_3),
        .I2(\cnts_reg[1] [0]),
        .I3(\cnts_reg[1] [1]),
        .I4(\cnts_reg[1] [2]),
        .I5(\cnts_reg[1] [3]),
        .O(\cnts[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnts[1][3]_i_2 
       (.I0(\acknowledges_reg[1]_1 [0]),
        .I1(\acknowledges_reg[1]_1 [1]),
        .O(\cnts[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[1][4]_i_1 
       (.I0(\cnts[1][4]_i_2_n_0 ),
        .I1(currentpr1__4_carry__0_n_3),
        .I2(\acknowledges_reg[1]_1 [0]),
        .I3(\acknowledges_reg[1]_1 [1]),
        .I4(\cnts_reg[1] [4]),
        .O(\cnts[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnts[1][4]_i_2 
       (.I0(\cnts_reg[1] [0]),
        .I1(\cnts_reg[1] [1]),
        .I2(\cnts_reg[1] [2]),
        .I3(\cnts_reg[1] [3]),
        .O(\cnts[1][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44408880)) 
    \cnts[1][5]_i_1 
       (.I0(\cnts[1][5]_i_2_n_0 ),
        .I1(currentpr1__4_carry__0_n_3),
        .I2(\acknowledges_reg[1]_1 [0]),
        .I3(\acknowledges_reg[1]_1 [1]),
        .I4(\cnts_reg[1] [5]),
        .O(\cnts[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnts[1][5]_i_2 
       (.I0(\cnts_reg[1] [4]),
        .I1(\cnts_reg[1] [3]),
        .I2(\cnts_reg[1] [2]),
        .I3(\cnts_reg[1] [1]),
        .I4(\cnts_reg[1] [0]),
        .O(\cnts[1][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[1][6]_i_1 
       (.I0(\cnts[1][7]_i_2_n_0 ),
        .I1(currentpr1__4_carry__0_n_3),
        .I2(\acknowledges_reg[1]_1 [0]),
        .I3(\acknowledges_reg[1]_1 [1]),
        .I4(\cnts_reg[1] [6]),
        .O(\cnts[1] [6]));
  LUT6 #(
    .INIT(64'hD0D0D00020202000)) 
    \cnts[1][7]_i_1 
       (.I0(\cnts_reg[1] [6]),
        .I1(\cnts[1][7]_i_2_n_0 ),
        .I2(currentpr1__4_carry__0_n_3),
        .I3(\acknowledges_reg[1]_1 [0]),
        .I4(\acknowledges_reg[1]_1 [1]),
        .I5(\cnts_reg[1] [7]),
        .O(\cnts[1] [7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnts[1][7]_i_2 
       (.I0(\cnts_reg[1] [0]),
        .I1(\cnts_reg[1] [1]),
        .I2(\cnts_reg[1] [2]),
        .I3(\cnts_reg[1] [3]),
        .I4(\cnts_reg[1] [4]),
        .I5(\cnts_reg[1] [5]),
        .O(\cnts[1][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnts[1][8]_i_1 
       (.I0(\acknowledges_reg[1]_1 [0]),
        .I1(\acknowledges_reg[1]_1 [1]),
        .O(\cnts[1]_5 ));
  LUT6 #(
    .INIT(64'h7070700080808000)) 
    \cnts[1][8]_i_2 
       (.I0(\cnts[1][8]_i_3_n_0 ),
        .I1(\cnts_reg[1] [7]),
        .I2(currentpr1__4_carry__0_n_3),
        .I3(\acknowledges_reg[1]_1 [0]),
        .I4(\acknowledges_reg[1]_1 [1]),
        .I5(\cnts_reg[1] [8]),
        .O(\cnts[1] [8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnts[1][8]_i_3 
       (.I0(\cnts_reg[1] [6]),
        .I1(\cnts[1][7]_i_2_n_0 ),
        .O(\cnts[1][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \cnts[2][0]_i_1 
       (.I0(currentpr1__9_carry__0_n_3),
        .I1(\acknowledges_reg[2]_2 [0]),
        .I2(\acknowledges_reg[2]_2 [1]),
        .I3(\cnts_reg[2] [0]),
        .O(\cnts[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \cnts[2][1]_i_1 
       (.I0(\acknowledges_reg[2]_2 [1]),
        .I1(\acknowledges_reg[2]_2 [0]),
        .I2(currentpr1__9_carry__0_n_3),
        .I3(\cnts_reg[2] [0]),
        .I4(\cnts_reg[2] [1]),
        .O(\cnts[2] [1]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \cnts[2][2]_i_1 
       (.I0(\acknowledges_reg[2]_2 [1]),
        .I1(\acknowledges_reg[2]_2 [0]),
        .I2(currentpr1__9_carry__0_n_3),
        .I3(\cnts_reg[2] [1]),
        .I4(\cnts_reg[2] [0]),
        .I5(\cnts_reg[2] [2]),
        .O(\cnts[2] [2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \cnts[2][3]_i_1 
       (.I0(\cnts[2][3]_i_2_n_0 ),
        .I1(currentpr1__9_carry__0_n_3),
        .I2(\cnts_reg[2] [0]),
        .I3(\cnts_reg[2] [1]),
        .I4(\cnts_reg[2] [2]),
        .I5(\cnts_reg[2] [3]),
        .O(\cnts[2] [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnts[2][3]_i_2 
       (.I0(\acknowledges_reg[2]_2 [0]),
        .I1(\acknowledges_reg[2]_2 [1]),
        .O(\cnts[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[2][4]_i_1 
       (.I0(\cnts[2][4]_i_2_n_0 ),
        .I1(currentpr1__9_carry__0_n_3),
        .I2(\acknowledges_reg[2]_2 [0]),
        .I3(\acknowledges_reg[2]_2 [1]),
        .I4(\cnts_reg[2] [4]),
        .O(\cnts[2] [4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnts[2][4]_i_2 
       (.I0(\cnts_reg[2] [0]),
        .I1(\cnts_reg[2] [1]),
        .I2(\cnts_reg[2] [2]),
        .I3(\cnts_reg[2] [3]),
        .O(\cnts[2][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44408880)) 
    \cnts[2][5]_i_1 
       (.I0(\cnts[2][5]_i_2_n_0 ),
        .I1(currentpr1__9_carry__0_n_3),
        .I2(\acknowledges_reg[2]_2 [0]),
        .I3(\acknowledges_reg[2]_2 [1]),
        .I4(\cnts_reg[2] [5]),
        .O(\cnts[2] [5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnts[2][5]_i_2 
       (.I0(\cnts_reg[2] [4]),
        .I1(\cnts_reg[2] [3]),
        .I2(\cnts_reg[2] [2]),
        .I3(\cnts_reg[2] [1]),
        .I4(\cnts_reg[2] [0]),
        .O(\cnts[2][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[2][6]_i_1 
       (.I0(\cnts[2][7]_i_2_n_0 ),
        .I1(currentpr1__9_carry__0_n_3),
        .I2(\acknowledges_reg[2]_2 [0]),
        .I3(\acknowledges_reg[2]_2 [1]),
        .I4(\cnts_reg[2] [6]),
        .O(\cnts[2] [6]));
  LUT6 #(
    .INIT(64'hD0D0D00020202000)) 
    \cnts[2][7]_i_1 
       (.I0(\cnts_reg[2] [6]),
        .I1(\cnts[2][7]_i_2_n_0 ),
        .I2(currentpr1__9_carry__0_n_3),
        .I3(\acknowledges_reg[2]_2 [0]),
        .I4(\acknowledges_reg[2]_2 [1]),
        .I5(\cnts_reg[2] [7]),
        .O(\cnts[2] [7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnts[2][7]_i_2 
       (.I0(\cnts_reg[2] [0]),
        .I1(\cnts_reg[2] [1]),
        .I2(\cnts_reg[2] [2]),
        .I3(\cnts_reg[2] [3]),
        .I4(\cnts_reg[2] [4]),
        .I5(\cnts_reg[2] [5]),
        .O(\cnts[2][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnts[2][8]_i_1 
       (.I0(\acknowledges_reg[2]_2 [0]),
        .I1(\acknowledges_reg[2]_2 [1]),
        .O(\cnts[2]_6 ));
  LUT6 #(
    .INIT(64'h7070700080808000)) 
    \cnts[2][8]_i_2 
       (.I0(\cnts[2][8]_i_3_n_0 ),
        .I1(\cnts_reg[2] [7]),
        .I2(currentpr1__9_carry__0_n_3),
        .I3(\acknowledges_reg[2]_2 [0]),
        .I4(\acknowledges_reg[2]_2 [1]),
        .I5(\cnts_reg[2] [8]),
        .O(\cnts[2] [8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnts[2][8]_i_3 
       (.I0(\cnts_reg[2] [6]),
        .I1(\cnts[2][7]_i_2_n_0 ),
        .O(\cnts[2][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \cnts[3][0]_i_1 
       (.I0(currentpr1__14_carry__0_n_3),
        .I1(\acknowledges_reg[3]_3 [0]),
        .I2(\acknowledges_reg[3]_3 [1]),
        .I3(\cnts_reg[3] [0]),
        .O(\cnts[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \cnts[3][1]_i_1 
       (.I0(\acknowledges_reg[3]_3 [1]),
        .I1(\acknowledges_reg[3]_3 [0]),
        .I2(currentpr1__14_carry__0_n_3),
        .I3(\cnts_reg[3] [0]),
        .I4(\cnts_reg[3] [1]),
        .O(\cnts[3] [1]));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \cnts[3][2]_i_1 
       (.I0(\acknowledges_reg[3]_3 [1]),
        .I1(\acknowledges_reg[3]_3 [0]),
        .I2(currentpr1__14_carry__0_n_3),
        .I3(\cnts_reg[3] [1]),
        .I4(\cnts_reg[3] [0]),
        .I5(\cnts_reg[3] [2]),
        .O(\cnts[3] [2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \cnts[3][3]_i_1 
       (.I0(\cnts[3][3]_i_2_n_0 ),
        .I1(currentpr1__14_carry__0_n_3),
        .I2(\cnts_reg[3] [0]),
        .I3(\cnts_reg[3] [1]),
        .I4(\cnts_reg[3] [2]),
        .I5(\cnts_reg[3] [3]),
        .O(\cnts[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnts[3][3]_i_2 
       (.I0(\acknowledges_reg[3]_3 [0]),
        .I1(\acknowledges_reg[3]_3 [1]),
        .O(\cnts[3][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[3][4]_i_1 
       (.I0(\cnts[3][4]_i_2_n_0 ),
        .I1(currentpr1__14_carry__0_n_3),
        .I2(\acknowledges_reg[3]_3 [0]),
        .I3(\acknowledges_reg[3]_3 [1]),
        .I4(\cnts_reg[3] [4]),
        .O(\cnts[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnts[3][4]_i_2 
       (.I0(\cnts_reg[3] [0]),
        .I1(\cnts_reg[3] [1]),
        .I2(\cnts_reg[3] [2]),
        .I3(\cnts_reg[3] [3]),
        .O(\cnts[3][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44408880)) 
    \cnts[3][5]_i_1 
       (.I0(\cnts[3][5]_i_2_n_0 ),
        .I1(currentpr1__14_carry__0_n_3),
        .I2(\acknowledges_reg[3]_3 [0]),
        .I3(\acknowledges_reg[3]_3 [1]),
        .I4(\cnts_reg[3] [5]),
        .O(\cnts[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnts[3][5]_i_2 
       (.I0(\cnts_reg[3] [4]),
        .I1(\cnts_reg[3] [3]),
        .I2(\cnts_reg[3] [2]),
        .I3(\cnts_reg[3] [1]),
        .I4(\cnts_reg[3] [0]),
        .O(\cnts[3][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h88804440)) 
    \cnts[3][6]_i_1 
       (.I0(\cnts[3][7]_i_2_n_0 ),
        .I1(currentpr1__14_carry__0_n_3),
        .I2(\acknowledges_reg[3]_3 [0]),
        .I3(\acknowledges_reg[3]_3 [1]),
        .I4(\cnts_reg[3] [6]),
        .O(\cnts[3] [6]));
  LUT6 #(
    .INIT(64'hD0D0D00020202000)) 
    \cnts[3][7]_i_1 
       (.I0(\cnts_reg[3] [6]),
        .I1(\cnts[3][7]_i_2_n_0 ),
        .I2(currentpr1__14_carry__0_n_3),
        .I3(\acknowledges_reg[3]_3 [0]),
        .I4(\acknowledges_reg[3]_3 [1]),
        .I5(\cnts_reg[3] [7]),
        .O(\cnts[3] [7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnts[3][7]_i_2 
       (.I0(\cnts_reg[3] [0]),
        .I1(\cnts_reg[3] [1]),
        .I2(\cnts_reg[3] [2]),
        .I3(\cnts_reg[3] [3]),
        .I4(\cnts_reg[3] [4]),
        .I5(\cnts_reg[3] [5]),
        .O(\cnts[3][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnts[3][8]_i_1 
       (.I0(\acknowledges_reg[3]_3 [0]),
        .I1(\acknowledges_reg[3]_3 [1]),
        .O(\cnts[3]_7 ));
  LUT6 #(
    .INIT(64'h7070700080808000)) 
    \cnts[3][8]_i_2 
       (.I0(\cnts[3][8]_i_3_n_0 ),
        .I1(\cnts_reg[3] [7]),
        .I2(currentpr1__14_carry__0_n_3),
        .I3(\acknowledges_reg[3]_3 [0]),
        .I4(\acknowledges_reg[3]_3 [1]),
        .I5(\cnts_reg[3] [8]),
        .O(\cnts[3] [8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnts[3][8]_i_3 
       (.I0(\cnts_reg[3] [6]),
        .I1(\cnts[3][7]_i_2_n_0 ),
        .O(\cnts[3][8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][0] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [0]),
        .Q(\cnts_reg[0] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][1] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [1]),
        .Q(\cnts_reg[0] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][2] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [2]),
        .Q(\cnts_reg[0] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][3] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [3]),
        .Q(\cnts_reg[0] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][4] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [4]),
        .Q(\cnts_reg[0] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][5] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [5]),
        .Q(\cnts_reg[0] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][6] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [6]),
        .Q(\cnts_reg[0] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][7] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [7]),
        .Q(\cnts_reg[0] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[0][8] 
       (.C(clk),
        .CE(\cnts[0]_4 ),
        .D(\cnts[0] [8]),
        .Q(\cnts_reg[0] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][0] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [0]),
        .Q(\cnts_reg[1] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][1] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [1]),
        .Q(\cnts_reg[1] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][2] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [2]),
        .Q(\cnts_reg[1] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][3] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [3]),
        .Q(\cnts_reg[1] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][4] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [4]),
        .Q(\cnts_reg[1] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][5] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [5]),
        .Q(\cnts_reg[1] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][6] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [6]),
        .Q(\cnts_reg[1] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][7] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [7]),
        .Q(\cnts_reg[1] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[1][8] 
       (.C(clk),
        .CE(\cnts[1]_5 ),
        .D(\cnts[1] [8]),
        .Q(\cnts_reg[1] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][0] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [0]),
        .Q(\cnts_reg[2] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][1] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [1]),
        .Q(\cnts_reg[2] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][2] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [2]),
        .Q(\cnts_reg[2] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][3] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [3]),
        .Q(\cnts_reg[2] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][4] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [4]),
        .Q(\cnts_reg[2] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][5] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [5]),
        .Q(\cnts_reg[2] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][6] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [6]),
        .Q(\cnts_reg[2] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][7] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [7]),
        .Q(\cnts_reg[2] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[2][8] 
       (.C(clk),
        .CE(\cnts[2]_6 ),
        .D(\cnts[2] [8]),
        .Q(\cnts_reg[2] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][0] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [0]),
        .Q(\cnts_reg[3] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][1] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [1]),
        .Q(\cnts_reg[3] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][2] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [2]),
        .Q(\cnts_reg[3] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][3] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [3]),
        .Q(\cnts_reg[3] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][4] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [4]),
        .Q(\cnts_reg[3] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][5] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [5]),
        .Q(\cnts_reg[3] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][6] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [6]),
        .Q(\cnts_reg[3] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][7] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [7]),
        .Q(\cnts_reg[3] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cnts_reg[3][8] 
       (.C(clk),
        .CE(\cnts[3]_7 ),
        .D(\cnts[3] [8]),
        .Q(\cnts_reg[3] [8]),
        .R(reset));
  CARRY4 currentpr1__14_carry
       (.CI(1'b0),
        .CO({currentpr1__14_carry_n_0,currentpr1__14_carry_n_1,currentpr1__14_carry_n_2,currentpr1__14_carry_n_3}),
        .CYINIT(1'b0),
        .DI({currentpr1__14_carry_i_1_n_0,currentpr1__14_carry_i_2_n_0,currentpr1__14_carry_i_3_n_0,currentpr1__14_carry_i_4_n_0}),
        .O(NLW_currentpr1__14_carry_O_UNCONNECTED[3:0]),
        .S({currentpr1__14_carry_i_5_n_0,currentpr1__14_carry_i_6_n_0,currentpr1__14_carry_i_7_n_0,currentpr1__14_carry_i_8_n_0}));
  CARRY4 currentpr1__14_carry__0
       (.CI(currentpr1__14_carry_n_0),
        .CO({NLW_currentpr1__14_carry__0_CO_UNCONNECTED[3:1],currentpr1__14_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_currentpr1__14_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,currentpr1__14_carry_i_1__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__14_carry_i_1
       (.I0(acktime[6]),
        .I1(\cnts_reg[3] [6]),
        .I2(\cnts_reg[3] [7]),
        .I3(acktime[7]),
        .O(currentpr1__14_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    currentpr1__14_carry_i_1__0
       (.I0(\cnts_reg[3] [8]),
        .O(currentpr1__14_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__14_carry_i_2
       (.I0(acktime[4]),
        .I1(\cnts_reg[3] [4]),
        .I2(\cnts_reg[3] [5]),
        .I3(acktime[5]),
        .O(currentpr1__14_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__14_carry_i_3
       (.I0(acktime[2]),
        .I1(\cnts_reg[3] [2]),
        .I2(\cnts_reg[3] [3]),
        .I3(acktime[3]),
        .O(currentpr1__14_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__14_carry_i_4
       (.I0(acktime[0]),
        .I1(\cnts_reg[3] [0]),
        .I2(\cnts_reg[3] [1]),
        .I3(acktime[1]),
        .O(currentpr1__14_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__14_carry_i_5
       (.I0(\cnts_reg[3] [7]),
        .I1(acktime[7]),
        .I2(\cnts_reg[3] [6]),
        .I3(acktime[6]),
        .O(currentpr1__14_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__14_carry_i_6
       (.I0(\cnts_reg[3] [5]),
        .I1(acktime[5]),
        .I2(\cnts_reg[3] [4]),
        .I3(acktime[4]),
        .O(currentpr1__14_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__14_carry_i_7
       (.I0(\cnts_reg[3] [3]),
        .I1(acktime[3]),
        .I2(\cnts_reg[3] [2]),
        .I3(acktime[2]),
        .O(currentpr1__14_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__14_carry_i_8
       (.I0(\cnts_reg[3] [1]),
        .I1(acktime[1]),
        .I2(\cnts_reg[3] [0]),
        .I3(acktime[0]),
        .O(currentpr1__14_carry_i_8_n_0));
  CARRY4 currentpr1__4_carry
       (.CI(1'b0),
        .CO({currentpr1__4_carry_n_0,currentpr1__4_carry_n_1,currentpr1__4_carry_n_2,currentpr1__4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({currentpr1__4_carry_i_1_n_0,currentpr1__4_carry_i_2_n_0,currentpr1__4_carry_i_3_n_0,currentpr1__4_carry_i_4_n_0}),
        .O(NLW_currentpr1__4_carry_O_UNCONNECTED[3:0]),
        .S({currentpr1__4_carry_i_5_n_0,currentpr1__4_carry_i_6_n_0,currentpr1__4_carry_i_7_n_0,currentpr1__4_carry_i_8_n_0}));
  CARRY4 currentpr1__4_carry__0
       (.CI(currentpr1__4_carry_n_0),
        .CO({NLW_currentpr1__4_carry__0_CO_UNCONNECTED[3:1],currentpr1__4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_currentpr1__4_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,currentpr1__4_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    currentpr1__4_carry__0_i_1
       (.I0(\cnts_reg[1] [8]),
        .O(currentpr1__4_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__4_carry_i_1
       (.I0(acktime[6]),
        .I1(\cnts_reg[1] [6]),
        .I2(\cnts_reg[1] [7]),
        .I3(acktime[7]),
        .O(currentpr1__4_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__4_carry_i_2
       (.I0(acktime[4]),
        .I1(\cnts_reg[1] [4]),
        .I2(\cnts_reg[1] [5]),
        .I3(acktime[5]),
        .O(currentpr1__4_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__4_carry_i_3
       (.I0(acktime[2]),
        .I1(\cnts_reg[1] [2]),
        .I2(\cnts_reg[1] [3]),
        .I3(acktime[3]),
        .O(currentpr1__4_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__4_carry_i_4
       (.I0(acktime[0]),
        .I1(\cnts_reg[1] [0]),
        .I2(\cnts_reg[1] [1]),
        .I3(acktime[1]),
        .O(currentpr1__4_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__4_carry_i_5
       (.I0(\cnts_reg[1] [7]),
        .I1(acktime[7]),
        .I2(\cnts_reg[1] [6]),
        .I3(acktime[6]),
        .O(currentpr1__4_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__4_carry_i_6
       (.I0(\cnts_reg[1] [5]),
        .I1(acktime[5]),
        .I2(\cnts_reg[1] [4]),
        .I3(acktime[4]),
        .O(currentpr1__4_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__4_carry_i_7
       (.I0(\cnts_reg[1] [3]),
        .I1(acktime[3]),
        .I2(\cnts_reg[1] [2]),
        .I3(acktime[2]),
        .O(currentpr1__4_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__4_carry_i_8
       (.I0(\cnts_reg[1] [1]),
        .I1(acktime[1]),
        .I2(\cnts_reg[1] [0]),
        .I3(acktime[0]),
        .O(currentpr1__4_carry_i_8_n_0));
  CARRY4 currentpr1__9_carry
       (.CI(1'b0),
        .CO({currentpr1__9_carry_n_0,currentpr1__9_carry_n_1,currentpr1__9_carry_n_2,currentpr1__9_carry_n_3}),
        .CYINIT(1'b0),
        .DI({currentpr1__9_carry_i_1_n_0,currentpr1__9_carry_i_2_n_0,currentpr1__9_carry_i_3_n_0,currentpr1__9_carry_i_4_n_0}),
        .O(NLW_currentpr1__9_carry_O_UNCONNECTED[3:0]),
        .S({currentpr1__9_carry_i_5_n_0,currentpr1__9_carry_i_6_n_0,currentpr1__9_carry_i_7_n_0,currentpr1__9_carry_i_8_n_0}));
  CARRY4 currentpr1__9_carry__0
       (.CI(currentpr1__9_carry_n_0),
        .CO({NLW_currentpr1__9_carry__0_CO_UNCONNECTED[3:1],currentpr1__9_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_currentpr1__9_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,currentpr1__9_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    currentpr1__9_carry__0_i_1
       (.I0(\cnts_reg[2] [8]),
        .O(currentpr1__9_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__9_carry_i_1
       (.I0(acktime[6]),
        .I1(\cnts_reg[2] [6]),
        .I2(\cnts_reg[2] [7]),
        .I3(acktime[7]),
        .O(currentpr1__9_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__9_carry_i_2
       (.I0(acktime[4]),
        .I1(\cnts_reg[2] [4]),
        .I2(\cnts_reg[2] [5]),
        .I3(acktime[5]),
        .O(currentpr1__9_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__9_carry_i_3
       (.I0(acktime[2]),
        .I1(\cnts_reg[2] [2]),
        .I2(\cnts_reg[2] [3]),
        .I3(acktime[3]),
        .O(currentpr1__9_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1__9_carry_i_4
       (.I0(acktime[0]),
        .I1(\cnts_reg[2] [0]),
        .I2(\cnts_reg[2] [1]),
        .I3(acktime[1]),
        .O(currentpr1__9_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__9_carry_i_5
       (.I0(\cnts_reg[2] [7]),
        .I1(acktime[7]),
        .I2(\cnts_reg[2] [6]),
        .I3(acktime[6]),
        .O(currentpr1__9_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__9_carry_i_6
       (.I0(\cnts_reg[2] [5]),
        .I1(acktime[5]),
        .I2(\cnts_reg[2] [4]),
        .I3(acktime[4]),
        .O(currentpr1__9_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__9_carry_i_7
       (.I0(\cnts_reg[2] [3]),
        .I1(acktime[3]),
        .I2(\cnts_reg[2] [2]),
        .I3(acktime[2]),
        .O(currentpr1__9_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1__9_carry_i_8
       (.I0(\cnts_reg[2] [1]),
        .I1(acktime[1]),
        .I2(\cnts_reg[2] [0]),
        .I3(acktime[0]),
        .O(currentpr1__9_carry_i_8_n_0));
  CARRY4 currentpr1_carry
       (.CI(1'b0),
        .CO({currentpr1_carry_n_0,currentpr1_carry_n_1,currentpr1_carry_n_2,currentpr1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({currentpr1_carry_i_1_n_0,currentpr1_carry_i_2_n_0,currentpr1_carry_i_3_n_0,currentpr1_carry_i_4_n_0}),
        .O(NLW_currentpr1_carry_O_UNCONNECTED[3:0]),
        .S({currentpr1_carry_i_5_n_0,currentpr1_carry_i_6_n_0,currentpr1_carry_i_7_n_0,currentpr1_carry_i_8_n_0}));
  CARRY4 currentpr1_carry__0
       (.CI(currentpr1_carry_n_0),
        .CO({NLW_currentpr1_carry__0_CO_UNCONNECTED[3:1],currentpr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_currentpr1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,currentpr1_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    currentpr1_carry__0_i_1
       (.I0(\cnts_reg[0] [8]),
        .O(currentpr1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1_carry_i_1
       (.I0(acktime[6]),
        .I1(\cnts_reg[0] [6]),
        .I2(\cnts_reg[0] [7]),
        .I3(acktime[7]),
        .O(currentpr1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1_carry_i_2
       (.I0(acktime[4]),
        .I1(\cnts_reg[0] [4]),
        .I2(\cnts_reg[0] [5]),
        .I3(acktime[5]),
        .O(currentpr1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1_carry_i_3
       (.I0(acktime[2]),
        .I1(\cnts_reg[0] [2]),
        .I2(\cnts_reg[0] [3]),
        .I3(acktime[3]),
        .O(currentpr1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    currentpr1_carry_i_4
       (.I0(acktime[0]),
        .I1(\cnts_reg[0] [0]),
        .I2(\cnts_reg[0] [1]),
        .I3(acktime[1]),
        .O(currentpr1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1_carry_i_5
       (.I0(\cnts_reg[0] [7]),
        .I1(acktime[7]),
        .I2(\cnts_reg[0] [6]),
        .I3(acktime[6]),
        .O(currentpr1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1_carry_i_6
       (.I0(\cnts_reg[0] [5]),
        .I1(acktime[5]),
        .I2(\cnts_reg[0] [4]),
        .I3(acktime[4]),
        .O(currentpr1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1_carry_i_7
       (.I0(\cnts_reg[0] [3]),
        .I1(acktime[3]),
        .I2(\cnts_reg[0] [2]),
        .I3(acktime[2]),
        .O(currentpr1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    currentpr1_carry_i_8
       (.I0(\cnts_reg[0] [1]),
        .I1(acktime[1]),
        .I2(\cnts_reg[0] [0]),
        .I3(acktime[0]),
        .O(currentpr1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \currentpr[0]_i_1 
       (.I0(p_6_out[0]),
        .I1(\currentpr[0]_i_3_n_0 ),
        .I2(currentpren[0]),
        .I3(currentpr1_carry__0_n_3),
        .I4(\currentpr[0]_i_4_n_0 ),
        .I5(currentpr[0]),
        .O(\currentpr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC888)) 
    \currentpr[0]_i_2 
       (.I0(\acknowledges_reg[0]_0 [1]),
        .I1(currentpren[0]),
        .I2(ackin[0]),
        .I3(ready),
        .O(p_6_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currentpr[0]_i_3 
       (.I0(\acknowledges_reg[0]_0 [1]),
        .I1(\acknowledges_reg[0]_0 [0]),
        .O(\currentpr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000400000)) 
    \currentpr[0]_i_4 
       (.I0(\cnts[0][3]_i_2_n_0 ),
        .I1(ackin[0]),
        .I2(currentpren[0]),
        .I3(keyin[0]),
        .I4(ready),
        .I5(\keyInPrev_reg_n_0_[0] ),
        .O(\currentpr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \currentpr[1]_i_1 
       (.I0(p_6_out[1]),
        .I1(\currentpr[1]_i_3_n_0 ),
        .I2(currentpren[1]),
        .I3(currentpr1__4_carry__0_n_3),
        .I4(\currentpr[1]_i_4_n_0 ),
        .I5(currentpr[1]),
        .O(\currentpr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC888)) 
    \currentpr[1]_i_2 
       (.I0(\acknowledges_reg[1]_1 [1]),
        .I1(currentpren[1]),
        .I2(ackin[1]),
        .I3(ready),
        .O(p_6_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currentpr[1]_i_3 
       (.I0(\acknowledges_reg[1]_1 [1]),
        .I1(\acknowledges_reg[1]_1 [0]),
        .O(\currentpr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000400000)) 
    \currentpr[1]_i_4 
       (.I0(\cnts[1][3]_i_2_n_0 ),
        .I1(ackin[1]),
        .I2(currentpren[1]),
        .I3(keyin[1]),
        .I4(ready),
        .I5(p_0_in),
        .O(\currentpr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \currentpr[2]_i_1 
       (.I0(p_6_out[2]),
        .I1(\currentpr[2]_i_3_n_0 ),
        .I2(currentpren[2]),
        .I3(currentpr1__9_carry__0_n_3),
        .I4(\currentpr[2]_i_4_n_0 ),
        .I5(currentpr[2]),
        .O(\currentpr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC888)) 
    \currentpr[2]_i_2 
       (.I0(\acknowledges_reg[2]_2 [1]),
        .I1(currentpren[2]),
        .I2(ackin[2]),
        .I3(ready),
        .O(p_6_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currentpr[2]_i_3 
       (.I0(\acknowledges_reg[2]_2 [1]),
        .I1(\acknowledges_reg[2]_2 [0]),
        .O(\currentpr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000400000)) 
    \currentpr[2]_i_4 
       (.I0(\cnts[2][3]_i_2_n_0 ),
        .I1(ackin[2]),
        .I2(currentpren[2]),
        .I3(keyin[2]),
        .I4(ready),
        .I5(p_0_in1_in),
        .O(\currentpr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \currentpr[3]_i_1 
       (.I0(p_6_out[3]),
        .I1(\currentpr[3]_i_3_n_0 ),
        .I2(currentpren[3]),
        .I3(currentpr1__14_carry__0_n_3),
        .I4(\currentpr[3]_i_4_n_0 ),
        .I5(currentpr[3]),
        .O(\currentpr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC888)) 
    \currentpr[3]_i_2 
       (.I0(\acknowledges_reg[3]_3 [1]),
        .I1(currentpren[3]),
        .I2(ackin[3]),
        .I3(ready),
        .O(p_6_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currentpr[3]_i_3 
       (.I0(\acknowledges_reg[3]_3 [1]),
        .I1(\acknowledges_reg[3]_3 [0]),
        .O(\currentpr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000400000)) 
    \currentpr[3]_i_4 
       (.I0(\cnts[3][3]_i_2_n_0 ),
        .I1(ackin[3]),
        .I2(currentpren[3]),
        .I3(keyin[3]),
        .I4(ready),
        .I5(p_0_in4_in),
        .O(\currentpr[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currentpr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\currentpr[0]_i_1_n_0 ),
        .Q(currentpr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \currentpr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\currentpr[1]_i_1_n_0 ),
        .Q(currentpr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \currentpr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\currentpr[2]_i_1_n_0 ),
        .Q(currentpr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \currentpr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\currentpr[3]_i_1_n_0 ),
        .Q(currentpr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \keyInPrev_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(keyin[0]),
        .Q(\keyInPrev_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keyInPrev_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(keyin[1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keyInPrev_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(keyin[2]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keyInPrev_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(keyin[3]),
        .Q(p_0_in4_in),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_AcknowledgeChecker_v_0_1,AcknowledgeChecker_ver_1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "AcknowledgeChecker_ver_1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    ackin,
    currentpren,
    ackpren,
    currentpr,
    ackpr,
    acktime,
    keyin,
    ready,
    reset);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  input [3:0]ackin;
  input [3:0]currentpren;
  input [3:0]ackpren;
  output [3:0]currentpr;
  output [3:0]ackpr;
  input [7:0]acktime;
  input [3:0]keyin;
  input ready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire [3:0]ackin;
  wire [3:0]ackpr;
  wire [3:0]ackpren;
  wire [7:0]acktime;
  wire clk;
  wire [3:0]currentpr;
  wire [3:0]currentpren;
  wire [3:0]keyin;
  wire ready;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AcknowledgeChecker_ver_1_0 U0
       (.ackin(ackin),
        .ackpr(ackpr),
        .ackpren(ackpren),
        .acktime(acktime),
        .clk(clk),
        .currentpr(currentpr),
        .currentpren(currentpren),
        .keyin(keyin),
        .ready(ready),
        .reset(reset));
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
