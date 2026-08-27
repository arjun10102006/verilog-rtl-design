`timescale 1ns / 1ps

module pipo(
input [3:0]p_in,
input clk,load,rst,
output reg [3:0]p_out
    );
    reg [3:0]temp;
    always @(negedge clk)
    begin
    if(!rst)
    begin
    p_out <= 4'b0000;
    end
    else if(load) begin
    temp <= p_in;
    end
    else if(!load) begin
    p_out <= p_in;
    end
    end
endmodule
