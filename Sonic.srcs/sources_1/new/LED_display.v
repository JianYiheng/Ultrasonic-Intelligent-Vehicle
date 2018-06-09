`timescale 1ns / 1ps

module led_display(
    input [3:0] type,
    output reg [7:0] led
);

always @ *
begin
  case (type)
    4'b0000: led = 8'b00000011;
    4'b1010: led = 8'b00001100;
    4'b0101: led = 8'b00110000;
    4'b1111: led = 8'b11000000; 
    default: led = 8'b11111111;
  endcase
end

endmodule