module FA_beha(S, C, A, B, Cin);
input A, B, Cin;
output S, C;
assign S = A^B^Cin;
assign C = A&B | B&Cin | A&Cin;
endmodule