`timescale 1ns/1ns
module UCCTB ();
    wire fout, cout;
    reg cin,fin,pin;
    reg [1:0] min;
    wire [1:0] mout;

    UCC uut(fout, cout, mout, cin, fin, pin, min);
    
    initial begin
        #200;
        cin = 0;
        pin = 0;
        min = 2'b00;
        fin = 1;
        #200;
        fin = fout;
        min = 2'b01;
        #200;
        fin = fout;
        cin = 1;
        #200;
        fin = fout;
        min = 2'b10;
        #200;
        fin = fout;
        #200;
        fin = fout;
        #200;
        min = 2'b11;
        pin = ~fout;
        #200;
        min = 2'b00;
        fin = fout;
        #200;
  end
endmodule 
