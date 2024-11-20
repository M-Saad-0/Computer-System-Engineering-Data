module STRUCT_CIRCUIT (a, b, c, en, d);

	input a, b, c, en;
	output [0:7] d;
	//Write your code here

	wire na, nb, nc;

	not n1 (na, a);
	not n2 (nb, b);
	not n3 (nc, c);
	and a1 (d[0], na, nb, nc, en);
	and a2 (d[1], na, nb, c, en);
	and a3 (d[2], na, b, nc, en);
	and a4 (d[3], na, b, c, en);
	and a5 (d[4], a, nb, nc, en);
	and a6 (d[5], a, nb, c, en);
	and a7 (d[6], a, b, nc, en);
	and a8 (d[7], a, b, c, en);

endmodule