//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Oct 22 17:49:27 2026
//Host        : STAS-W10 running 64-bit major release  (build 9200)
//Command     : generate_target TransistorKeys_wrapper.bd
//Design      : TransistorKeys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TransistorKeys_wrapper
   (acknowledges,
    ackout,
    ackpr,
    ackpren,
    acktime,
    breaken,
    clk,
    currentpr,
    currentpren,
    deadtime,
    er0in,
    keysel_0,
    keysel_1,
    keysen,
    keysout,
    linepr,
    linepren,
    mintime,
    mintimepr,
    mintimepren,
    ob_0,
    ob_1,
    ready,
    reset,
    softshutdownen,
    softshutdownpr,
    softshutdowntimer,
    timeerror);
  input [7:0]acknowledges;
  output [7:0]ackout;
  output [7:0]ackpr;
  input [7:0]ackpren;
  input [7:0]acktime;
  input breaken;
  input clk;
  output [7:0]currentpr;
  input [7:0]currentpren;
  input [7:0]deadtime;
  input er0in;
  input [1:0]keysel_0;
  input [1:0]keysel_1;
  input [7:0]keysen;
  output [7:0]keysout;
  output [1:0]linepr;
  input linepren;
  input [7:0]mintime;
  output [1:0]mintimepr;
  input mintimepren;
  input [1:0]ob_0;
  input [1:0]ob_1;
  input ready;
  input reset;
  input softshutdownen;
  output [1:0]softshutdownpr;
  input [15:0]softshutdowntimer;
  output [15:0]timeerror;

  wire [7:0]acknowledges;
  wire [7:0]ackout;
  wire [7:0]ackpr;
  wire [7:0]ackpren;
  wire [7:0]acktime;
  wire breaken;
  wire clk;
  wire [7:0]currentpr;
  wire [7:0]currentpren;
  wire [7:0]deadtime;
  wire er0in;
  wire [1:0]keysel_0;
  wire [1:0]keysel_1;
  wire [7:0]keysen;
  wire [7:0]keysout;
  wire [1:0]linepr;
  wire linepren;
  wire [7:0]mintime;
  wire [1:0]mintimepr;
  wire mintimepren;
  wire [1:0]ob_0;
  wire [1:0]ob_1;
  wire ready;
  wire reset;
  wire softshutdownen;
  wire [1:0]softshutdownpr;
  wire [15:0]softshutdowntimer;
  wire [15:0]timeerror;

  TransistorKeys TransistorKeys_i
       (.acknowledges(acknowledges),
        .ackout(ackout),
        .ackpr(ackpr),
        .ackpren(ackpren),
        .acktime(acktime),
        .breaken(breaken),
        .clk(clk),
        .currentpr(currentpr),
        .currentpren(currentpren),
        .deadtime(deadtime),
        .er0in(er0in),
        .keysel_0(keysel_0),
        .keysel_1(keysel_1),
        .keysen(keysen),
        .keysout(keysout),
        .linepr(linepr),
        .linepren(linepren),
        .mintime(mintime),
        .mintimepr(mintimepr),
        .mintimepren(mintimepren),
        .ob_0(ob_0),
        .ob_1(ob_1),
        .ready(ready),
        .reset(reset),
        .softshutdownen(softshutdownen),
        .softshutdownpr(softshutdownpr),
        .softshutdowntimer(softshutdowntimer),
        .timeerror(timeerror));
endmodule
