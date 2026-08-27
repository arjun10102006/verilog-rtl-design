`timescale 1ns / 1ps

module sr_latch(
input enable,s,r,reset,
output reg q,qbar
    );
  always @(*) begin
    if (!reset) begin
        q    = 1'b0;
        qbar = 1'b1;
    end
    else if (enable) begin
        case ({s,r})
            2'b00: ;                  // Hold
            2'b01: begin q=0; qbar=1; end
            2'b10: begin q=1; qbar=0; end
            2'b11: begin q=1'bx; qbar=1'bx; end
        endcase
    end
end
endmodule
