`timescale 1ns/1ns

module sr (input s, r, clk, output q);
    wire i,j,qbar;
    nand #7 (i,s,clk);
    nand #7 (j,r,clk);
    nand #7 (q,i,qbar);
    nand #7 (qbar,j,q);
endmodule