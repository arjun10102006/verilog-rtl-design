`timescale 1ns / 1ps

module full_sub_tb;
reg a_tb,b_tb,bin_tb;
wire diff_tb,borr_tb;

full_sub dut(.a(a_tb),.b(b_tb),.bin(bin_tb),.diff(diff_tb),.borr(borr_tb));

initial
begin
{a_tb,b_tb,bin_tb}=3'b000;
end

initial
begin
$monitor("sum=%d,carry=%d",diff_tb,borr_tb);
a_tb=0;
b_tb=0;
bin_tb=1;

#10
a_tb=0;
b_tb=1;
bin_tb=0;

#10
a_tb=1;
b_tb=0;
bin_tb=1;

#10
a_tb=1;
b_tb=1;
bin_tb=0;
end
endmodule
