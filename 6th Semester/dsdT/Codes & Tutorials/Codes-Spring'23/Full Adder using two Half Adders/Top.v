module Top;

	wire S, Co, A, B, Ci;
	FA fa1 (S, Co, A, B, Ci);
	test_FA t1 (S, Co, A, B, Ci);

endmodule