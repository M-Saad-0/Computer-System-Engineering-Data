module Top;

	wire [5:0] S, A, B;
	wire Cin, Cout;

	RCA6 a1 (S, Cout, A, B, Cin);
	test_RCA6 t1 (S, Cout, A, B, Cin);
	
endmodule