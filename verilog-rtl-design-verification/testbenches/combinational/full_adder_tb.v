`timescale 1ns / 1ps

module full_adder_tb;
reg a_tb,b_tb,cin_tb;
wire sum_tb,carry_tb;

full_adder dut(.a(a_tb),.b(b_tb),.cin(cin_tb),.sum(sum_tb),.carry(carry_tb));

initial
begin
{a_tb,b_tb,cin_tb}=3'b000;
end

initial
begin
$monitor("sum=%d,carry=%d",sum_tb,carry_tb);
a_tb=0;
b_tb=0;
cin_tb=1;

#10
a_tb=0;
b_tb=1;
cin_tb=0;

#10
a_tb=1;
b_tb=0;
cin_tb=1;

#10
a_tb=1;
b_tb=1;
cin_tb=0;
end
endmodule
