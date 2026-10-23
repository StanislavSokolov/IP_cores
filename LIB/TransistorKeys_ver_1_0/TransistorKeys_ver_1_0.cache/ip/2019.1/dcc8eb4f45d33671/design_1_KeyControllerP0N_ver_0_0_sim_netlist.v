// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 22 11:48:31 2026
// Host        : STAS-W10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_KeyControllerP0N_ver_0_0_sim_netlist.v
// Design      : design_1_KeyControllerP0N_ver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_KeyControllerP0N_ver_2_0
   (linePrBuf_reg_0,
    keysout,
    start,
    softshutdownpr,
    breaken,
    softshutdownen,
    er0in,
    ready,
    keysel,
    keysen,
    clk,
    ob,
    reset,
    isdeadtimeok,
    linepren,
    softshutdowntimer);
  output linePrBuf_reg_0;
  output [3:0]keysout;
  output start;
  output softshutdownpr;
  input breaken;
  input softshutdownen;
  input er0in;
  input ready;
  input [1:0]keysel;
  input [3:0]keysen;
  input clk;
  input [1:0]ob;
  input reset;
  input isdeadtimeok;
  input linepren;
  input [15:0]softshutdowntimer;

  wire breaken;
  wire clk;
  wire cnt6_in;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cntsoftsd[0]_i_1_n_0 ;
  wire \cntsoftsd[0]_i_3_n_0 ;
  wire \cntsoftsd[0]_i_4_n_0 ;
  wire \cntsoftsd[0]_i_5_n_0 ;
  wire \cntsoftsd[0]_i_6_n_0 ;
  wire \cntsoftsd[0]_i_7_n_0 ;
  wire \cntsoftsd[0]_i_8_n_0 ;
  wire \cntsoftsd[12]_i_2_n_0 ;
  wire \cntsoftsd[12]_i_3_n_0 ;
  wire \cntsoftsd[12]_i_4_n_0 ;
  wire \cntsoftsd[12]_i_5_n_0 ;
  wire \cntsoftsd[4]_i_2_n_0 ;
  wire \cntsoftsd[4]_i_3_n_0 ;
  wire \cntsoftsd[4]_i_4_n_0 ;
  wire \cntsoftsd[4]_i_5_n_0 ;
  wire \cntsoftsd[8]_i_2_n_0 ;
  wire \cntsoftsd[8]_i_3_n_0 ;
  wire \cntsoftsd[8]_i_4_n_0 ;
  wire \cntsoftsd[8]_i_5_n_0 ;
  wire [15:0]cntsoftsd_reg;
  wire \cntsoftsd_reg[0]_i_2_n_0 ;
  wire \cntsoftsd_reg[0]_i_2_n_1 ;
  wire \cntsoftsd_reg[0]_i_2_n_2 ;
  wire \cntsoftsd_reg[0]_i_2_n_3 ;
  wire \cntsoftsd_reg[0]_i_2_n_4 ;
  wire \cntsoftsd_reg[0]_i_2_n_5 ;
  wire \cntsoftsd_reg[0]_i_2_n_6 ;
  wire \cntsoftsd_reg[0]_i_2_n_7 ;
  wire \cntsoftsd_reg[12]_i_1_n_1 ;
  wire \cntsoftsd_reg[12]_i_1_n_2 ;
  wire \cntsoftsd_reg[12]_i_1_n_3 ;
  wire \cntsoftsd_reg[12]_i_1_n_4 ;
  wire \cntsoftsd_reg[12]_i_1_n_5 ;
  wire \cntsoftsd_reg[12]_i_1_n_6 ;
  wire \cntsoftsd_reg[12]_i_1_n_7 ;
  wire \cntsoftsd_reg[4]_i_1_n_0 ;
  wire \cntsoftsd_reg[4]_i_1_n_1 ;
  wire \cntsoftsd_reg[4]_i_1_n_2 ;
  wire \cntsoftsd_reg[4]_i_1_n_3 ;
  wire \cntsoftsd_reg[4]_i_1_n_4 ;
  wire \cntsoftsd_reg[4]_i_1_n_5 ;
  wire \cntsoftsd_reg[4]_i_1_n_6 ;
  wire \cntsoftsd_reg[4]_i_1_n_7 ;
  wire \cntsoftsd_reg[8]_i_1_n_0 ;
  wire \cntsoftsd_reg[8]_i_1_n_1 ;
  wire \cntsoftsd_reg[8]_i_1_n_2 ;
  wire \cntsoftsd_reg[8]_i_1_n_3 ;
  wire \cntsoftsd_reg[8]_i_1_n_4 ;
  wire \cntsoftsd_reg[8]_i_1_n_5 ;
  wire \cntsoftsd_reg[8]_i_1_n_6 ;
  wire \cntsoftsd_reg[8]_i_1_n_7 ;
  wire er0in;
  wire errorBuf;
  wire errorBuf123_out__1;
  wire errorBuf1__0;
  wire errorBuf_i_1_n_0;
  wire isdeadtimeok;
  wire [1:1]keys;
  wire \keys[0]_i_1_n_0 ;
  wire \keys[0]_i_2_n_0 ;
  wire \keys[0]_i_3_n_0 ;
  wire \keys[1]_i_1_n_0 ;
  wire \keys[1]_i_2_n_0 ;
  wire \keys[1]_i_3_n_0 ;
  wire \keys[2]_i_1_n_0 ;
  wire \keys[2]_i_2_n_0 ;
  wire \keys[2]_i_3_n_0 ;
  wire \keys[2]_i_4_n_0 ;
  wire \keys[2]_i_5_n_0 ;
  wire \keys[3]_i_1_n_0 ;
  wire \keys[3]_i_2_n_0 ;
  wire \keys[3]_i_3_n_0 ;
  wire \keys[3]_i_4_n_0 ;
  wire \keys_reg_n_0_[0] ;
  wire \keys_reg_n_0_[1] ;
  wire \keys_reg_n_0_[2] ;
  wire \keys_reg_n_0_[3] ;
  wire [1:0]keysel;
  wire [3:0]keysen;
  wire [3:0]keysout;
  wire linePrBuf1__0;
  wire linePrBuf__0;
  wire linePrBuf_i_1_n_0;
  wire linePrBuf_i_4_n_0;
  wire linePrBuf_i_5_n_0;
  wire linePrBuf_reg_0;
  wire \lineState[0]_i_1_n_0 ;
  wire \lineState[0]_i_2_n_0 ;
  wire \lineState[1]_i_1_n_0 ;
  wire \lineState[1]_i_2_n_0 ;
  wire \lineState[2]_i_1_n_0 ;
  wire \lineState[2]_i_2_n_0 ;
  wire \lineState[2]_i_3_n_0 ;
  wire \lineState[2]_i_4_n_0 ;
  wire \lineState[2]_i_5_n_0 ;
  wire \lineState[2]_i_6_n_0 ;
  wire \lineState_reg_n_0_[0] ;
  wire \lineState_reg_n_0_[1] ;
  wire \lineState_reg_n_0_[2] ;
  wire linepren;
  wire [1:0]ob;
  wire ready;
  wire reset;
  wire softshutdownen;
  wire softshutdownpr;
  wire softshutdownpr_i_1_n_0;
  wire [15:0]softshutdowntimer;
  wire start;
  wire start1__7;
  wire start1_carry__0_n_1;
  wire start1_carry__0_n_2;
  wire start1_carry__0_n_3;
  wire start1_carry_i_1__0_n_0;
  wire start1_carry_i_1_n_0;
  wire start1_carry_i_2__0_n_0;
  wire start1_carry_i_2_n_0;
  wire start1_carry_i_3__0_n_0;
  wire start1_carry_i_3_n_0;
  wire start1_carry_i_4__0_n_0;
  wire start1_carry_i_4_n_0;
  wire start1_carry_i_5__0_n_0;
  wire start1_carry_i_5_n_0;
  wire start1_carry_i_6__0_n_0;
  wire start1_carry_i_6_n_0;
  wire start1_carry_i_7__0_n_0;
  wire start1_carry_i_7_n_0;
  wire start1_carry_i_8__0_n_0;
  wire start1_carry_i_8_n_0;
  wire start1_carry_n_0;
  wire start1_carry_n_1;
  wire start1_carry_n_2;
  wire start1_carry_n_3;
  wire start3_in;
  wire start_i_1_n_0;
  wire start_i_2_n_0;
  wire start_i_4_n_0;
  wire [3:3]\NLW_cntsoftsd_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_start1_carry_O_UNCONNECTED;
  wire [3:0]NLW_start1_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000FFFF730B0000)) 
    \cnt[0]_i_1 
       (.I0(\lineState_reg_n_0_[2] ),
        .I1(errorBuf123_out__1),
        .I2(\lineState_reg_n_0_[0] ),
        .I3(\lineState_reg_n_0_[1] ),
        .I4(\cnt[0]_i_2_n_0 ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \cnt[0]_i_2 
       (.I0(cnt6_in),
        .I1(softshutdownen),
        .I2(start1__7),
        .I3(errorBuf123_out__1),
        .I4(\cnt[0]_i_4_n_0 ),
        .I5(breaken),
        .O(\cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4604)) 
    \cnt[0]_i_3 
       (.I0(\lineState_reg_n_0_[1] ),
        .I1(\lineState_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\lineState_reg_n_0_[0] ),
        .O(cnt6_in));
  LUT6 #(
    .INIT(64'hFF5503FF033C55FF)) 
    \cnt[0]_i_4 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(keysel[1]),
        .I2(keysel[0]),
        .I3(\lineState_reg_n_0_[2] ),
        .I4(\lineState_reg_n_0_[1] ),
        .I5(\lineState_reg_n_0_[0] ),
        .O(\cnt[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000E22E222E)) 
    \cntsoftsd[0]_i_1 
       (.I0(\cntsoftsd[0]_i_3_n_0 ),
        .I1(errorBuf123_out__1),
        .I2(\lineState_reg_n_0_[2] ),
        .I3(\lineState_reg_n_0_[1] ),
        .I4(\lineState_reg_n_0_[0] ),
        .I5(breaken),
        .O(\cntsoftsd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cntsoftsd[0]_i_3 
       (.I0(softshutdownen),
        .I1(start1__7),
        .O(\cntsoftsd[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[0]_i_4 
       (.I0(cntsoftsd_reg[0]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[0]_i_5 
       (.I0(cntsoftsd_reg[3]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[0]_i_6 
       (.I0(cntsoftsd_reg[2]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[0]_i_7 
       (.I0(cntsoftsd_reg[1]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \cntsoftsd[0]_i_8 
       (.I0(cntsoftsd_reg[0]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[12]_i_2 
       (.I0(cntsoftsd_reg[15]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[12]_i_3 
       (.I0(cntsoftsd_reg[14]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[12]_i_4 
       (.I0(cntsoftsd_reg[13]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[12]_i_5 
       (.I0(cntsoftsd_reg[12]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[4]_i_2 
       (.I0(cntsoftsd_reg[7]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[4]_i_3 
       (.I0(cntsoftsd_reg[6]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[4]_i_4 
       (.I0(cntsoftsd_reg[5]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[4]_i_5 
       (.I0(cntsoftsd_reg[4]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[8]_i_2 
       (.I0(cntsoftsd_reg[11]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[8]_i_3 
       (.I0(cntsoftsd_reg[10]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[8]_i_4 
       (.I0(cntsoftsd_reg[9]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \cntsoftsd[8]_i_5 
       (.I0(cntsoftsd_reg[8]),
        .I1(linePrBuf_reg_0),
        .I2(ready),
        .I3(errorBuf),
        .I4(er0in),
        .O(\cntsoftsd[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[0] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[0]_i_2_n_7 ),
        .Q(cntsoftsd_reg[0]),
        .R(reset));
  CARRY4 \cntsoftsd_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cntsoftsd_reg[0]_i_2_n_0 ,\cntsoftsd_reg[0]_i_2_n_1 ,\cntsoftsd_reg[0]_i_2_n_2 ,\cntsoftsd_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cntsoftsd[0]_i_4_n_0 }),
        .O({\cntsoftsd_reg[0]_i_2_n_4 ,\cntsoftsd_reg[0]_i_2_n_5 ,\cntsoftsd_reg[0]_i_2_n_6 ,\cntsoftsd_reg[0]_i_2_n_7 }),
        .S({\cntsoftsd[0]_i_5_n_0 ,\cntsoftsd[0]_i_6_n_0 ,\cntsoftsd[0]_i_7_n_0 ,\cntsoftsd[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[10] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[8]_i_1_n_5 ),
        .Q(cntsoftsd_reg[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[11] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[8]_i_1_n_4 ),
        .Q(cntsoftsd_reg[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[12] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[12]_i_1_n_7 ),
        .Q(cntsoftsd_reg[12]),
        .R(reset));
  CARRY4 \cntsoftsd_reg[12]_i_1 
       (.CI(\cntsoftsd_reg[8]_i_1_n_0 ),
        .CO({\NLW_cntsoftsd_reg[12]_i_1_CO_UNCONNECTED [3],\cntsoftsd_reg[12]_i_1_n_1 ,\cntsoftsd_reg[12]_i_1_n_2 ,\cntsoftsd_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntsoftsd_reg[12]_i_1_n_4 ,\cntsoftsd_reg[12]_i_1_n_5 ,\cntsoftsd_reg[12]_i_1_n_6 ,\cntsoftsd_reg[12]_i_1_n_7 }),
        .S({\cntsoftsd[12]_i_2_n_0 ,\cntsoftsd[12]_i_3_n_0 ,\cntsoftsd[12]_i_4_n_0 ,\cntsoftsd[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[13] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[12]_i_1_n_6 ),
        .Q(cntsoftsd_reg[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[14] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[12]_i_1_n_5 ),
        .Q(cntsoftsd_reg[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[15] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[12]_i_1_n_4 ),
        .Q(cntsoftsd_reg[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[1] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[0]_i_2_n_6 ),
        .Q(cntsoftsd_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[2] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[0]_i_2_n_5 ),
        .Q(cntsoftsd_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[3] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[0]_i_2_n_4 ),
        .Q(cntsoftsd_reg[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[4] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[4]_i_1_n_7 ),
        .Q(cntsoftsd_reg[4]),
        .R(reset));
  CARRY4 \cntsoftsd_reg[4]_i_1 
       (.CI(\cntsoftsd_reg[0]_i_2_n_0 ),
        .CO({\cntsoftsd_reg[4]_i_1_n_0 ,\cntsoftsd_reg[4]_i_1_n_1 ,\cntsoftsd_reg[4]_i_1_n_2 ,\cntsoftsd_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntsoftsd_reg[4]_i_1_n_4 ,\cntsoftsd_reg[4]_i_1_n_5 ,\cntsoftsd_reg[4]_i_1_n_6 ,\cntsoftsd_reg[4]_i_1_n_7 }),
        .S({\cntsoftsd[4]_i_2_n_0 ,\cntsoftsd[4]_i_3_n_0 ,\cntsoftsd[4]_i_4_n_0 ,\cntsoftsd[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[5] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[4]_i_1_n_6 ),
        .Q(cntsoftsd_reg[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[6] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[4]_i_1_n_5 ),
        .Q(cntsoftsd_reg[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[7] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[4]_i_1_n_4 ),
        .Q(cntsoftsd_reg[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[8] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[8]_i_1_n_7 ),
        .Q(cntsoftsd_reg[8]),
        .R(reset));
  CARRY4 \cntsoftsd_reg[8]_i_1 
       (.CI(\cntsoftsd_reg[4]_i_1_n_0 ),
        .CO({\cntsoftsd_reg[8]_i_1_n_0 ,\cntsoftsd_reg[8]_i_1_n_1 ,\cntsoftsd_reg[8]_i_1_n_2 ,\cntsoftsd_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntsoftsd_reg[8]_i_1_n_4 ,\cntsoftsd_reg[8]_i_1_n_5 ,\cntsoftsd_reg[8]_i_1_n_6 ,\cntsoftsd_reg[8]_i_1_n_7 }),
        .S({\cntsoftsd[8]_i_2_n_0 ,\cntsoftsd[8]_i_3_n_0 ,\cntsoftsd[8]_i_4_n_0 ,\cntsoftsd[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cntsoftsd_reg[9] 
       (.C(clk),
        .CE(\cntsoftsd[0]_i_1_n_0 ),
        .D(\cntsoftsd_reg[8]_i_1_n_6 ),
        .Q(cntsoftsd_reg[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFBBFB)) 
    errorBuf_i_1
       (.I0(er0in),
        .I1(ready),
        .I2(linePrBuf_reg_0),
        .I3(breaken),
        .I4(errorBuf),
        .O(errorBuf_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    errorBuf_reg
       (.C(clk),
        .CE(1'b1),
        .D(errorBuf_i_1_n_0),
        .Q(errorBuf),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFFF2E22)) 
    \keys[0]_i_1 
       (.I0(\keys_reg_n_0_[0] ),
        .I1(\keys[1]_i_2_n_0 ),
        .I2(reset),
        .I3(\keys[0]_i_2_n_0 ),
        .I4(keys),
        .O(\keys[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2AAA)) 
    \keys[0]_i_2 
       (.I0(\keys[0]_i_3_n_0 ),
        .I1(\lineState_reg_n_0_[1] ),
        .I2(errorBuf123_out__1),
        .I3(\lineState_reg_n_0_[2] ),
        .I4(breaken),
        .I5(\lineState_reg_n_0_[0] ),
        .O(\keys[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \keys[0]_i_3 
       (.I0(errorBuf),
        .I1(er0in),
        .I2(ready),
        .I3(keysel[0]),
        .I4(breaken),
        .O(\keys[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2E22)) 
    \keys[1]_i_1 
       (.I0(\keys_reg_n_0_[1] ),
        .I1(\keys[1]_i_2_n_0 ),
        .I2(reset),
        .I3(\keys[1]_i_3_n_0 ),
        .I4(keys),
        .O(\keys[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFEF)) 
    \keys[1]_i_2 
       (.I0(reset),
        .I1(errorBuf123_out__1),
        .I2(\lineState_reg_n_0_[0] ),
        .I3(\lineState_reg_n_0_[1] ),
        .I4(\lineState_reg_n_0_[2] ),
        .I5(breaken),
        .O(\keys[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BFB0BFB0BFBF)) 
    \keys[1]_i_3 
       (.I0(keysel[1]),
        .I1(errorBuf1__0),
        .I2(breaken),
        .I3(\lineState_reg_n_0_[0] ),
        .I4(\lineState_reg_n_0_[2] ),
        .I5(\lineState_reg_n_0_[1] ),
        .O(\keys[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAABF)) 
    \keys[1]_i_4 
       (.I0(reset),
        .I1(softshutdownen),
        .I2(start1__7),
        .I3(errorBuf123_out__1),
        .I4(breaken),
        .O(keys));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \keys[1]_i_5 
       (.I0(errorBuf),
        .I1(er0in),
        .I2(ready),
        .O(errorBuf1__0));
  LUT6 #(
    .INIT(64'hEE22FFFFE2E2E2E2)) 
    \keys[2]_i_1 
       (.I0(\keys_reg_n_0_[2] ),
        .I1(\keys[3]_i_2_n_0 ),
        .I2(\keys[2]_i_2_n_0 ),
        .I3(ob[0]),
        .I4(breaken),
        .I5(reset),
        .O(\keys[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45550000)) 
    \keys[2]_i_2 
       (.I0(\keys[2]_i_3_n_0 ),
        .I1(\keys[2]_i_4_n_0 ),
        .I2(start1__7),
        .I3(softshutdownen),
        .I4(\keys[2]_i_5_n_0 ),
        .O(\keys[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55305500)) 
    \keys[2]_i_3 
       (.I0(ob[0]),
        .I1(\lineState_reg_n_0_[2] ),
        .I2(errorBuf123_out__1),
        .I3(breaken),
        .I4(\lineState_reg_n_0_[1] ),
        .O(\keys[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEBFB)) 
    \keys[2]_i_4 
       (.I0(breaken),
        .I1(\lineState_reg_n_0_[1] ),
        .I2(\lineState_reg_n_0_[2] ),
        .I3(\lineState_reg_n_0_[0] ),
        .O(\keys[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \keys[2]_i_5 
       (.I0(\lineState_reg_n_0_[0] ),
        .I1(\lineState_reg_n_0_[2] ),
        .I2(breaken),
        .I3(errorBuf123_out__1),
        .I4(\lineState_reg_n_0_[1] ),
        .O(\keys[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FFFFE2E2E2E2)) 
    \keys[3]_i_1 
       (.I0(\keys_reg_n_0_[3] ),
        .I1(\keys[3]_i_2_n_0 ),
        .I2(\keys[3]_i_3_n_0 ),
        .I3(ob[1]),
        .I4(breaken),
        .I5(reset),
        .O(\keys[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \keys[3]_i_2 
       (.I0(reset),
        .I1(errorBuf123_out__1),
        .I2(softshutdownen),
        .I3(\keys[3]_i_4_n_0 ),
        .I4(start1__7),
        .I5(breaken),
        .O(\keys[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAA3FFF)) 
    \keys[3]_i_3 
       (.I0(ob[1]),
        .I1(\lineState_reg_n_0_[0] ),
        .I2(errorBuf123_out__1),
        .I3(\lineState_reg_n_0_[2] ),
        .I4(breaken),
        .I5(\lineState_reg_n_0_[1] ),
        .O(\keys[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \keys[3]_i_4 
       (.I0(\lineState_reg_n_0_[2] ),
        .I1(\lineState_reg_n_0_[1] ),
        .I2(\lineState_reg_n_0_[0] ),
        .O(\keys[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \keys_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[0]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \keys_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[1]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \keys_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[2]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \keys_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\keys[3]_i_1_n_0 ),
        .Q(\keys_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \keysout[0]_INST_0 
       (.I0(\keys_reg_n_0_[0] ),
        .I1(keysen[0]),
        .O(keysout[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \keysout[1]_INST_0 
       (.I0(\keys_reg_n_0_[1] ),
        .I1(keysen[1]),
        .O(keysout[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \keysout[2]_INST_0 
       (.I0(\keys_reg_n_0_[2] ),
        .I1(keysen[2]),
        .O(keysout[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \keysout[3]_INST_0 
       (.I0(\keys_reg_n_0_[3] ),
        .I1(keysen[3]),
        .O(keysout[3]));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    linePrBuf_i_1
       (.I0(linepren),
        .I1(linePrBuf__0),
        .I2(breaken),
        .I3(errorBuf123_out__1),
        .I4(linePrBuf_reg_0),
        .O(linePrBuf_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    linePrBuf_i_3
       (.I0(er0in),
        .I1(errorBuf),
        .I2(ready),
        .I3(linePrBuf_reg_0),
        .O(errorBuf123_out__1));
  LUT6 #(
    .INIT(64'h0C0000000B300000)) 
    linePrBuf_i_4
       (.I0(linePrBuf1__0),
        .I1(\lineState_reg_n_0_[2] ),
        .I2(keysel[0]),
        .I3(keysel[1]),
        .I4(linepren),
        .I5(\lineState_reg_n_0_[1] ),
        .O(linePrBuf_i_4_n_0));
  LUT6 #(
    .INIT(64'h0062000000000000)) 
    linePrBuf_i_5
       (.I0(\lineState_reg_n_0_[2] ),
        .I1(\lineState_reg_n_0_[1] ),
        .I2(linePrBuf1__0),
        .I3(keysel[1]),
        .I4(keysel[0]),
        .I5(linepren),
        .O(linePrBuf_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    linePrBuf_reg
       (.C(clk),
        .CE(1'b1),
        .D(linePrBuf_i_1_n_0),
        .Q(linePrBuf_reg_0),
        .R(reset));
  MUXF7 linePrBuf_reg_i_2
       (.I0(linePrBuf_i_4_n_0),
        .I1(linePrBuf_i_5_n_0),
        .O(linePrBuf__0),
        .S(\lineState_reg_n_0_[0] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \lineState[0]_i_1 
       (.I0(\lineState_reg_n_0_[0] ),
        .I1(\lineState[2]_i_2_n_0 ),
        .I2(\lineState[0]_i_2_n_0 ),
        .I3(\lineState[2]_i_4_n_0 ),
        .O(\lineState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h03FF000020002000)) 
    \lineState[0]_i_2 
       (.I0(keysel[1]),
        .I1(keysel[0]),
        .I2(\lineState_reg_n_0_[1] ),
        .I3(errorBuf123_out__1),
        .I4(\lineState_reg_n_0_[0] ),
        .I5(\lineState_reg_n_0_[2] ),
        .O(\lineState[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \lineState[1]_i_1 
       (.I0(\lineState_reg_n_0_[1] ),
        .I1(\lineState[2]_i_2_n_0 ),
        .I2(\lineState[1]_i_2_n_0 ),
        .I3(\lineState[2]_i_4_n_0 ),
        .O(\lineState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h041B0F0500FFFFFF)) 
    \lineState[1]_i_2 
       (.I0(\lineState_reg_n_0_[0] ),
        .I1(keysel[0]),
        .I2(keysel[1]),
        .I3(\lineState_reg_n_0_[2] ),
        .I4(\lineState_reg_n_0_[1] ),
        .I5(errorBuf123_out__1),
        .O(\lineState[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \lineState[2]_i_1 
       (.I0(\lineState_reg_n_0_[2] ),
        .I1(\lineState[2]_i_2_n_0 ),
        .I2(\lineState[2]_i_3_n_0 ),
        .I3(\lineState[2]_i_4_n_0 ),
        .O(\lineState[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \lineState[2]_i_2 
       (.I0(\lineState[2]_i_5_n_0 ),
        .I1(errorBuf123_out__1),
        .I2(\lineState[2]_i_6_n_0 ),
        .I3(breaken),
        .O(\lineState[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11FF180018000000)) 
    \lineState[2]_i_3 
       (.I0(\lineState_reg_n_0_[0] ),
        .I1(keysel[1]),
        .I2(keysel[0]),
        .I3(errorBuf123_out__1),
        .I4(\lineState_reg_n_0_[1] ),
        .I5(\lineState_reg_n_0_[2] ),
        .O(\lineState[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAABBB)) 
    \lineState[2]_i_4 
       (.I0(reset),
        .I1(breaken),
        .I2(softshutdownen),
        .I3(start1__7),
        .I4(errorBuf123_out__1),
        .O(\lineState[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6A282828)) 
    \lineState[2]_i_5 
       (.I0(\lineState_reg_n_0_[2] ),
        .I1(\lineState_reg_n_0_[1] ),
        .I2(\lineState_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(isdeadtimeok),
        .O(\lineState[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFDEFF54AADAAFDEF)) 
    \lineState[2]_i_6 
       (.I0(\lineState_reg_n_0_[0] ),
        .I1(linePrBuf1__0),
        .I2(\lineState_reg_n_0_[2] ),
        .I3(\lineState_reg_n_0_[1] ),
        .I4(keysel[1]),
        .I5(keysel[0]),
        .O(\lineState[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lineState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\lineState[0]_i_1_n_0 ),
        .Q(\lineState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lineState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\lineState[1]_i_1_n_0 ),
        .Q(\lineState_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lineState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\lineState[2]_i_1_n_0 ),
        .Q(\lineState_reg_n_0_[2] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF04)) 
    softshutdownpr_i_1
       (.I0(errorBuf123_out__1),
        .I1(softshutdownen),
        .I2(breaken),
        .I3(softshutdownpr),
        .O(softshutdownpr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    softshutdownpr_reg
       (.C(clk),
        .CE(1'b1),
        .D(softshutdownpr_i_1_n_0),
        .Q(softshutdownpr),
        .R(reset));
  CARRY4 start1_carry
       (.CI(1'b0),
        .CO({start1_carry_n_0,start1_carry_n_1,start1_carry_n_2,start1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({start1_carry_i_1_n_0,start1_carry_i_2_n_0,start1_carry_i_3_n_0,start1_carry_i_4_n_0}),
        .O(NLW_start1_carry_O_UNCONNECTED[3:0]),
        .S({start1_carry_i_5_n_0,start1_carry_i_6_n_0,start1_carry_i_7_n_0,start1_carry_i_8_n_0}));
  CARRY4 start1_carry__0
       (.CI(start1_carry_n_0),
        .CO({start1__7,start1_carry__0_n_1,start1_carry__0_n_2,start1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({start1_carry_i_1__0_n_0,start1_carry_i_2__0_n_0,start1_carry_i_3__0_n_0,start1_carry_i_4__0_n_0}),
        .O(NLW_start1_carry__0_O_UNCONNECTED[3:0]),
        .S({start1_carry_i_5__0_n_0,start1_carry_i_6__0_n_0,start1_carry_i_7__0_n_0,start1_carry_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_1
       (.I0(softshutdowntimer[6]),
        .I1(cntsoftsd_reg[6]),
        .I2(cntsoftsd_reg[7]),
        .I3(softshutdowntimer[7]),
        .O(start1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_1__0
       (.I0(softshutdowntimer[14]),
        .I1(cntsoftsd_reg[14]),
        .I2(cntsoftsd_reg[15]),
        .I3(softshutdowntimer[15]),
        .O(start1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_2
       (.I0(softshutdowntimer[4]),
        .I1(cntsoftsd_reg[4]),
        .I2(cntsoftsd_reg[5]),
        .I3(softshutdowntimer[5]),
        .O(start1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_2__0
       (.I0(softshutdowntimer[12]),
        .I1(cntsoftsd_reg[12]),
        .I2(cntsoftsd_reg[13]),
        .I3(softshutdowntimer[13]),
        .O(start1_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_3
       (.I0(softshutdowntimer[2]),
        .I1(cntsoftsd_reg[2]),
        .I2(cntsoftsd_reg[3]),
        .I3(softshutdowntimer[3]),
        .O(start1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_3__0
       (.I0(softshutdowntimer[10]),
        .I1(cntsoftsd_reg[10]),
        .I2(cntsoftsd_reg[11]),
        .I3(softshutdowntimer[11]),
        .O(start1_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_4
       (.I0(softshutdowntimer[0]),
        .I1(cntsoftsd_reg[0]),
        .I2(cntsoftsd_reg[1]),
        .I3(softshutdowntimer[1]),
        .O(start1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    start1_carry_i_4__0
       (.I0(softshutdowntimer[8]),
        .I1(cntsoftsd_reg[8]),
        .I2(cntsoftsd_reg[9]),
        .I3(softshutdowntimer[9]),
        .O(start1_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_5
       (.I0(softshutdowntimer[6]),
        .I1(cntsoftsd_reg[6]),
        .I2(softshutdowntimer[7]),
        .I3(cntsoftsd_reg[7]),
        .O(start1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_5__0
       (.I0(softshutdowntimer[14]),
        .I1(cntsoftsd_reg[14]),
        .I2(softshutdowntimer[15]),
        .I3(cntsoftsd_reg[15]),
        .O(start1_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_6
       (.I0(softshutdowntimer[4]),
        .I1(cntsoftsd_reg[4]),
        .I2(softshutdowntimer[5]),
        .I3(cntsoftsd_reg[5]),
        .O(start1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_6__0
       (.I0(softshutdowntimer[12]),
        .I1(cntsoftsd_reg[12]),
        .I2(softshutdowntimer[13]),
        .I3(cntsoftsd_reg[13]),
        .O(start1_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_7
       (.I0(softshutdowntimer[2]),
        .I1(cntsoftsd_reg[2]),
        .I2(softshutdowntimer[3]),
        .I3(cntsoftsd_reg[3]),
        .O(start1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_7__0
       (.I0(softshutdowntimer[10]),
        .I1(cntsoftsd_reg[10]),
        .I2(softshutdowntimer[11]),
        .I3(cntsoftsd_reg[11]),
        .O(start1_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_8
       (.I0(softshutdowntimer[0]),
        .I1(cntsoftsd_reg[0]),
        .I2(softshutdowntimer[1]),
        .I3(cntsoftsd_reg[1]),
        .O(start1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    start1_carry_i_8__0
       (.I0(softshutdowntimer[8]),
        .I1(cntsoftsd_reg[8]),
        .I2(softshutdowntimer[9]),
        .I3(cntsoftsd_reg[9]),
        .O(start1_carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h38FF3800)) 
    start_i_1
       (.I0(\lineState_reg_n_0_[2] ),
        .I1(\lineState_reg_n_0_[0] ),
        .I2(\lineState_reg_n_0_[1] ),
        .I3(start_i_2_n_0),
        .I4(start),
        .O(start_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    start_i_2
       (.I0(start3_in),
        .I1(softshutdownen),
        .I2(start1__7),
        .I3(errorBuf123_out__1),
        .I4(start_i_4_n_0),
        .I5(breaken),
        .O(start_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFFAA2A)) 
    start_i_3
       (.I0(\lineState_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(isdeadtimeok),
        .I3(\lineState_reg_n_0_[1] ),
        .I4(\lineState_reg_n_0_[0] ),
        .O(start3_in));
  LUT6 #(
    .INIT(64'hF01FFF1F160F16FF)) 
    start_i_4
       (.I0(keysel[1]),
        .I1(keysel[0]),
        .I2(\lineState_reg_n_0_[2] ),
        .I3(\lineState_reg_n_0_[1] ),
        .I4(linePrBuf1__0),
        .I5(\lineState_reg_n_0_[0] ),
        .O(start_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    start_i_5
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(isdeadtimeok),
        .O(linePrBuf1__0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_KeyControllerP0N_ver_0_0,KeyControllerP0N_ver_2_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "KeyControllerP0N_ver_2_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    er0in,
    start,
    isdeadtimeok,
    linepren,
    linepr,
    keysout,
    keysel,
    keysen,
    breaken,
    ready,
    ob,
    reset,
    softshutdownen,
    softshutdowntimer,
    softshutdownpr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
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
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input softshutdownen;
  input [15:0]softshutdowntimer;
  output softshutdownpr;

  wire breaken;
  wire clk;
  wire er0in;
  wire isdeadtimeok;
  wire [1:0]keysel;
  wire [3:0]keysen;
  wire [3:0]keysout;
  wire linepr;
  wire linepren;
  wire [1:0]ob;
  wire ready;
  wire reset;
  wire softshutdownen;
  wire softshutdownpr;
  wire [15:0]softshutdowntimer;
  wire start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_KeyControllerP0N_ver_2_0 U0
       (.breaken(breaken),
        .clk(clk),
        .er0in(er0in),
        .isdeadtimeok(isdeadtimeok),
        .keysel(keysel),
        .keysen(keysen),
        .keysout(keysout),
        .linePrBuf_reg_0(linepr),
        .linepren(linepren),
        .ob(ob),
        .ready(ready),
        .reset(reset),
        .softshutdownen(softshutdownen),
        .softshutdownpr(softshutdownpr),
        .softshutdowntimer(softshutdowntimer),
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
