`timescale 1ns / 1ps
module Sonic_trig(
    input clk,
    output trig
);
reg [21:0]cnt_period;
always @(posedge clk)
begin
if(cnt_period==22'd1000000)
    cnt_period<=0;
else
    cnt_period<=cnt_period+1'b1;
end

assign trig=((cnt_period>=22'd100)&(cnt_period<=22'd1100))?1:0;

endmodule