`timescale 1ns / 1ps
module PWM(
    input clk,
    input dtype,
    output [1:0]  motor
);
reg [16:0]cnt_period;
always @(posedge clk)
begin
if(cnt_period==16'd10000)
    cnt_period<=0;
else
    cnt_period<=cnt_period+1'b1;
end

reg temp, motor_reg;
always @ *
temp=((cnt_period>=16'd100)&(cnt_period<=16'd9000))?1:0;

always @ *
begin
  case (dtype)
    0:motor_reg = ~temp;
    1:motor_reg = temp;
    default: motor_reg =temp;
  endcase
end


assign motor[0]=motor_reg;
assign motor[1]=~motor[0];

endmodule