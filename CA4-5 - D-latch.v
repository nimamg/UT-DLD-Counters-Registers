`timescale 1ns/1ns

module dlatch (input d, clk, output q);
    wire i,j,dbar,qbar;
    nand (i,d,clk);
    not (dbar,d);
    nand (j,dbar,clk);
    nand (q,i,qbar);
    nand (qbar,j,q);
endmodule