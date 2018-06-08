`timescale 1ns / 1ps

module Control(
    input [15:0] text1,
    input [15:0] text2,
    input [15:0] text3,
    output [3:0] type_out
);

reg [3:0] type, type_reg;
localparam d = 16'b0000010000001111;

always @ *
begin
  if (text1 <= d) begin
    if (text2 <= d) begin
      type = 2'b10;
    end else begin
      if (text3 <= d) begin
        type = 2'b0;
      end
    end
  end else begin
    type = 4'b11;
  end
end

always @ *
begin
  case (type)
    2'b00: type_reg = 4'b0000;
    2'b01: type_reg = 4'b1010;
    2'b10: type_reg = 4'b0101;
    2'b11: type_reg = 4'b1111; 
    default: type_reg = 4'b1111;
  endcase
end

assign type_out = type_reg;

endmodule
