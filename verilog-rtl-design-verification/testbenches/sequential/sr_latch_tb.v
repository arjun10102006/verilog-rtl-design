`timescale 1ns / 1ns

module sr_latch_tb;
reg s,r,enable,reset;
wire q,qbar;

sr_latch dut(enable,s,r,reset,q,qbar);

initial 
  begin
 {s,r,enable} = 1'b0;
 reset = 1'b1;
  end
  
  always #1 enable=~enable;
initial
   begin
   s = 1'b0;
   r= 1'b0;
   #10;
   s = 1'b0;
   r= 1'b1;
   #10;
   reset = 1'b0;
   #10;
   reset = 1'b1;
   s = 1'b1;
   r= 1'b0;
   #10;
   s = 1'b1;
   r= 1'b1;
   #10;
   $finish;
   end
endmodule
