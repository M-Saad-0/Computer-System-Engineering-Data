module decoder4x16(A, B, C, e, I);
	input A, B, C, e;
	output [0:15]I;
	wire ne;
	not n(ne, e);
	d3x8 d1(A, B, C, ne, I[0:7]);
	d3x8 d2(A, B, C, e, I[8:15]);
endmodule
