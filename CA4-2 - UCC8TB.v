`timescale 1ns/1ns
module UCC8TB ();
    wire [7:0] fout;
    wire cout;
    reg cin;
    reg [7:0] fin,pin;
    reg [1:0] min;
    wire [1:0] mout;
    UCC8 uut(fout, cout, mout, cin, fin, pin, min);
    
    initial begin
        #200;
        cin = 0;
        pin = 8'b0;
        min = 2'b0;
        fin = 8'b11000110; // do nothing
        #500;
        fin = fout;
        min = 2'b01; // count with cin = 0
        #200;
        cin = 1; // count with cin = 1
        fin = fout;
        #200;
        fin = fout;
        #200;
        fin = fout;
        #200;
        fin = fout;
        min = 2'b10; // count down
        #200;
        fin = fout;
        #200;
        fin = fout;
        #200;
        fin = fout;
        pin = 8'b10100101; // to have a diffrent parrallel input
        min = 2'b11; // to load
        #500;
        fin = fout;
        #200;
  end
endmodule 
