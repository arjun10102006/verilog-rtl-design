`timescale 1ns / 1ps

module siso_using_concationation(
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
     temp <= {s_in,temp[3:1]};
     s_out <= temp[0];
     end
     end

endmodule
