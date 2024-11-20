module Top;

	wire S, C, A, B;
	HA ha1 (S, C, A, B);
	test_HA t1 (S, C, A, B);

endmodule