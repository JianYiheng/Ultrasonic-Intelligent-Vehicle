`timescale 1ns / 1ps
module Sonic_echo(
    input clk, 
    input echo,
    output [15:0] text,
    output [15:0] text_out
);

reg [3:0] sec_0 = 4'b0;
reg [3:0] sec_1 = 4'b0;
reg [3:0] sec_2 = 4'b0;
reg [3:0] sec_3 = 4'b0;

reg [15:0] count = 16'b0;
reg [15:0] distance = 16'b0;
reg [15:0] distance_count = 16'b0;
reg [15:0] distance_display = 16'b0;
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
      if(sec_0 < 9)
        sec_0 <= sec_0 + 1'b1;
      else begin
        sec_0 <= 4'b0;
        if (sec_1 < 9) begin
          sec_1 <= sec_1 + 1'b1;
        end else begin
          sec_1 <= 4'b0;
          if (sec_2 < 9) begin
            sec_2 <= sec_2 + 1'b1;
          end else begin
            sec_2 <= 4'b0;
            if(sec_3 < 9) begin
                sec_3 <= sec_3 + 1;
            end else begin
                sec_3 <= 4'b0;
            end
          end
        end
      end
      
      distance_count <= distance_count + 1;
      if (distance_count == 16'b0000001111100110)
        state <= state2;
    end else begin
      state <= state2;
    end
  end
  state2:
  begin
    distance_count <= 0;
    sec_0 <= 0;
    sec_1 <= 0;
    sec_2 <= 0;
    sec_3 <= 0;

    distance <= distance_count;
    distance_display = {sec_3,sec_2,sec_1,sec_0};
    state <= state0;
  end
  default: state <= state0;
endcase

assign text = distance;
assign text_out = distance_display;

endmodule