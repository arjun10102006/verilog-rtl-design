`timescale 1ns / 1ps

module full_sub(
input a,b,bin,
output reg diff,borr
    );
    always@(*)
        begin
        diff = a^b^bin;
        borr = (~a&b) | (b&bin) | (bin&~a);
        end
endmodule
