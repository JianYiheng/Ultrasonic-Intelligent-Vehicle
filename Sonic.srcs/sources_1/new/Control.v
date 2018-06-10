`timescale 1ns / 1ps

module Control(
    input [15:0] text1,
    input [15:0] text2,
    input [15:0] text3,
    output [3:0] type_out,
    output reg [7:0] led_reg
);

reg [1:0] type;
reg [3:0] type_reg;
localparam df = 16'b0000010001011101;
localparam ds = 16'b0000010001011101;

always @ *
begin
  if (text1 <= df) begin
    led_reg = 8'b11;
    if (text2 > text3) begin
      type = 2'b01;
      led_reg = 8'b1100;
    end else begin
      type = 2'b10;
      led_reg = 8'b110000;
    end
  end else begin
    if (text2 < ds) begin
      type = 2'b10;
      led_reg = 8'b11000000;
    end else begin
      if (text3 < ds) begin
        type = 2'b01;
        led_reg = 8'b10000001;
      end else begin
        type = 2'b11;
        led_reg = 8'b11111111;
      end
    end
  end
end

// always @ *
// begin
//   if (text1 <= df) begin
//     led_reg = 8'b11111111;
//     if (text2 > text3) begin
//       type = 2'b01;
// //      led_reg = 8'b10000001;
//     end else begin
//       type = 2'b10;
// //      led_reg = 8'b10000010;
//     end
//   end else begin
//     led_reg = 8'b0;
//     if (text2 < ds) begin
//       type = 2'b10;
// //      led_reg = 8'b01000100;
//     end else begin
//       if (text3 < ds) begin
//         type = 2'b01;
// //        led_reg = 8'b00101000;
//       end else begin
//         type = 4'b11;
// //        led_reg = 8'b00010000;
//       end
//     end
//   end
// end

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
// assign led = led_reg;

endmodule
