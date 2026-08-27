`timescale 1ns / 1ps

module fsm_1010_moore(
input clk,rst,din,
output reg detected 
    );
    parameter s0= 3'b000;
    parameter s1 = 3'b001;
    parameter s2 = 3'b010;
    parameter s3 = 3'b011;
    parameter s4 = 3'b100;
    reg[2:0] ps,ns;
    
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
          ns=s4;
          end
          else               
          ns=s1;
          end
     s4: begin
          if(din == 1'b1)
          ns=s3;
          else
          ns=s0;
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
    s3: detected <= 1'b0;
    s4: detected <= 1'b1;
    default: detected <= 1'b0;
    endcase
    end
    end
endmodule
