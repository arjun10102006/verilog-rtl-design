`timescale 1ns / 1ps

module encoder_4_1_tb;
reg [3:0]d;
wire [1:0]y;
 
encoder_4_2 dut(d,y);

initial
  begin 
  d = 4'b0000;
  end
  
initial 
   begin
   d = 4'b0001;
   #10
   d = 4'b0010;
   #10
   d = 4'b0100;
   #10
   d = 4'b1000;
   #10
   d = 4'b0011;
   end
endmodule
