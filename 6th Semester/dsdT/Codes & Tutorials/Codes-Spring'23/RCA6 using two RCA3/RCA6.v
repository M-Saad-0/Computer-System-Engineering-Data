module RCA6 (S, Cout, A, B, Cin);

	input [5:0] A, B;
	input Cin;
	output [5:0] S;
	output Cout;

	wire c0;

	RCA a1 (S[2:0], c0, A[2:0], B[2:0], Cin);
	RCA a2 (S[5:3], Cout, A[5:3], B[5:3], c0);

endmodule