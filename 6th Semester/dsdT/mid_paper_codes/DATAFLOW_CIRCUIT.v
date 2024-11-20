module DATAFLOW_CIRCUIT (a, b, c, en, d);

	input a, b, c, en;
	output [0:7] d;

	wire na, nb, nc;

	assign na = !a;
	assign nb = !b;
	assign nc = !c;
	assign d[0] = na && nb && nc && en;
	assign d[1] = na && nb && c && en;
	assign d[2] = na && b && nc && en;
	assign d[3] = na && b && c && en;
	assign d[4] = a && nb && nc && en;
	assign d[5] = a && nb && c && en;
	assign d[6] = a && b && nc && en;
	assign d[7] = a && b && c && en;

endmodule