`timescale 1ns / 1ps
module Sonic_echo(
    input clk, 
    input echo,
    output [15:0] text
);

reg [15:0] count = 16'b0;
reg [15:0] distance = 16'b0;
reg [15:0] distance_count = 16'b0;
reg clk_out = 1'b0;

reg [1:0] state = 2'b0;
localparam state0 = 2'b0;
localparam state1 = 2'b01;
localparam state2 = 2'b10;
localparam N = 50;


always @(posedge clk)
begin
  if (count<N-1) begin
    count <= count + 1'b1;
  end
  else begin
    count <= 15'd0;
    clk_out <= clk_out +  1'b1;
  end
end

always @(negedge clk_out)
case (state)
  state0:
  begin
    if (echo) begin
      state <= state1;
    end else begin
      state <= state0;
    end
  end
  state1:
  begin
    if (echo) begin
      distance_count <= distance_count + 1;
      if (distance_count == 16'b0000111111111111)
        state <= state2;
    end else begin
      state <= state2;
    end
  end
  state2:
  begin
    distance_count <= 0;
    distance <= distance_count;
    state <= state0;
  end
  default: state <= state0;
endcase

reg [1:0] filter_count0,filter_count1;
reg [2:0] middle0[15:0],middle1[15:0];
reg [2:0] store0[15:0], strore1[15:0];

assign text = distance;

endmodule