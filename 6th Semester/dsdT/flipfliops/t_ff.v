module t_ff(q, t, clk, rst);
	output q;
	input t, clk, rst;
	wire d;
	//not(d,q); for uncontrolled t fliflop
	xor x(d, t, q);
	d_ff do(.q(q), .d(d), .rst(rst), .clk(clk)); //.d(d) .d() outside the parenthesis is d defined in this module while (d) is from dff
endmodule
