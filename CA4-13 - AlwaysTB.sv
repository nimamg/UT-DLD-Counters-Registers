`timescale 1ns/1ns

module UCC8AlTB ();
    logic cin,clk,rst;
    logic [1:0] min;
    logic [7:0] pin;
    wire [7:0] fout;
    wire [1:0] mout;
    wire cout;
    UCC8always uut (fout,cout,mout,cin,rst,clk,min);
    initial begin
        rst = 1;
        clk = 0;
        min = 2'b0;
        cin = 0;
        repeat (5) #400 clk=~clk;
        min = 2'b11;
        pin = 8'b10010110;
        rst = 0;
        repeat (5) #400 clk=~clk;
        min = 2'b01;
        repeat (5) #400 clk=~clk;
        cin = 1;
        repeat (10) #400 clk=~clk;
        min = 2'b10;
        repeat (10) #400 clk=~clk;
        cin = 0;
        repeat (5) #400 clk=~clk;
    end
endmodule