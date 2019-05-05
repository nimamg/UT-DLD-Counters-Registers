`timescale 1ns/1ns
module UCC8 (output [7:0] fout, output cout, output [1:0] mout, input cin,input [7:0] fin, pin, input [1:0] min);
	wire [8:0] cio;
	assign cio[0] = cin;
	wire [1:0] mio [8:0];
	assign mio[0] = min;
	genvar i;
	generate
		for ( i = 0 ; i < 8 ; i = i + 1) begin
		  UCC unit (fout[i], cio[i+1], mio[i+1],cio[i],fin[i],pin[i],mio[i]);
		end
	endgenerate
	assign cout = cio[8];
	assign mout = mio[8];
endmodule
