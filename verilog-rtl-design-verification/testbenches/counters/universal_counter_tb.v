`timescale 1ns / 1ps
module universal_counter_tb;
reg clk,rst,enb;
reg [1:0]mode;
wire mod2;
wire [1:0]mod4;
wire [2:0]mod8;
wire [3:0]mod16;
universal_mod_counter dut(clk,rst,enb,mode,mod2,mod4,mod8,mod16);
initial 
{clk,rst,enb,mode}=5'b00000;

always #5 clk = ~clk;
integer i;
initial begin
#10;
rst = 1'b1;
#10;
enb = 1'b1;
for(i=0;i<4;i=i+1) begin
#200;
mode <= i;
end
end

endmodule
