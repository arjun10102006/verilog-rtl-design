`timescale 1ns / 1ps

module universal_shift_register_tb;

reg clk;
reg rst;
reg s_in;
reg load;
reg [1:0] mode;
reg [3:0] p_in;

wire s_out;
wire [3:0] p_out;

universal_shift_register uut (
    .clk(clk),
    .rst(rst),
    .s_in(s_in),
    .load(load),
    .mode(mode),
    .p_in(p_in),
    .s_out(s_out),
    .p_out(p_out)
);

always #5 clk = ~clk;

initial begin

    clk  = 0;
    rst  = 0;
    s_in = 0;
    load = 0;
    mode = 2'b00;
    p_in = 4'b0000;

    repeat(2) @(posedge clk);
    rst = 1;

    mode = 2'b00;

    s_in = 1;
    @(posedge clk);

    s_in = 0;
    @(posedge clk);

    s_in = 1;
    @(posedge clk);

    s_in = 1;
    @(posedge clk);
 #30;
    mode = 2'b01;
    load = 1;

   s_in = 1;
@(negedge clk);
s_in = 0;
@(negedge clk);
s_in = 1;
@(negedge clk);
s_in = 1;
@(negedge clk);
    load = 0;
    
 #10;
    mode = 2'b10;
    p_in = 4'b1101;
#10;
    load = 1;
#10;
    load = 0;
#50;
        
    repeat(4) @(posedge clk);  

    mode = 2'b11;
    p_in = 4'b1001;

    load = 1;
    @(posedge clk);      

    load = 0;
    @(posedge clk);      

    #20;

    $finish;

end

endmodule