`timescale 1ns / 1ps

module mux_4x1_tb;
reg [3:0]i_tb;
reg [1:0]s_tb;
wire y_tb;
integer j,k;

mux_4x1 dut(i_tb,s_tb,y_tb);

initial
  begin
  for(j=0;j<16;j=j+1)
    begin
    #10;
      i_tb=j;
  for(k=0;k<4;k=k+1)
    begin
    #10;
      s_tb=k;
    end
  end
  end
endmodule
