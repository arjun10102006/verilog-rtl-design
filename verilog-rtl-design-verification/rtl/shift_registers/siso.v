`timescale 1ns / 1ps

module siso(
input s_in,rst,enb,clk,
output reg s_out
    );
    reg [3:0]temp;
    always @(posedge clk)
     begin
     if(!rst)begin
     temp <= 4'b0000;
     end
     else if(enb) begin
     temp <= temp>>1;
     temp[3] <= s_in;
     s_out <= temp[0];
     end
     end
endmodule
