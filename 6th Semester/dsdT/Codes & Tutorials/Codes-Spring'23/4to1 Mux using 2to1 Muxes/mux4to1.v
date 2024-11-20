module mux4to1 (Out, I, S);
	
	input [0:3] I;
	input [1:0] S;
	output Out;
	
	wire O1, O2;

	mux2to1 m1 (O1, I[0], I[1], S[0]);
	mux2to1 m2 (O2, I[2], I[3], S[0]);
	mux2to1 m3 (Out, O1, O2, S[1]);
		
endmodule