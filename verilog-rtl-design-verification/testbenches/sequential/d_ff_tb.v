`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2026 22:21:02
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb;
reg d,enb,rst;
wire q,qbar;
d_ff dut(d,enb,rst,q,qbar);
initial 
 begin
 {d,enb} = 1'b0;
 rst = 1;
 end
 
 always #5 enb = ~enb;
 
 initial 
  begin
  #10
  d = 1;
  #10;
  rst = 0;
  #10;
  rst = 1;
  #10;
  d=0;
  $finish;
  end
endmodule
