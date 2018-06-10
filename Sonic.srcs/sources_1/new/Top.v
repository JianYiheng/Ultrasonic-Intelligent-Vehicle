`timescale 1ns / 1ps
module Top(
    input clk,
    input [2:0] echo,

    output [2:0] trig,
    output [3:0] post1,
    output [3:0] post2,
    output [7:0] seg1,
    output [7:0] seg2,
    output [1:0] motor1,
    output [1:0] motor2,
    output [1:0] motor3,
    output [1:0] motor4,
    output [7:0] led
);

wire [15:0] text1;
wire [15:0] text2;
wire [15:0] text3;

wire [15:0] mid1;
wire [15:0] mid2;
wire [15:0] mid3;

wire [15:0] mid1_n;
wire [15:0] mid2_n;
wire [15:0] mid3_n;

wire [3:0] type;

Sonic_trig prog1(clk, trig[0]);
Sonic_echo prog2(clk, echo[0], text1);
filter prog3(22'd1000000, clk, text1, mid1);
filter prog4(22'd3000000, clk, mid1, mid1_n);
Sonic_trig prog5(clk, trig[1]);
Sonic_echo prog6(clk, echo[1], text2);
filter prog7(22'd1000000, clk, text2, mid2);
filter prog8(22'd3000000, clk, mid2, mid2_n);
Sonic_trig prog9(clk, trig[2]);
Sonic_echo prog10(clk, echo[2], text3);
filter prog11(22'd1000000, clk, text3, mid3);
filter prog12(22'd3000000, clk, mid3, mid3_n);

PWM prog13(clk,type[0],motor1);
PWM prog14(clk,type[1],motor2);
PWM prog15(clk,type[2],motor3);
PWM prog16(clk,type[3],motor4);
Control prog17(text1,text2,text3,type,led);
led_seg prog18(clk, text1, mid1_n, post1, post2, seg1, seg2);
// led_display prog19(type, led);


endmodule