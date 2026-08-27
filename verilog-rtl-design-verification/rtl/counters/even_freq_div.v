`timescale 1ns / 1ps
module even_freq_div( 
input clk,rst,
input [1:0] mode,
output reg div_freq
    );
    reg [3:0]count;
    reg [1:0]prev_mode;
    always @(posedge clk) begin
    if(!rst)begin
    div_freq <= 0;
    count <= 4'b0000;
    prev_mode <= 2'b00;
    end
    else if (mode != prev_mode) begin
     count <= 4'b0000;
     div_freq  <= 1'b0;
     prev_mode <= mode;
     end
    else begin
    count <= count+1;
    case (mode) 
    2'b00: div_freq <= count[0];
    2'b01: div_freq <= count[1];
    2'b10: div_freq <= count[2];
    2'b11: div_freq <= count[3];
    endcase
    end
    end
endmodule
