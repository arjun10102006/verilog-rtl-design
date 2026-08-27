`timescale 1ns / 1ps
module sipo_tb;
reg rst,clk,s_in,enb;
wire [3:0]s_out;

sipo dut(s_in,rst,enb,clk,s_out);
initial begin
{s_in,enb,clk} = 0;
rst =0;
end
always #5 clk=~clk;
initial begin
#15;
rst=1;

@(posedge clk) s_in = 1;
@(posedge clk) s_in = 0;
@(posedge clk) s_in = 0;
@(posedge clk) s_in = 1;

@(posedge clk) enb = 1;
#20;
$finish;
end
endmodule