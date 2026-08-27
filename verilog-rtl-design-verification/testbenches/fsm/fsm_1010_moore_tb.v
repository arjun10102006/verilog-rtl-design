`timescale 1ns / 1ps

module fsm_1010_moore_tb;
reg clk,rst,din;
wire detected;

fsm_1010_moore dut(clk,rst,din,detected);

initial begin
{clk,rst,din} = 3'b100;
end

always #15 clk=~clk;

initial begin
#10;
rst = 1'b1;
#12;
din = 1'b1;
#12;
din = 1'b0;
#12;
din = 1'b1;
#12;
din = 1'b0;
end

endmodule
