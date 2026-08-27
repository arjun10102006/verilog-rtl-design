`timescale 1ns / 1ns

module jk_latch(
input j,k,reset,enable,
output reg q,qbar
    );
    always @(*) begin
    if (!reset) begin
        q    = 1'b0;
        qbar = 1'b1;
    end
    else if (enable) begin
        case ({j,k})
            2'b00: ;                 
            2'b01: begin q=0; qbar=1;end
            2'b10: begin q=1; qbar=0; end
            2'b11: begin q=~q; qbar=~qbar;end
        endcase
    end
end
endmodule
