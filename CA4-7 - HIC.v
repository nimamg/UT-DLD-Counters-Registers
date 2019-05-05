`timescale 1ns/1ns
module HIC (output [7:0] fout, output cout, output [1:0] mout, input cin,clk, input [7:0] pin, input [1:0] min);
	wire [7:0] fin;
	UCC8 unit (fout, cout, mout, cin, fin, pin, min);
	genvar i;
	generate
		for ( i = 0 ; i < 8 ; i = i + 1) begin
		    dlatch register (fout[i],clk,fin[i]);
		end
	endgenerate
endmodule
