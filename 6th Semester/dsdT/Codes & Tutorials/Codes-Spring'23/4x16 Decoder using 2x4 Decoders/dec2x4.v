module dec2x4 (D, A, B, En);

	input A, B, En;
	output [0:3] D;
	
	reg [0:3] D;
	
	always @(A, B, En)
	if (En)
		case ({A, B})
			0: D = 4'b1000;
			1: D = 4'b0100;
			2: D = 4'b0010;
			3: D = 4'b0001;
			default: D = 4'b0000;
		endcase
	else D = 4'b0000;

endmodule