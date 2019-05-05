`timescale 1ns/1ns

module dLatchTB ();
    reg d, clk;
    wire q;
    dlatch uut (d, clk, q);
    initial begin
        clk = 0;
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
        d = 0;
        #100;
        clk = ~clk;
        #100;

    end
        
endmodule
        
