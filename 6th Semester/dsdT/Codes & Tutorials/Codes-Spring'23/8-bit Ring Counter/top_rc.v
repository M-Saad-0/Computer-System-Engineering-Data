module top_rc;

	wire clk, init;
	wire [7:0] count;

	rc r0 (clk, init, count);
	test_rc t0 (clk, init, count);

endmodule
