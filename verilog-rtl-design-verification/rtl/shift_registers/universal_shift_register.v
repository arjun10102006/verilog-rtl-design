`timescale 1ns / 1ps

module universal_shift_register(
input clk,rst,s_in,load,
input [1:0]mode,
input [3:0]p_in,
output reg s_out,
output reg [3:0]p_out 
    );
    reg [3:0]temp;
    always @(posedge clk) begin
    if(!rst) begin
    s_out <= 1'b0;
    p_out <= 4'b0000;
    temp <= 4'b0000;
    end
    else if(mode == 2'b00) begin
    temp <= {s_in,temp[3:1]};
    s_out <= temp[0];
    end
    else if(mode == 2'b01) begin
    if(load)
    temp <= {s_in,temp[3:1]};
    else if(!load)
    p_out <= temp;
    end
    else if(mode == 2'b10) begin
    if(load) begin
    temp <= p_in;
    end
    else if(!load) begin
    temp <= {1'b0,temp[3:1]};
    s_out <= temp[0];
    end
    end
    else if(mode == 2'b11) begin
    if(load) begin
    temp <= p_in;
    end
    else if(!load) begin
    p_out <= p_in;
    end
    end
    end
endmodule
