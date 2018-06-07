`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/06 20:34:59
// Design Name: 
// Module Name: Control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Control(
    input [3:0] button,
    output [3:0] type
    );


reg [3:0] type_reg;
reg [1:0] encode_out;
assign type = type_reg;

always @ *
begin
  casez (button)
    4'b1???: encode_out = 2'b00;
    4'b01??: encode_out = 2'b01;
    4'b001?: encode_out = 2'b10;
    4'b0001: encode_out = 2'b11;
   default: encode_out = 2'b00;
  endcase
end

always @ *
begin
  case (encode_out)
    2'b00: type_reg = 4'b1111;
    2'b01: type_reg = 4'b0101;
    2'b10: type_reg = 4'b1010;
    2'b11: type_reg = 4'b0000;
    default: type_reg = 4'b1111;
  endcase
end

endmodule
