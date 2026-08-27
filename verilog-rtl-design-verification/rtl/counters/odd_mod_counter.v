`timescale 1ns / 1ps
module odd_mod_counter(
input clk,rst,enb,
input [1:0]mode,
output reg [2:0]count
    );
    reg [2:0]temp;
    reg [1:0]prev_mode;
    initial begin
    prev_mode <= 2'b00;
    
    end
    always @(posedge clk) begin
    if(!rst) begin
    count <= 3'b000;
    temp <= 3'b000;
    prev_mode <= mode;
    end
    else begin
    if(prev_mode != mode) begin
    count <=3'b000;
    prev_mode <= mode;
    end
    else begin
    if(enb) begin
    case(mode)
    2'b00: begin
           
             if(temp==2)
             temp<=0;
             else
             temp <= temp+1;
             end
            
    2'b01: begin
         
             if(temp==4)
             temp<=0;
             else
             temp <= temp+1;
             end
            
     2'b10:begin
          
             if(temp==6)
             temp<=0;
             else
             temp <= temp+1;
             end
           
     default: temp<=3'b000;           
    endcase
    
    end
    prev_mode <= mode;
    end
    end
  end
    always @(negedge clk)
    count<= temp;
endmodule
