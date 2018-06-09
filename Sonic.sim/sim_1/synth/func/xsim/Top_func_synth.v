// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon May 28 00:29:49 2018
// Host        : DESKTOP-KA67FP9 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               F:/Project/XilinkProject/Sonic.xpr/Sonic/Sonic.sim/sim_1/synth/func/xsim/Top_func_synth.v
// Design      : Top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Sonic_trig
   (trig_OBUF,
    clk_IBUF_BUFG);
  output trig_OBUF;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [21:0]cnt_period;
  wire cnt_period0_carry__0_n_0;
  wire cnt_period0_carry__0_n_1;
  wire cnt_period0_carry__0_n_2;
  wire cnt_period0_carry__0_n_3;
  wire cnt_period0_carry__1_n_0;
  wire cnt_period0_carry__1_n_1;
  wire cnt_period0_carry__1_n_2;
  wire cnt_period0_carry__1_n_3;
  wire cnt_period0_carry__2_n_0;
  wire cnt_period0_carry__2_n_1;
  wire cnt_period0_carry__2_n_2;
  wire cnt_period0_carry__2_n_3;
  wire cnt_period0_carry__3_n_0;
  wire cnt_period0_carry__3_n_1;
  wire cnt_period0_carry__3_n_2;
  wire cnt_period0_carry__3_n_3;
  wire cnt_period0_carry_n_0;
  wire cnt_period0_carry_n_1;
  wire cnt_period0_carry_n_2;
  wire cnt_period0_carry_n_3;
  wire \cnt_period[0]_i_1_n_0 ;
  wire \cnt_period[21]_i_1_n_0 ;
  wire \cnt_period[21]_i_2_n_0 ;
  wire \cnt_period[21]_i_3_n_0 ;
  wire \cnt_period[21]_i_4_n_0 ;
  wire \cnt_period[21]_i_5_n_0 ;
  wire [21:1]data0;
  wire trig_OBUF;
  wire trig_OBUF_inst_i_2_n_0;
  wire trig_OBUF_inst_i_3_n_0;
  wire trig_OBUF_inst_i_4_n_0;
  wire trig_OBUF_inst_i_5_n_0;
  wire trig_OBUF_inst_i_6_n_0;
  wire trig_OBUF_inst_i_7_n_0;
  wire [3:0]NLW_cnt_period0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_cnt_period0_carry__4_O_UNCONNECTED;

  CARRY4 cnt_period0_carry
       (.CI(1'b0),
        .CO({cnt_period0_carry_n_0,cnt_period0_carry_n_1,cnt_period0_carry_n_2,cnt_period0_carry_n_3}),
        .CYINIT(cnt_period[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt_period[4:1]));
  CARRY4 cnt_period0_carry__0
       (.CI(cnt_period0_carry_n_0),
        .CO({cnt_period0_carry__0_n_0,cnt_period0_carry__0_n_1,cnt_period0_carry__0_n_2,cnt_period0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt_period[8:5]));
  CARRY4 cnt_period0_carry__1
       (.CI(cnt_period0_carry__0_n_0),
        .CO({cnt_period0_carry__1_n_0,cnt_period0_carry__1_n_1,cnt_period0_carry__1_n_2,cnt_period0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt_period[12:9]));
  CARRY4 cnt_period0_carry__2
       (.CI(cnt_period0_carry__1_n_0),
        .CO({cnt_period0_carry__2_n_0,cnt_period0_carry__2_n_1,cnt_period0_carry__2_n_2,cnt_period0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt_period[16:13]));
  CARRY4 cnt_period0_carry__3
       (.CI(cnt_period0_carry__2_n_0),
        .CO({cnt_period0_carry__3_n_0,cnt_period0_carry__3_n_1,cnt_period0_carry__3_n_2,cnt_period0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cnt_period[20:17]));
  CARRY4 cnt_period0_carry__4
       (.CI(cnt_period0_carry__3_n_0),
        .CO(NLW_cnt_period0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_period0_carry__4_O_UNCONNECTED[3:1],data0[21]}),
        .S({1'b0,1'b0,1'b0,cnt_period[21]}));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_period[0]_i_1 
       (.I0(cnt_period[0]),
        .O(\cnt_period[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt_period[21]_i_1 
       (.I0(\cnt_period[21]_i_2_n_0 ),
        .I1(cnt_period[1]),
        .I2(cnt_period[0]),
        .I3(cnt_period[4]),
        .I4(cnt_period[5]),
        .I5(\cnt_period[21]_i_3_n_0 ),
        .O(\cnt_period[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_period[21]_i_2 
       (.I0(cnt_period[2]),
        .I1(cnt_period[3]),
        .I2(cnt_period[15]),
        .I3(cnt_period[21]),
        .O(\cnt_period[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \cnt_period[21]_i_3 
       (.I0(\cnt_period[21]_i_4_n_0 ),
        .I1(cnt_period[16]),
        .I2(cnt_period[19]),
        .I3(cnt_period[9]),
        .I4(cnt_period[18]),
        .I5(\cnt_period[21]_i_5_n_0 ),
        .O(\cnt_period[21]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cnt_period[21]_i_4 
       (.I0(cnt_period[14]),
        .I1(cnt_period[7]),
        .I2(cnt_period[10]),
        .I3(cnt_period[8]),
        .O(\cnt_period[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \cnt_period[21]_i_5 
       (.I0(cnt_period[11]),
        .I1(cnt_period[12]),
        .I2(cnt_period[13]),
        .I3(cnt_period[6]),
        .I4(cnt_period[17]),
        .I5(cnt_period[20]),
        .O(\cnt_period[21]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_period[0]_i_1_n_0 ),
        .Q(cnt_period[0]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(cnt_period[10]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(cnt_period[11]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(cnt_period[12]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(cnt_period[13]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(cnt_period[14]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(cnt_period[15]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(cnt_period[16]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(cnt_period[17]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(cnt_period[18]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(cnt_period[19]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(cnt_period[1]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(cnt_period[20]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(cnt_period[21]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(cnt_period[2]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(cnt_period[3]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(cnt_period[4]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(cnt_period[5]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(cnt_period[6]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(cnt_period[7]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(cnt_period[8]),
        .R(\cnt_period[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_period_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(cnt_period[9]),
        .R(\cnt_period[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0B00000F)) 
    trig_OBUF_inst_i_1
       (.I0(trig_OBUF_inst_i_2_n_0),
        .I1(cnt_period[6]),
        .I2(trig_OBUF_inst_i_3_n_0),
        .I3(cnt_period[10]),
        .I4(trig_OBUF_inst_i_4_n_0),
        .O(trig_OBUF));
  LUT6 #(
    .INIT(64'h0001111111111111)) 
    trig_OBUF_inst_i_2
       (.I0(cnt_period[4]),
        .I1(cnt_period[5]),
        .I2(cnt_period[0]),
        .I3(cnt_period[1]),
        .I4(cnt_period[3]),
        .I5(cnt_period[2]),
        .O(trig_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    trig_OBUF_inst_i_3
       (.I0(trig_OBUF_inst_i_5_n_0),
        .I1(trig_OBUF_inst_i_6_n_0),
        .I2(cnt_period[20]),
        .I3(cnt_period[16]),
        .I4(cnt_period[17]),
        .I5(cnt_period[19]),
        .O(trig_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    trig_OBUF_inst_i_4
       (.I0(cnt_period[7]),
        .I1(cnt_period[8]),
        .I2(cnt_period[9]),
        .I3(trig_OBUF_inst_i_7_n_0),
        .O(trig_OBUF_inst_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    trig_OBUF_inst_i_5
       (.I0(cnt_period[13]),
        .I1(cnt_period[12]),
        .I2(cnt_period[11]),
        .O(trig_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    trig_OBUF_inst_i_6
       (.I0(cnt_period[15]),
        .I1(cnt_period[21]),
        .I2(cnt_period[18]),
        .I3(cnt_period[14]),
        .O(trig_OBUF_inst_i_6_n_0));
  LUT5 #(
    .INIT(32'h88888880)) 
    trig_OBUF_inst_i_7
       (.I0(cnt_period[5]),
        .I1(cnt_period[6]),
        .I2(cnt_period[3]),
        .I3(cnt_period[2]),
        .I4(cnt_period[4]),
        .O(trig_OBUF_inst_i_7_n_0));
endmodule

(* NotValidForBitStream *)
module Top
   (clk,
    echo,
    trig,
    post1,
    post2,
    seg1,
    seg2);
  input clk;
  input echo;
  output trig;
  output [3:0]post1;
  output [3:0]post2;
  output [7:0]seg1;
  output [7:0]seg2;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]post1;
  wire [3:0]post1_OBUF;
  wire [3:0]post2;
  wire [3:0]post2_OBUF;
  wire [7:0]seg1;
  wire [7:0]seg2;
  wire trig;
  wire trig_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \post1_OBUF[0]_inst 
       (.I(post1_OBUF[0]),
        .O(post1[0]));
  OBUF \post1_OBUF[1]_inst 
       (.I(post1_OBUF[1]),
        .O(post1[1]));
  OBUF \post1_OBUF[2]_inst 
       (.I(post1_OBUF[2]),
        .O(post1[2]));
  OBUF \post1_OBUF[3]_inst 
       (.I(post1_OBUF[3]),
        .O(post1[3]));
  OBUF \post2_OBUF[0]_inst 
       (.I(post2_OBUF[0]),
        .O(post2[0]));
  OBUF \post2_OBUF[1]_inst 
       (.I(post2_OBUF[1]),
        .O(post2[1]));
  OBUF \post2_OBUF[2]_inst 
       (.I(post2_OBUF[2]),
        .O(post2[2]));
  OBUF \post2_OBUF[3]_inst 
       (.I(post2_OBUF[3]),
        .O(post2[3]));
  Sonic_trig prog1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .trig_OBUF(trig_OBUF));
  led_seg prog3
       (.clk(clk_IBUF_BUFG),
        .post1_OBUF(post1_OBUF),
        .post2_OBUF(post2_OBUF));
  OBUF \seg1_OBUF[0]_inst 
       (.I(1'b0),
        .O(seg1[0]));
  OBUF \seg1_OBUF[1]_inst 
       (.I(1'b0),
        .O(seg1[1]));
  OBUF \seg1_OBUF[2]_inst 
       (.I(1'b1),
        .O(seg1[2]));
  OBUF \seg1_OBUF[3]_inst 
       (.I(1'b1),
        .O(seg1[3]));
  OBUF \seg1_OBUF[4]_inst 
       (.I(1'b1),
        .O(seg1[4]));
  OBUF \seg1_OBUF[5]_inst 
       (.I(1'b1),
        .O(seg1[5]));
  OBUF \seg1_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg1[6]));
  OBUF \seg1_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg1[7]));
  OBUF \seg2_OBUF[0]_inst 
       (.I(1'b0),
        .O(seg2[0]));
  OBUF \seg2_OBUF[1]_inst 
       (.I(1'b0),
        .O(seg2[1]));
  OBUF \seg2_OBUF[2]_inst 
       (.I(1'b1),
        .O(seg2[2]));
  OBUF \seg2_OBUF[3]_inst 
       (.I(1'b1),
        .O(seg2[3]));
  OBUF \seg2_OBUF[4]_inst 
       (.I(1'b1),
        .O(seg2[4]));
  OBUF \seg2_OBUF[5]_inst 
       (.I(1'b1),
        .O(seg2[5]));
  OBUF \seg2_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg2[6]));
  OBUF \seg2_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg2[7]));
  OBUF trig_OBUF_inst
       (.I(trig_OBUF),
        .O(trig));
endmodule

module led_seg
   (post1_OBUF,
    post2_OBUF,
    clk);
  output [3:0]post1_OBUF;
  output [3:0]post2_OBUF;
  input clk;

  wire clk;
  wire \clkdiv[0]_i_2_n_0 ;
  wire \clkdiv_reg[0]_i_1_n_0 ;
  wire \clkdiv_reg[0]_i_1_n_1 ;
  wire \clkdiv_reg[0]_i_1_n_2 ;
  wire \clkdiv_reg[0]_i_1_n_3 ;
  wire \clkdiv_reg[0]_i_1_n_4 ;
  wire \clkdiv_reg[0]_i_1_n_5 ;
  wire \clkdiv_reg[0]_i_1_n_6 ;
  wire \clkdiv_reg[0]_i_1_n_7 ;
  wire \clkdiv_reg[12]_i_1_n_0 ;
  wire \clkdiv_reg[12]_i_1_n_1 ;
  wire \clkdiv_reg[12]_i_1_n_2 ;
  wire \clkdiv_reg[12]_i_1_n_3 ;
  wire \clkdiv_reg[12]_i_1_n_4 ;
  wire \clkdiv_reg[12]_i_1_n_5 ;
  wire \clkdiv_reg[12]_i_1_n_6 ;
  wire \clkdiv_reg[12]_i_1_n_7 ;
  wire \clkdiv_reg[16]_i_1_n_3 ;
  wire \clkdiv_reg[16]_i_1_n_6 ;
  wire \clkdiv_reg[16]_i_1_n_7 ;
  wire \clkdiv_reg[4]_i_1_n_0 ;
  wire \clkdiv_reg[4]_i_1_n_1 ;
  wire \clkdiv_reg[4]_i_1_n_2 ;
  wire \clkdiv_reg[4]_i_1_n_3 ;
  wire \clkdiv_reg[4]_i_1_n_4 ;
  wire \clkdiv_reg[4]_i_1_n_5 ;
  wire \clkdiv_reg[4]_i_1_n_6 ;
  wire \clkdiv_reg[4]_i_1_n_7 ;
  wire \clkdiv_reg[8]_i_1_n_0 ;
  wire \clkdiv_reg[8]_i_1_n_1 ;
  wire \clkdiv_reg[8]_i_1_n_2 ;
  wire \clkdiv_reg[8]_i_1_n_3 ;
  wire \clkdiv_reg[8]_i_1_n_4 ;
  wire \clkdiv_reg[8]_i_1_n_5 ;
  wire \clkdiv_reg[8]_i_1_n_6 ;
  wire \clkdiv_reg[8]_i_1_n_7 ;
  wire \clkdiv_reg_n_0_[0] ;
  wire \clkdiv_reg_n_0_[10] ;
  wire \clkdiv_reg_n_0_[11] ;
  wire \clkdiv_reg_n_0_[12] ;
  wire \clkdiv_reg_n_0_[13] ;
  wire \clkdiv_reg_n_0_[14] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire \clkdiv_reg_n_0_[4] ;
  wire \clkdiv_reg_n_0_[5] ;
  wire \clkdiv_reg_n_0_[6] ;
  wire \clkdiv_reg_n_0_[7] ;
  wire \clkdiv_reg_n_0_[8] ;
  wire \clkdiv_reg_n_0_[9] ;
  wire [3:0]post1_OBUF;
  wire [3:0]post2_OBUF;
  wire [2:0]s;
  wire [3:1]\NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_clkdiv_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \clkdiv[0]_i_2 
       (.I0(\clkdiv_reg_n_0_[0] ),
        .O(\clkdiv[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \clkdiv_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clkdiv_reg[0]_i_1_n_0 ,\clkdiv_reg[0]_i_1_n_1 ,\clkdiv_reg[0]_i_1_n_2 ,\clkdiv_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clkdiv_reg[0]_i_1_n_4 ,\clkdiv_reg[0]_i_1_n_5 ,\clkdiv_reg[0]_i_1_n_6 ,\clkdiv_reg[0]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[3] ,\clkdiv_reg_n_0_[2] ,\clkdiv_reg_n_0_[1] ,\clkdiv[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \clkdiv_reg[12]_i_1 
       (.CI(\clkdiv_reg[8]_i_1_n_0 ),
        .CO({\clkdiv_reg[12]_i_1_n_0 ,\clkdiv_reg[12]_i_1_n_1 ,\clkdiv_reg[12]_i_1_n_2 ,\clkdiv_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[12]_i_1_n_4 ,\clkdiv_reg[12]_i_1_n_5 ,\clkdiv_reg[12]_i_1_n_6 ,\clkdiv_reg[12]_i_1_n_7 }),
        .S({s[0],\clkdiv_reg_n_0_[14] ,\clkdiv_reg_n_0_[13] ,\clkdiv_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[12]_i_1_n_4 ),
        .Q(s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_7 ),
        .Q(s[1]),
        .R(1'b0));
  CARRY4 \clkdiv_reg[16]_i_1 
       (.CI(\clkdiv_reg[12]_i_1_n_0 ),
        .CO({\NLW_clkdiv_reg[16]_i_1_CO_UNCONNECTED [3:1],\clkdiv_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clkdiv_reg[16]_i_1_O_UNCONNECTED [3:2],\clkdiv_reg[16]_i_1_n_6 ,\clkdiv_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,s[2:1]}));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[16]_i_1_n_6 ),
        .Q(s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[0]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \clkdiv_reg[4]_i_1 
       (.CI(\clkdiv_reg[0]_i_1_n_0 ),
        .CO({\clkdiv_reg[4]_i_1_n_0 ,\clkdiv_reg[4]_i_1_n_1 ,\clkdiv_reg[4]_i_1_n_2 ,\clkdiv_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[4]_i_1_n_4 ,\clkdiv_reg[4]_i_1_n_5 ,\clkdiv_reg[4]_i_1_n_6 ,\clkdiv_reg[4]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[7] ,\clkdiv_reg_n_0_[6] ,\clkdiv_reg_n_0_[5] ,\clkdiv_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_5 ),
        .Q(\clkdiv_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[4]_i_1_n_4 ),
        .Q(\clkdiv_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_7 ),
        .Q(\clkdiv_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \clkdiv_reg[8]_i_1 
       (.CI(\clkdiv_reg[4]_i_1_n_0 ),
        .CO({\clkdiv_reg[8]_i_1_n_0 ,\clkdiv_reg[8]_i_1_n_1 ,\clkdiv_reg[8]_i_1_n_2 ,\clkdiv_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clkdiv_reg[8]_i_1_n_4 ,\clkdiv_reg[8]_i_1_n_5 ,\clkdiv_reg[8]_i_1_n_6 ,\clkdiv_reg[8]_i_1_n_7 }),
        .S({\clkdiv_reg_n_0_[11] ,\clkdiv_reg_n_0_[10] ,\clkdiv_reg_n_0_[9] ,\clkdiv_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\clkdiv_reg[8]_i_1_n_6 ),
        .Q(\clkdiv_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \post1_OBUF[0]_inst_i_1 
       (.I0(s[2]),
        .I1(s[0]),
        .I2(s[1]),
        .O(post1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \post1_OBUF[1]_inst_i_1 
       (.I0(s[0]),
        .I1(s[2]),
        .I2(s[1]),
        .O(post1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \post1_OBUF[2]_inst_i_1 
       (.I0(s[1]),
        .I1(s[2]),
        .I2(s[0]),
        .O(post1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \post1_OBUF[3]_inst_i_1 
       (.I0(s[2]),
        .I1(s[0]),
        .I2(s[1]),
        .O(post1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \post2_OBUF[0]_inst_i_1 
       (.I0(s[2]),
        .I1(s[0]),
        .I2(s[1]),
        .O(post2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \post2_OBUF[1]_inst_i_1 
       (.I0(s[0]),
        .I1(s[2]),
        .I2(s[1]),
        .O(post2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \post2_OBUF[2]_inst_i_1 
       (.I0(s[0]),
        .I1(s[2]),
        .I2(s[1]),
        .O(post2_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \post2_OBUF[3]_inst_i_1 
       (.I0(s[1]),
        .I1(s[0]),
        .I2(s[2]),
        .O(post2_OBUF[3]));
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
