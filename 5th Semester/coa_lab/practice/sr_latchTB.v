
module sr_latchTB();
	reg S, R;
	wire Q, Q_;
	sr_latch sr(S, R, Q, Q_);
	initial begin
		$display("S	R	Q	Q_");
		S=0;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=0;	R=1;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=1;
		#10	
		$display("%b	%b	%b	%b", S, R, Q, Q_);
S=0;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=0;	R=1;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=1;
		#10	
		$display("%b	%b	%b	%b", S, R, Q, Q_);
S=0;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=0;	R=1;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=1;
		#10	
		$display("%b	%b	%b	%b", S, R, Q, Q_);
S=0;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=0;	R=1;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=1;
		#10	
		$display("%b	%b	%b	%b", S, R, Q, Q_);
S=0;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=0;	R=1;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=0;
		#10
		$display("%b	%b	%b	%b", S, R, Q, Q_);
		S=1;	R=1;
		#10	
		$display("%b	%b	%b	%b", S, R, Q, Q_);
	end
endmodule