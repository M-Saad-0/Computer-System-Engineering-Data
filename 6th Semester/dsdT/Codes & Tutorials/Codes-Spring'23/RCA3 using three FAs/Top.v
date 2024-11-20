module Top;

	wire [2:0] S, A, B;
	wire Cin, Cout;

	RCA3 a1 (S, Cout, A, B, Cin);
	test_RCA3 t1 (S, Cout, A, B, Cin);
	
endmodule