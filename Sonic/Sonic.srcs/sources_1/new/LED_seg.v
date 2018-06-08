`timescale 1ns / 1ps

module led_seg(
    input clk,
    input [15:0] text1,
    input [15:0] text2,
    output reg [3:0] post1,
    output reg [3:0] post2,
    output reg [7:0] seg1,
    output reg [7:0] seg2
);

wire [2:0] s;
reg  [17:0] clkdiv = 17'b0;
wire [15:0] text1_reg = text1;
wire [15:0] text2_reg = text2;
reg  [3:0] hex;

always @(posedge clk)
begin
    clkdiv <= clkdiv + 1'b1;
end

assign s = clkdiv[17:15];

always @ *
begin
  case (s)
    3'b000:
        begin
          post1 = 4'b0001;
          post2 = 4'b0000;
          hex = text1_reg[3:0];
        end
    3'b001:
        begin
          post1 = 4'b0010;
          post2 = 4'b0000;
          hex = text1_reg[7:4];
        end 
    3'b010:
        begin
          post1 = 4'b0100;
          post2 = 4'b0000;
          hex = text1_reg[11:8];
        end 
    3'b011:
        begin
          post1 = 4'b1000;
          post2 = 4'b0000;
          hex = text1_reg[15:12];
        end
    3'b100:
        begin
          post1 = 4'b0000;
          post2 = 4'b0001;
          hex = text2_reg[3:0];
        end
    3'b101:
        begin
          post1 = 4'b0000;
          post2 = 4'b0010;
          hex = text2_reg[7:4];
        end 
    3'b110:
        begin
          post1 = 4'b0000;
          post2 = 4'b0100;
          hex = text2_reg[11:8];
        end 
    3'b111:
        begin
          post1 = 4'b0000;
          post2 = 4'b1000;
          hex = text2_reg[15:12];
        end  
  endcase
end




always @ *
begin
  case (hex)
    4'h0:
    begin
      seg1[7:0]=8'b11111100;seg2[7:0]=8'b11111100;
    end
    4'h1:
    begin
      seg1[7:0]=8'b01100000;seg2[7:0]=8'b01100000;
    end
    4'h2:
    begin
      seg1[7:0]=8'b11011010;seg2[7:0]=8'b11011010;
    end
    4'h3:
    begin
      seg1[7:0]=8'b11110010;seg2[7:0]=8'b11110010;
    end
    4'h4:
    begin
      seg1[7:0]=8'b01100110;seg2[7:0]=8'b01100110;
    end
    4'h5:
    begin
      seg1[7:0]=8'b10110110;seg2[7:0]=8'b10110110;
    end
    4'h6:
    begin
      seg1[7:0]=8'b10111110;seg2[7:0]=8'b10111110;
    end
    4'h7:
    begin
      seg1[7:0]=8'b11100000;seg2[7:0]=8'b11100000;
    end
    4'h8:
    begin
      seg1[7:0]=8'b11111110;seg2[7:0]=8'b11111110;
    end
    4'h9:
    begin
      seg1[7:0]=8'b11110110;seg2[7:0]=8'b11110110;
    end
    4'ha:
    begin
      seg1[7:0]=8'b11101110;seg2[7:0]=8'b11101110;
    end
    4'hb:
    begin
      seg1[7:0]=8'b00111110;seg2[7:0]=8'b00111110;
    end
    4'hc:
    begin
      seg1[7:0]=8'b10011100;seg2[7:0]=8'b10011100;
    end
    4'he:
    begin
      seg1[7:0]=8'b10011110;seg2[7:0]=8'b10011110;
    end   
    4'hf:
    begin
      seg1[7:0]=8'b10001110;seg2[7:0]=8'b10001110;
    end  
    default:  
    begin
      seg1[7:0]=8'b00000000;seg2[7:0]=8'b00000000;
    end
  endcase
end

endmodule
