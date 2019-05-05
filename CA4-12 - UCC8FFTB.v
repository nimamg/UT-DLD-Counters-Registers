`timescale 1ns/1ns

module UCC8RegTB();
reg [7:0] pin;
reg [1:0] min;
reg cin, clk, rst;
wire [1:0] mout;
wire cout;
wire[7:0] fout;
UCC8WithReg uut(fout, cout, mout, cin,rst,clk, pin, min);
initial begin
  #500;
  clk = 0;
  rst = 1;
  pin = 8'b11110000;
  min = 2'b11;
  cin = 1;
  repeat (5) #400 clk=~clk; 
  rst = 0;
  repeat (5) #400 clk=~clk;
  min = 2'b00;
  repeat (5) #400 clk=~clk;
  min = 2'b11;
  pin = 8'b11111111;
  repeat (5) #400 clk=~clk;
  min = 2'b10;
  repeat (10) #400 clk=~clk;
  min = 2'b01;
  repeat (10) #400 clk=~clk;
  cin = 0;
  repeat (5) #400 clk=~clk;
end
endmodule