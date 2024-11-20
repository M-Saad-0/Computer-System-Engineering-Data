module RCA3 (S, Cout, A, B, Cin);

	input [2:0] A, B;
	input Cin;
	output [2:0] S;
	output Cout;

	wire c0, c1;

	FA fa1 (S[0], c0, A[0], B[0], Cin);
	FA fa2 (S[1], c1, A[1], B[1], c0);
	FA fa3 (S[2], Cout, A[2], B[2], c1);

endmodule