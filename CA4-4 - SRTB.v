`timescale 1ns/1ns

module srTB ();
    reg s,r;
    reg clk;
    wire q;
    sr uut (s,r,clk,q);
    initial begin
        clk = 0;
        s = 0;
        r = 0;
        #100;
        clk = ~clk;
        #100;
        clk = ~clk;
        s = 1;
        r = 0;
        #100;
        clk = ~clk;
        #100;
        clk = ~clk;
        s = 0;
        r = 1;
        #100;
        clk = ~clk;
        #100;
        clk = ~clk;
        s = 1;
        r= 1;
        #100;
        clk = ~clk;
        #100;
    end
        
endmodule
        
