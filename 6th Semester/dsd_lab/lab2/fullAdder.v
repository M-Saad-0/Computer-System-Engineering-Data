module fullAdder(S, Cout, A, B, Cin);
input A, B, Cin;
output S, Cout;
wire s1, c1, c2;
HA H(s1, c1, A, B);
HA H1(S, c2, Cin, s1);
or o(Cout, c1, c2);
endmodule

module FA_DataFlow_TB();
wire S, Cout;
reg A, B, Cin;
FA_beha f11(S, Cout, A, B, Cin);
initial begin
Cin=0; A=0; B=0; #10
Cin=0; A=0; B=1; #10
Cin=0; A=1; B=0; #10
Cin=0; A=1; B=1; 
end
initial
$monitor("%d  A=%b  B=%b  Cin=%b  S=%b  Cout=%b", $time, A, B, Cin, S, Cout);
endmodule