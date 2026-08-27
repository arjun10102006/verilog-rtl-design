`timescale 1ns / 1ps
module freq_div_by_5_with_50_duty_cycle(
input clk,rst,enb,
output div_freq
    );
    reg [2:0]count;
    reg enb1,enb2;
    always @(posedge clk) begin
    if(!rst) begin
    count<=3'b000;
    enb1<=0;
    enb2<=0;
    end
    else  
    begin
    if(enb) begin
    if(count == 4)
    count<=3'b000; 
    else
    count <=count+1;
    end 
     end
      end
    always @(posedge clk) begin
    if(count == 0 || count == 1)
    enb1<=1;
    else
    enb1<=0;
    end
    always @(negedge clk) begin
    if(count ==0 || count == 1)
    enb2<=1;
    else
    enb2<=0;
    end
    assign div_freq = (enb1 || enb2);
endmodule
