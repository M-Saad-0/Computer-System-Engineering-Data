module t_flipflopTB();
  reg T, C;
  reg Q, Q_;

  t_flipflop t(T, C, Q, Q_);
initial begin
	Q=0;
	$display("T	C	Q	Q_");
	T=0; C=1;
	#10
	$display("%b	%b	%b	%b", T, C, Q, Q_);

	T=1; C=1;
	#10
	$display("%b	%b	%b	%b", T, C, Q, Q_);

	T=0; C=1;
	#10
	$display("%b	%b	%b	%b", T, C, Q, Q_);

	T=1; C=1;
	#10
	$display("%b	%b	%b	%b", T, C, Q, Q_);
end
endmodule
