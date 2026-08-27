`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2026 23:24:05
// Design Name: 
// Module Name: bcd_adder_tb
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


module bcd_adder_tb;
reg [3:0]a_tb,b_tb;
reg cin_tb;
wire [3:0]sum_tb;
wire cout_tb;

bcd_adder dut(a_tb,b_tb,cin_tb,sum_tb,cout_tb);

initial
begin
{a_tb,b_tb,cin_tb} = 3'b000;
end

initial
begin
a_tb=4'b1001;
b_tb=4'b1001;
cin_tb=1;
#10
$finish;
end
endmodule
