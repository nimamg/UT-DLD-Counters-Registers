`timescale 1ns/1ns

module HICTB();
  reg cin, clk;
  reg [1:0] min;
  reg [7:0] pin;
  wire cout;
  wire [1:0] mout;
  wire [7:0] fout;
  HIC hic1 (fout, cout, mout, cin, clk, pin, min);
  initial begin
      clk = 1;
      pin = 8'b10100110; 
      cin = 0; 
      min = 2'b11;
      repeat(5)
        clk = ~clk; #200;
      cin = 1;
      min = 2'b01;
      repeat(5)
        clk = ~clk; #200;
      min = 2'b10;
      repeat(5)
        clk = ~clk; #200;
      cin = 0;
      min = 2'b00;
      repeat(5)begin
        clk = ~clk; #200;
      end
  end
endmodule