
module top;
	wire t, clk, rst;
	wire [3:0]q;
	ripple_counter r(q, t, clk, rst);
	stimulus s(q, t, clk, rst);
endmodule
