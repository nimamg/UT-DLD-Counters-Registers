`timescale 1ns/1ns

module dffWrstTB ();
    reg d, clk, rst;
    wire q;
    dffWithRst uut (d, clk, rst, q);
    initial begin
        d = 0;
        clk = 0;
        rst = 0;
        #100;
        clk = ~clk;
        #100;
        clk = ~clk;
        d = 1;
        #100;
        clk = ~clk;
        #100;
        clk = ~clk;
        d = 0;
        #100;
        clk = ~clk;
        #100;
        clk = ~clk;
        d = 1;
        #100;
        clk = ~clk;
        #100;
        clk = ~clk;
        rst = 1;
        #100;
        clk = ~clk;
        d = 0;
        #100;
        clk = ~clk;
        d = 1;
       repeat(5) #100 clk = ~clk;
    end
endmodule
        
