module d_flipflop_tb;

  reg D, C;
  wire Q, Q_;

  d_flipflop dut(D, C, Q, Q_);

  initial begin
		$display("D	C	Q	Q_");

    D = 0;    C = 0;
    #10;
		$display("%b	%b	%b	%b", D, C, Q, Q_);
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
		$display("%b	%b	%b	%b", D, C, Q, Q_);
    #10;
    C = 0;

    D = 0;
    C = 0;
		$display("%b	%b	%b	%b", D, C, Q, Q_);

    #10;
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
    #10;
    C = 0;

    D = 0;
    C = 0;

    #10;
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
    #10;
    C = 0;

    D = 0;
    C = 0;

    #10;
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
    #10;
    C = 0;

    D = 0;
    C = 0;

    #10;
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
    #10;
    C = 0;

    D = 0;
    C = 0;

    #10;
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
    #10;
    C = 0;

    D = 0;
    C = 0;

    #10;
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
    #10;
    C = 0;

    D = 0;
    C = 0;

    #10;
    C = 1;
    #10;
    C = 0;

    #10;
    D = 1;
    C = 1;
    #10;
    C = 0;

  end

endmodule

