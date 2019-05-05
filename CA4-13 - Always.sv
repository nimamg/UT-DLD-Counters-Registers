`timescale 1ns/1ns

module UCC8always (output logic [7:0] fout, output cout, output [1:0] mout, input cin,rst,clk,input [7:0] pin, 
input [1:0] min);
    assign cout = &{cin,fout};
    assign mout[0] = min[0];
    assign mout[1] = (mout[0] & mout[1]) | (mout[1] & ~(|{fout}));
    always @(posedge clk, posedge rst) begin
        if (rst) fout <= 8'b0;
        else begin
            case(min)
                0: fout <= fout;
                1: fout <= fout + cin;
                2: fout <= fout - 1;
                3: fout <= pin;
                default fout <= fout;
            endcase
        end
    end
endmodule