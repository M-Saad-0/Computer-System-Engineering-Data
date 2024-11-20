module Carry (Cy, A, B);

	input A, B;
	output Cy;

	assign Cy = A&B;

endmodule