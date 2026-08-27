`timescale 1ns / 1ps

module d_ff(
input d,enb,rst,
output reg q,qbar
    );
    always @(*)
      begin
      if(!rst)
       begin
       q    = 1'b0;
       qbar = 1'b1;
       end
      else if(enb)
       begin
       q <= d;
       qbar <= ~d;
       end 
      end
endmodule
