module jk_flipflopTB();
	reg J, K, C;
	reg Q, Q_;
	jk_flipflop jkff(J, K, C, Q, Q_);
	initial begin
		Q = 0;
		$display("J	K	C	Q=0	Q_");
		J=0;	K=0;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", J, K, C, Q, Q_);
		J=0;	K=1;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", J, K, C, Q, Q_);
		J=1;	K=0;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", J, K, C, Q, Q_);
		J=1;	K=1;	C=1;
		#10
		$display("%b	%b	%b	%b	%b", J, K, C, Q, Q_);
end
endmodule
