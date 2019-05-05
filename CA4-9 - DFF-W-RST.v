`timescale 1ns/1ns

module dffWithRst (input d,clk,rst,output q);
    wire i;
    and (i,~rst,d);
    dff ff (i,clk,q);
endmodule