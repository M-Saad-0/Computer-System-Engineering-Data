
module sr_latch(S, R, Q, Q_);
	input S, R;
	output Q, Q_;
	nand a3(Q, Q_, S);
	nand a4(Q_, Q, R);
endmodule