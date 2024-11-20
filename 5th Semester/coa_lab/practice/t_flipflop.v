module t_flipflop(T, C, Q, Q_);
	input T, C;
	output Q, Q_;
	wire d;	
	not x(d, Q, T);
	d_flipflop dff(d, C, Q, Q_);
endmodule
