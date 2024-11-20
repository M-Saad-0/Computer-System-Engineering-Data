module dec4x16 (y, A, B, C, D, En);

	input A, B, C, D, En;
	output [0:15] y;
	
	wire [0:3] w;
	
	dec2x4 d1 (w[0:3], A, B, En);
	dec2x4 d2 (y[0:3], C, D, w[0]);
	dec2x4 d3 (y[4:7], C, D, w[1]);
	dec2x4 d4 (y[8:11], C, D, w[2]);
	dec2x4 d5 (y[12:15], C, D, w[3]);

endmodule