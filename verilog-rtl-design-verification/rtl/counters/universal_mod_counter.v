`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2026 16:10:06
// Design Name: 
// Module Name: universal_mod_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module universal_mod_counter(
input clk,rst,enb,
input [1:0]mode,
output reg mod2,
output reg [1:0]mod4,
output reg [2:0]mod8,
output reg [3:0]mod16
    );
    reg [3:0]internal_counter;
    always @(posedge clk) begin
    if(!rst) begin
    internal_counter <= 4'b0000;
    end
    else if(enb)
    internal_counter <= internal_counter+1'b1;
    end
    always @(posedge clk) begin
    case(mode) 
    2'b00: mod2 <= internal_counter[0];
    2'b01: mod4 <= internal_counter[1:0];
    2'b10: mod8 <= internal_counter[2:0];
    2'b11: mod16 <= internal_counter[3:0];
    endcase
    end
    
endmodule
