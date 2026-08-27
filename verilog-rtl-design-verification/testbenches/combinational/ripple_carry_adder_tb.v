`timescale 1ns / 1ps


module ripple_carry_adder_tb;
reg [3:0] a_tb,b_tb;
reg cin;
wire [3:0] sum_tb;
wire cout_tb;

ripple_carry_adder dut(a_tb,b_tb,cin,sum_tb,cout_tb);
 
 initial
     begin
     {a_tb,b_tb,cin} = 3'b000;
     end
 initial
      begin
      a_tb=1;
      b_tb=0;
      cin=1;
      #10
      a_tb=1;
      b_tb=1;
      cin=1;
      #10
      a_tb=0;
      b_tb=1;
      cin=1;
      end
endmodule
