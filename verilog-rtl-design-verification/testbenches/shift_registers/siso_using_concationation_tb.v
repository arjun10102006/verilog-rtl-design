`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2026 23:32:42
// Design Name: 
// Module Name: siso_using_concationation_tb
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


module siso_using_concationation_tb;
reg s_in,rst,enb,clk;
wire s_out;
siso_using_concationation dut(s_in,rst,enb,clk,s_out);
initial
begin
{s_in,enb,clk}=0;
rst=1'b1;
end
always #5 clk = ~clk;
initial
begin
rst= 1'b0;
#10;
rst = 1'b1;
#10
enb = 1'b1;
#10
s_in = 1'b1;
#10
s_in=1'b1;
#10
s_in=1'b0;
#10
s_in=1'b1;
#50
enb = 0;
$finish;
end
endmodule
