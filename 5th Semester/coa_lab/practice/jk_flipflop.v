module jk_flipflop(J, K, C, Q, Q_);
	input J, K, C;
	output Q, Q_;
	wire s, r;
	nand n1(s, J, Q_, C);
	nand n2(r, K, Q, C);
	sr_latch sr(s, r, Q, Q_);
endmodule
