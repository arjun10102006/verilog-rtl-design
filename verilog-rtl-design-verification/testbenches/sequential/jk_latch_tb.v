`timescale 1ns / 1ps

module jk_latch_tb;
reg k,j,enable,reset;
wire q,qbar;

jk_latch dut(j,k,enable,reset,q,qbar);

initial 
  begin
 {j,k,enable} = 1'b0;
 reset = 1'b1;
  end
  
  always #5 enable=~enable;
initial
   begin
   j = 1'b0;
   k= 1'b0;
   #10;
   j = 1'b0;
   k= 1'b1;
   #10;
   reset = 1'b0;
   #10;
   reset = 1'b1;
   j = 1'b1;
   k= 1'b0;
   #10;
   j = 1'b1;
   k= 1'b1;
   #10;
   $finish;
   end
endmodule
