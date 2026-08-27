`timescale 1ns / 1ps

module odd_freq_divider(
input clk,rst,enb,
input [1:0]mode,
output reg div_freq
    );
    reg [3:0]count;
    reg [1:0]prev_mode;
    always @(posedge clk)  begin
    if(!rst) begin
    div_freq <= 1'b0;
    prev_mode <= 2'b00;
    count <= 4'b0000;
    end
    else if(prev_mode != mode) begin
     count <= 4'b0000;
     div_freq  <= 1'b0;
     prev_mode <= mode;
     end
    else if(enb )begin
    case(mode)
    2'b00: begin 
           if(count == 2) begin
           count <=4'b0000;
           end
           else
           count <= count+1;
           
           if(count == 2)
           div_freq <=0;
           else
           div_freq <=1;
           end
          
   2'b01: begin          
           if(count == 4) begin
           count <=4'b0000;
           end
           else
           count <= count+1;
           
           if(count < 3)
           div_freq <=1;
           else
           div_freq <=0;
           end
           
   2'b10: begin
           if(count == 6) begin
           count <=4'b0000;
           div_freq <= ~div_freq;
           end
           else
           count <= count+1;
           
            if(count < 4)
           div_freq <=1;
           else
           div_freq <=0;
           end
   2'b11: begin
  
           if(count == 8) begin
           count <=4'b0000;
           end
           else
           count <= count+1;
           
            if(count < 5)
           div_freq <=1;
           else
           div_freq <=0;
           end
           endcase
    end
    end
endmodule
