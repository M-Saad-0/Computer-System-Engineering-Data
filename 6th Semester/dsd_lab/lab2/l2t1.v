module Carry(Cout, A, B);
input A, B;
output Cout;
and a(Cout, A, B);
endmodule

module Sum(S, A, B);
input A, B;
output S;
xor x(S, A, B);
endmodule

module HA(S, Cout, A, B);
input A, B;
output S, Cout;
Carry c(Cout, A, B);
Sum s(S, A, B);
endmodule


