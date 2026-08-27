`timescale 1ns / 1ps

module siso_tb;
reg s_in,rst,enb,clk;
wire s_out;
siso dut(s_in,rst,enb,clk,s_out);
initial
begin
{s_in,enb,clk}=0;
rst=1'b1;
end
always #5 clk = ~clk;
initial
begin
#10
rst= 1'b0;
#10
rst = 1'b1;

enb = 1'b1;
#10
s_in = 1'b1;
#10
s_in=1'b1;
#10
s_in=1'b0;
#10
s_in=1'b1;
#50;
$finish;
end
endmodule
