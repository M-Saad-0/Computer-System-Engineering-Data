module d_flipflop(D, C, Q, Q_);
	input D, C;
	output Q, Q_;
	wire nD, e, f;

	not n1(nD, D);
	nand a1(e, D, C);
	nand a2(f, nD, C);
	nand a3(Q, Q_, e);
	nand a4(Q_, Q, f);
endmodule
