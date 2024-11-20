
module sr_flipflop(S, R, C, Q, Q_);
	input S, R, C;
	output Q, Q_;
	wire e, f;
	nand n1(e, S, C);
	nand n2(f, R, C);
	sr_latch sr(e, f, Q, Q_);
endmodule
