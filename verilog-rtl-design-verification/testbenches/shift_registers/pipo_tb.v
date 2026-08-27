`timescale 1ns / 1ps
module pipo_tb;
reg clk,load,rst;
reg [3:0]p_in;
wire [3:0]p_out;

pipo dut(p_in,clk,load,rst,p_out);
initial begin
{p_in,clk,load}=1;
rst = 1'b0;
end
always #5 clk = ~clk;
initial begin
#10;
rst = 1'b1; #10;
p_in = 4'b1011; #10;
load = 1'b0; #50;

$finish;
end
endmodule
