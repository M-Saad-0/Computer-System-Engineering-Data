module Top;
	
	wire [0:15] y;
	wire A, B, C, D, En;
	
	dec4x16 d (y, A, B, C, D, En);
	test_dec4x16 t (y, A, B, C, D, En);

endmodule