
module sr_flipflopTB();
	reg S, R, C;
	wire Q, Q_;
	sr_flipflop srff(S, R, C, Q, Q_);
	initial begin
		$display("S	R	C	Q	Q_");
		S=0;	R=0;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", S, R, C, Q, Q_);
		S=0;	R=1;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", S, R, C, Q, Q_);
		S=1;	R=0;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", S, R, C, Q, Q_);
		S=1;	R=1;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", S, R, C, Q, Q_);
end
endmodule
