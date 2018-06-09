`timescale 1ns / 1ps
module filter(
    input [7:0] N,
    input clk,
    input [15:0] distance,
    output [15:0] disoutput
);

reg [1:0] count0, count1;
reg clk_out = 1'b0;

always @(posedge clk)
begin
  if (count0<N-1) begin
    count0 <= count0 + 1'b1;
  end
  else begin
    count0 <= 15'd0;
    clk_out <= clk_out +  1'b1;
  end
end

reg [15:0] dis0, dis1,dis2;
always @ (posedge clk_out)
begin
  case (count1)
    2'b00: dis0 <= distance;
    2'b01: dis1 <= distance;
    2'b10: dis2 <= distance;
    default: count1 <= count1 + 1;
  endcase
  count1 <= count1 + 1;
end

reg [15:0] dismid ;

always @ *
begin
  if(dis0 >= dis1)
        begin
            if(dis1 >= dis2)
                dismid <= dis1;
            else if(dis1 < dis2)
                begin
                    if(dis0 >= dis2)
                        dismid <= dis2;
                    else if(dis0 < dis2)
                        dismid <= dis0;
                end
        end
    else if(dis0 < dis1)
        begin
            if(dis0 >= dis2)
                dismid <= dis0;
            else if(dis0 < dis2)
                begin
                    if(dis1 >= dis2)
                        dismid <= dis2;
                    else if(dis1 < dis2)
                        dismid <= dis1;
                end 
        end
end

assign disoutput = dismid;

endmodule