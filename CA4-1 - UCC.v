`timescale 1ns/1ns
module UCC (output fout, cout, output [1:0] mout, input cin, fin, pin, input [1:0] min);
    // fout -- start
    wire [3:0] i;
    wire j,k;
    and #7 (i[0], ~min[0], ~min[1], fin); // do nothing
    xor #7 (j, fin, cin);
    and #7 (i[1], ~min[1], min[0], j); // count up
    and #7 (i[2], min[1], min[0], pin); // parallel load
    and #7 (i[3], min[1], ~min[0], ~fin); // count down
    or #7 (k,i[0],i[1],i[2]);
    or #7 (fout,k,i[3]);
    // fout -- end

    and #7 (cout,fin,cin); // cout

    // mout -- start
    wire h[1:0];
    and #7 (h[0], min[0],min[1]);
    and #7 (h[1],~fin,min[1]);
    or #7 (mout[1],h[0],h[1]); // mout[1]
    buf (mout[0],min[0]); // mout[0]
    // mout -- end
endmodule // UCC
