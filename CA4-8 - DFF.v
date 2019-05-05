`timescale 1ns/1ns

module dff (input d, clk, output q);
    wire w;
    dlatch L1 (d,clk,w);
    dlatch L2 (w,~clk,q);
endmodule