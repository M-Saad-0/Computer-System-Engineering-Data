
module ripple_counter(q, t, clk, rst);
	output [3:0]q;
	input t, clk, rst;
	
	t_ff t1(q[0], t, clk, rst);
	t_ff t2(q[1], t, ~q[0], rst);
	t_ff t3(q[2], t, ~q[1], rst);
	t_ff t4(q[3], t, ~q[2], rst);
endmodule
