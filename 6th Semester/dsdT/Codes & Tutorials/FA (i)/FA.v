module FA (Sum, Cout, A, B, Cin);
 
	output Sum, Cout;
	input A, B, Cin;

	wire c1, c2, s1;	
	// Structural code
	HA2 ha1 (.Su(s1), .Ca(c1), .A(A), .B(B));
	HA2 ha2 (.Su(Sum), .Ca(c2), .A(s1), .B(Cin));		
	or o1 (Cout, c1, c2);
	
endmodule


module rippleAdder(Sum10, Cout_, A10, B10, Cin_ );
	input [9:0]A10, B10;
	input Cin_;
	output [9:0]Sum10;
	output Cout_;
	wire [8:0]c;
	FA fa1(Sum10[0], c[0], A10[0], B10[0], Cin_);
	FA fa2(Sum10[1], c[1], A10[1], B10[1], c[0]);
	FA fa3(Sum10[2], c[2], A10[2], B10[2], c[1]);
	FA fa4(Sum10[3], c[3], A10[3], B10[3], c[2]);
	FA fa5(Sum10[4], c[4], A10[4], B10[4], c[3]);
	FA fa6(Sum10[5], c[5], A10[5], B10[5], c[4]);
	FA fa7(Sum10[6], c[6], A10[6], B10[6], c[5]);
	FA fa8(Sum10[7], c[7], A10[7], B10[7], c[6]);
	FA fa9(Sum10[8], c[8], A10[8], B10[8], c[7]);
	FA fa10(Sum10[9], c[9], A10[9], B10[9], c[8]);
endmodule