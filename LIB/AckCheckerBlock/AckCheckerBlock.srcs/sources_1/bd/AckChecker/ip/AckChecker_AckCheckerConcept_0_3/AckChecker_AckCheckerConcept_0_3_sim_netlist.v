// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  3 11:35:55 2023
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top AckChecker_AckCheckerConcept_0_3 -prefix
//               AckChecker_AckCheckerConcept_0_3_ AckChecker_AckCheckerConcept_0_0_sim_netlist.v
// Design      : AckChecker_AckCheckerConcept_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AckChecker_AckCheckerConcept_0_3_AckCheckerConcept
   (AckPr,
    currentPr,
    reset,
    acknowledge_in,
    Clk,
    line,
    currentPr_en,
    Ready,
    ackTime,
    AckPr_en);
  output AckPr;
  output currentPr;
  input reset;
  input acknowledge_in;
  input Clk;
  input line;
  input currentPr_en;
  input Ready;
  input [31:0]ackTime;
  input AckPr_en;

  wire AckPr;
  wire AckPr_en;
  wire AckPr_i_1_n_0;
  wire Clk;
  wire \FSM_sequential_acknowledge[0]_i_1_n_0 ;
  wire \FSM_sequential_acknowledge[1]_i_1_n_0 ;
  wire Ready;
  wire \TimeCnt[0]_i_1_n_0 ;
  wire \TimeCnt[1]_i_1_n_0 ;
  wire \TimeCnt[3]_i_1_n_0 ;
  wire \TimeCnt[3]_i_2_n_0 ;
  wire \TimeCnt[5]_i_1_n_0 ;
  wire \TimeCnt[7]_i_1_n_0 ;
  wire \TimeCnt[7]_i_2_n_0 ;
  wire \TimeCnt[7]_i_4_n_0 ;
  wire \TimeCnt_reg_n_0_[0] ;
  wire \TimeCnt_reg_n_0_[1] ;
  wire \TimeCnt_reg_n_0_[2] ;
  wire \TimeCnt_reg_n_0_[3] ;
  wire \TimeCnt_reg_n_0_[4] ;
  wire \TimeCnt_reg_n_0_[5] ;
  wire \TimeCnt_reg_n_0_[6] ;
  wire \TimeCnt_reg_n_0_[7] ;
  wire [31:0]ackTime;
  wire [1:0]acknowledge;
  wire acknowledge_in;
  wire currentPr;
  wire currentPr1__0;
  wire currentPr_en;
  wire currentPr_i_1_n_0;
  wire currentPr_i_2_n_0;
  wire currentPr_i_3_n_0;
  wire currentPr_i_4_n_0;
  wire line;
  wire line_prev;
  wire ltOp__15;
  wire ltOp_carry__0_n_0;
  wire ltOp_carry__0_n_1;
  wire ltOp_carry__0_n_2;
  wire ltOp_carry__0_n_3;
  wire ltOp_carry__1_n_0;
  wire ltOp_carry__1_n_1;
  wire ltOp_carry__1_n_2;
  wire ltOp_carry__1_n_3;
  wire ltOp_carry__2_n_1;
  wire ltOp_carry__2_n_2;
  wire ltOp_carry__2_n_3;
  wire ltOp_carry_i_1__0_n_0;
  wire ltOp_carry_i_1__1_n_0;
  wire ltOp_carry_i_1__2_n_0;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2__0_n_0;
  wire ltOp_carry_i_2__1_n_0;
  wire ltOp_carry_i_2__2_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3__0_n_0;
  wire ltOp_carry_i_3__1_n_0;
  wire ltOp_carry_i_3__2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4__0_n_0;
  wire ltOp_carry_i_4__1_n_0;
  wire ltOp_carry_i_4__2_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5__0_n_0;
  wire ltOp_carry_i_5__1_n_0;
  wire ltOp_carry_i_5__2_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6__0_n_0;
  wire ltOp_carry_i_6__1_n_0;
  wire ltOp_carry_i_6__2_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7__0_n_0;
  wire ltOp_carry_i_7__1_n_0;
  wire ltOp_carry_i_7__2_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8__0_n_0;
  wire ltOp_carry_i_8__1_n_0;
  wire ltOp_carry_i_8__2_n_0;
  wire ltOp_carry_i_8_n_0;
  wire ltOp_carry_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire [7:2]plusOp;
  wire reset;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFF0400)) 
    AckPr_i_1
       (.I0(ltOp__15),
        .I1(acknowledge[0]),
        .I2(acknowledge[1]),
        .I3(AckPr_en),
        .I4(AckPr),
        .O(AckPr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AckPr_reg
       (.C(Clk),
        .CE(1'b1),
        .D(AckPr_i_1_n_0),
        .Q(AckPr),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD3D0C3C0)) 
    \FSM_sequential_acknowledge[0]_i_1 
       (.I0(acknowledge_in),
        .I1(acknowledge[1]),
        .I2(acknowledge[0]),
        .I3(currentPr1__0),
        .I4(ltOp__15),
        .O(\FSM_sequential_acknowledge[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_sequential_acknowledge[0]_i_2 
       (.I0(line_prev),
        .I1(Ready),
        .I2(line),
        .O(currentPr1__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE8C0)) 
    \FSM_sequential_acknowledge[1]_i_1 
       (.I0(acknowledge_in),
        .I1(acknowledge[1]),
        .I2(acknowledge[0]),
        .I3(ltOp__15),
        .O(\FSM_sequential_acknowledge[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "check:01,waiting_strobe_end:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledge_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledge[0]_i_1_n_0 ),
        .Q(acknowledge[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "check:01,waiting_strobe_end:10,waiting:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_acknowledge_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\FSM_sequential_acknowledge[1]_i_1_n_0 ),
        .Q(acknowledge[1]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \TimeCnt[0]_i_1 
       (.I0(\TimeCnt_reg_n_0_[0] ),
        .O(\TimeCnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D0FFFFD0000000)) 
    \TimeCnt[1]_i_1 
       (.I0(acknowledge[1]),
        .I1(acknowledge_in),
        .I2(ltOp__15),
        .I3(\TimeCnt_reg_n_0_[0] ),
        .I4(\TimeCnt[7]_i_2_n_0 ),
        .I5(\TimeCnt_reg_n_0_[1] ),
        .O(\TimeCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \TimeCnt[2]_i_1 
       (.I0(\TimeCnt_reg_n_0_[1] ),
        .I1(\TimeCnt_reg_n_0_[0] ),
        .I2(\TimeCnt_reg_n_0_[2] ),
        .O(plusOp[2]));
  LUT6 #(
    .INIT(64'h00D0FFFFD0000000)) 
    \TimeCnt[3]_i_1 
       (.I0(acknowledge[1]),
        .I1(acknowledge_in),
        .I2(ltOp__15),
        .I3(\TimeCnt[3]_i_2_n_0 ),
        .I4(\TimeCnt[7]_i_2_n_0 ),
        .I5(\TimeCnt_reg_n_0_[3] ),
        .O(\TimeCnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \TimeCnt[3]_i_2 
       (.I0(\TimeCnt_reg_n_0_[2] ),
        .I1(\TimeCnt_reg_n_0_[1] ),
        .I2(\TimeCnt_reg_n_0_[0] ),
        .O(\TimeCnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \TimeCnt[4]_i_1 
       (.I0(\TimeCnt_reg_n_0_[3] ),
        .I1(\TimeCnt_reg_n_0_[2] ),
        .I2(\TimeCnt_reg_n_0_[1] ),
        .I3(\TimeCnt_reg_n_0_[0] ),
        .I4(\TimeCnt_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h4044FFFF80880000)) 
    \TimeCnt[5]_i_1 
       (.I0(\TimeCnt[7]_i_4_n_0 ),
        .I1(ltOp__15),
        .I2(acknowledge_in),
        .I3(acknowledge[1]),
        .I4(\TimeCnt[7]_i_2_n_0 ),
        .I5(\TimeCnt_reg_n_0_[5] ),
        .O(\TimeCnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \TimeCnt[6]_i_1 
       (.I0(\TimeCnt_reg_n_0_[5] ),
        .I1(\TimeCnt[7]_i_4_n_0 ),
        .I2(\TimeCnt_reg_n_0_[6] ),
        .O(plusOp[6]));
  LUT5 #(
    .INIT(32'h01110404)) 
    \TimeCnt[7]_i_1 
       (.I0(reset),
        .I1(acknowledge[0]),
        .I2(ltOp__15),
        .I3(acknowledge_in),
        .I4(acknowledge[1]),
        .O(\TimeCnt[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \TimeCnt[7]_i_2 
       (.I0(acknowledge[1]),
        .I1(acknowledge[0]),
        .I2(reset),
        .O(\TimeCnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \TimeCnt[7]_i_3 
       (.I0(\TimeCnt_reg_n_0_[6] ),
        .I1(\TimeCnt[7]_i_4_n_0 ),
        .I2(\TimeCnt_reg_n_0_[5] ),
        .I3(\TimeCnt_reg_n_0_[7] ),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \TimeCnt[7]_i_4 
       (.I0(\TimeCnt_reg_n_0_[4] ),
        .I1(\TimeCnt_reg_n_0_[3] ),
        .I2(\TimeCnt_reg_n_0_[2] ),
        .I3(\TimeCnt_reg_n_0_[1] ),
        .I4(\TimeCnt_reg_n_0_[0] ),
        .O(\TimeCnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[0] 
       (.C(Clk),
        .CE(\TimeCnt[7]_i_2_n_0 ),
        .D(\TimeCnt[0]_i_1_n_0 ),
        .Q(\TimeCnt_reg_n_0_[0] ),
        .R(\TimeCnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\TimeCnt[1]_i_1_n_0 ),
        .Q(\TimeCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[2] 
       (.C(Clk),
        .CE(\TimeCnt[7]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(\TimeCnt_reg_n_0_[2] ),
        .R(\TimeCnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\TimeCnt[3]_i_1_n_0 ),
        .Q(\TimeCnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[4] 
       (.C(Clk),
        .CE(\TimeCnt[7]_i_2_n_0 ),
        .D(plusOp[4]),
        .Q(\TimeCnt_reg_n_0_[4] ),
        .R(\TimeCnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\TimeCnt[5]_i_1_n_0 ),
        .Q(\TimeCnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[6] 
       (.C(Clk),
        .CE(\TimeCnt[7]_i_2_n_0 ),
        .D(plusOp[6]),
        .Q(\TimeCnt_reg_n_0_[6] ),
        .R(\TimeCnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeCnt_reg[7] 
       (.C(Clk),
        .CE(\TimeCnt[7]_i_2_n_0 ),
        .D(plusOp[7]),
        .Q(\TimeCnt_reg_n_0_[7] ),
        .R(\TimeCnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    currentPr_i_1
       (.I0(currentPr_i_2_n_0),
        .I1(currentPr_i_3_n_0),
        .I2(acknowledge[1]),
        .I3(ltOp__15),
        .I4(currentPr_i_4_n_0),
        .I5(currentPr),
        .O(currentPr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC888)) 
    currentPr_i_2
       (.I0(acknowledge[1]),
        .I1(currentPr_en),
        .I2(acknowledge_in),
        .I3(Ready),
        .O(currentPr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    currentPr_i_3
       (.I0(currentPr_en),
        .I1(acknowledge[0]),
        .O(currentPr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000400)) 
    currentPr_i_4
       (.I0(acknowledge[1]),
        .I1(acknowledge_in),
        .I2(line),
        .I3(Ready),
        .I4(line_prev),
        .O(currentPr_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    currentPr_reg
       (.C(Clk),
        .CE(1'b1),
        .D(currentPr_i_1_n_0),
        .Q(currentPr),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    line_prev_reg
       (.C(Clk),
        .CE(1'b1),
        .D(line),
        .Q(line_prev),
        .R(1'b0));
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0,ltOp_carry_i_8_n_0}));
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp_carry__0_n_0,ltOp_carry__0_n_1,ltOp_carry__0_n_2,ltOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1__0_n_0,ltOp_carry_i_2__0_n_0,ltOp_carry_i_3__0_n_0,ltOp_carry_i_4__0_n_0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5__0_n_0,ltOp_carry_i_6__0_n_0,ltOp_carry_i_7__0_n_0,ltOp_carry_i_8__0_n_0}));
  CARRY4 ltOp_carry__1
       (.CI(ltOp_carry__0_n_0),
        .CO({ltOp_carry__1_n_0,ltOp_carry__1_n_1,ltOp_carry__1_n_2,ltOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1__1_n_0,ltOp_carry_i_2__1_n_0,ltOp_carry_i_3__1_n_0,ltOp_carry_i_4__1_n_0}),
        .O(NLW_ltOp_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5__1_n_0,ltOp_carry_i_6__1_n_0,ltOp_carry_i_7__1_n_0,ltOp_carry_i_8__1_n_0}));
  CARRY4 ltOp_carry__2
       (.CI(ltOp_carry__1_n_0),
        .CO({ltOp__15,ltOp_carry__2_n_1,ltOp_carry__2_n_2,ltOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1__2_n_0,ltOp_carry_i_2__2_n_0,ltOp_carry_i_3__2_n_0,ltOp_carry_i_4__2_n_0}),
        .O(NLW_ltOp_carry__2_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5__2_n_0,ltOp_carry_i_6__2_n_0,ltOp_carry_i_7__2_n_0,ltOp_carry_i_8__2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_1
       (.I0(ackTime[6]),
        .I1(\TimeCnt_reg_n_0_[6] ),
        .I2(\TimeCnt_reg_n_0_[7] ),
        .I3(ackTime[7]),
        .O(ltOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_1__0
       (.I0(ackTime[14]),
        .I1(ackTime[15]),
        .O(ltOp_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_1__1
       (.I0(ackTime[22]),
        .I1(ackTime[23]),
        .O(ltOp_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_1__2
       (.I0(ackTime[30]),
        .I1(ackTime[31]),
        .O(ltOp_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_2
       (.I0(ackTime[4]),
        .I1(\TimeCnt_reg_n_0_[4] ),
        .I2(\TimeCnt_reg_n_0_[5] ),
        .I3(ackTime[5]),
        .O(ltOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_2__0
       (.I0(ackTime[12]),
        .I1(ackTime[13]),
        .O(ltOp_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_2__1
       (.I0(ackTime[20]),
        .I1(ackTime[21]),
        .O(ltOp_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_2__2
       (.I0(ackTime[28]),
        .I1(ackTime[29]),
        .O(ltOp_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_3
       (.I0(ackTime[2]),
        .I1(\TimeCnt_reg_n_0_[2] ),
        .I2(\TimeCnt_reg_n_0_[3] ),
        .I3(ackTime[3]),
        .O(ltOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_3__0
       (.I0(ackTime[10]),
        .I1(ackTime[11]),
        .O(ltOp_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_3__1
       (.I0(ackTime[18]),
        .I1(ackTime[19]),
        .O(ltOp_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_3__2
       (.I0(ackTime[26]),
        .I1(ackTime[27]),
        .O(ltOp_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_4
       (.I0(ackTime[0]),
        .I1(\TimeCnt_reg_n_0_[0] ),
        .I2(\TimeCnt_reg_n_0_[1] ),
        .I3(ackTime[1]),
        .O(ltOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_4__0
       (.I0(ackTime[8]),
        .I1(ackTime[9]),
        .O(ltOp_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_4__1
       (.I0(ackTime[16]),
        .I1(ackTime[17]),
        .O(ltOp_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ltOp_carry_i_4__2
       (.I0(ackTime[24]),
        .I1(ackTime[25]),
        .O(ltOp_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_5
       (.I0(\TimeCnt_reg_n_0_[7] ),
        .I1(ackTime[7]),
        .I2(\TimeCnt_reg_n_0_[6] ),
        .I3(ackTime[6]),
        .O(ltOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_5__0
       (.I0(ackTime[15]),
        .I1(ackTime[14]),
        .O(ltOp_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_5__1
       (.I0(ackTime[23]),
        .I1(ackTime[22]),
        .O(ltOp_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_5__2
       (.I0(ackTime[31]),
        .I1(ackTime[30]),
        .O(ltOp_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_6
       (.I0(\TimeCnt_reg_n_0_[5] ),
        .I1(ackTime[5]),
        .I2(\TimeCnt_reg_n_0_[4] ),
        .I3(ackTime[4]),
        .O(ltOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_6__0
       (.I0(ackTime[13]),
        .I1(ackTime[12]),
        .O(ltOp_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_6__1
       (.I0(ackTime[21]),
        .I1(ackTime[20]),
        .O(ltOp_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_6__2
       (.I0(ackTime[29]),
        .I1(ackTime[28]),
        .O(ltOp_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7
       (.I0(\TimeCnt_reg_n_0_[3] ),
        .I1(ackTime[3]),
        .I2(\TimeCnt_reg_n_0_[2] ),
        .I3(ackTime[2]),
        .O(ltOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_7__0
       (.I0(ackTime[11]),
        .I1(ackTime[10]),
        .O(ltOp_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_7__1
       (.I0(ackTime[19]),
        .I1(ackTime[18]),
        .O(ltOp_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_7__2
       (.I0(ackTime[27]),
        .I1(ackTime[26]),
        .O(ltOp_carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8
       (.I0(\TimeCnt_reg_n_0_[1] ),
        .I1(ackTime[1]),
        .I2(\TimeCnt_reg_n_0_[0] ),
        .I3(ackTime[0]),
        .O(ltOp_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_8__0
       (.I0(ackTime[9]),
        .I1(ackTime[8]),
        .O(ltOp_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_8__1
       (.I0(ackTime[17]),
        .I1(ackTime[16]),
        .O(ltOp_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_8__2
       (.I0(ackTime[25]),
        .I1(ackTime[24]),
        .O(ltOp_carry_i_8__2_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "AckChecker_AckCheckerConcept_0_0,AckCheckerConcept,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "AckCheckerConcept,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module AckChecker_AckCheckerConcept_0_3
   (ackTime,
    AckPr_en,
    AckPr,
    acknowledge_in,
    Clk,
    currentPr_en,
    currentPr,
    line,
    Ready,
    reset);
  input [31:0]ackTime;
  input AckPr_en;
  output AckPr;
  input acknowledge_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN AckChecker_Clk_0, INSERT_VIP 0" *) input Clk;
  input currentPr_en;
  output currentPr;
  input line;
  input Ready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire AckPr;
  wire AckPr_en;
  wire Clk;
  wire Ready;
  wire [31:0]ackTime;
  wire acknowledge_in;
  wire currentPr;
  wire currentPr_en;
  wire line;
  wire reset;

  AckChecker_AckCheckerConcept_0_3_AckCheckerConcept U0
       (.AckPr(AckPr),
        .AckPr_en(AckPr_en),
        .Clk(Clk),
        .Ready(Ready),
        .ackTime(ackTime),
        .acknowledge_in(acknowledge_in),
        .currentPr(currentPr),
        .currentPr_en(currentPr_en),
        .line(line),
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
