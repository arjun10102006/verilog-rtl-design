`timescale 1ns / 1ps
module mod_4_counter(
input clk,rst,enb,
output reg [1:0]count
    );
    
    always @(posedge clk) begin
    if(!rst)
    count <= 2'b00;
    else if(enb) 
    count <= (count+1'b1)%4;
    else 
    count <= count;
    end
endmodule
