`timescale 1ns / 1ps
module mod_4_counter_tb;
reg clk,rst,enb;
wire [1:0]count;
mod_4_counter dut(clk,rst,enb,count);
initial 
{clk,rst,enb}=1'b0;

always #5 clk = ~clk;

initial begin
#10;
rst = 1'b1;
#10;
enb = 1'b1;
#100;
enb = 1'b0;
end

endmodule
