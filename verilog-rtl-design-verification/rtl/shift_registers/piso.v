`timescale 1ns / 1ps 
module piso(
input [3:0]p_in,
input load,rst,clk,
output reg s_out
    );
    reg [3:0]temp;
    always @(posedge clk) begin
    if(!rst) begin
    temp <= 4'b0000;
    s_out <= 1'b0;
    end
    else if(load) begin
    temp <= p_in;
    end
    else if(!load) begin
    temp <= {1'b0,temp[3:1]};
    s_out <= temp[0];
    end
    end
endmodule