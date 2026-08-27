`timescale 1ns / 1ps

module demux_4x1_tb;
reg i_tb;
reg [1:0]s_tb;
wire [3:0]y_tb;
integer j;
demux_4x1 dut(i_tb,s_tb,y_tb);

initial
begin
for(j=0;j<7;j=j+1)
begin
#10;
{s_tb,i_tb} = j;
end
end
endmodule
