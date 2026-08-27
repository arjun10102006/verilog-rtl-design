`timescale 1ns / 1ps

module priority_encoder_tb;
reg [3:0]d;
wire [1:0]y;
 
priority_encoder dut(d,y);

initial
  begin 
  d = 4'b0000;
  end
  
initial 
   begin
   d = 4'b0001;
   #10
   d = 4'b0011;
   #10
   d = 4'b0101;
   #10
   d = 4'b1111;
   #10
   d = 4'b0011;
   end
endmodule
