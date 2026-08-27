`timescale 1ns / 1ps

module fsm_1010_mealy(
input clk,rst,din,
output reg detected 
    );
    parameter s0= 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;
    
    reg[1:0] ps,ns;
    
    always @(posedge clk) begin
    if(!rst)
    ps <= s0;
    else
    ps <= ns;
    end
    
    always @(*) begin
    case(ps)
    s0: begin
            if(din == 1'b1)
            ns = s1;
            else
            ns = s0;
            end
     s1: begin
           if(din == 1'b0)
           ns=s2;
           else
           ns=s1;
           end
     s2: begin
           if(din == 1'b1)
           ns=s3;
           else
           ns=s0;
           end
     s3: begin
          if(din == 1'b0) begin
          ns=s0;
           
          end
          else               
          ns=s1;
          end
     default: ns = s0;
    endcase
    end
    
    always @(posedge clk) begin
    if(!rst)
    detected <=1'b0;
    else begin
    case(ps)
    s0: detected <= 1'b0;
    s1: detected <= 1'b0;
    s2: detected <= 1'b0;
    s3: begin
         if(din == 1'b0)
         detected <= 1'b1;
         else
         detected <= 1'b0;
         end
    default: detected <= 1'b0;
    endcase
    end
    end
endmodule
