`timescale 1ns / 1ps

module sipo(
input s_in,rst,enb,clk,
output reg [3:0]s_out
    );
    reg [3:0]temp;
    always @(posedge clk)
     begin
     if(!rst)begin
     temp <= 4'b0000;
     s_out <= 4'b0000;
     end
     else if(enb ==0) begin 
     temp <= {s_in,temp[3:1]};
     end
     else if(enb)
     s_out <= temp;
     end
endmodule
