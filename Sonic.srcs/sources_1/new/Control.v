`timescale 1ns / 1ps

module Control(
    input [15:0] text1,
    input [15:0] text2,
    input [15:0] text3,
    output [3:0] type_out
);

reg [3:0] type, type_reg;
localparam df = 16'b0000100011000110;
localparam ds = 16'b0000011010101101;

always @ *
begin
  if (text1 <= df) begin
    if (text2 > text3 + 16'b0000000011111010) begin
      type = 2'b01;
    end else begin
      type = 2'b10;
    end
  end else begin
    if (text2 < ds) begin
      type = 2'b10;
    end else begin
      if (text3 < ds) begin
        type = 2'b01;
      end else begin
        type = 4'b11;
      end
    end
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
