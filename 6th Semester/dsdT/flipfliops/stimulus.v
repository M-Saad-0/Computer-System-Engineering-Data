
module stimulus(q, t, clk, rst);
	input [3:0]q;
	output t, clk, rst;
	reg t, clk, rst;
	always
		#5 clk = ~clk;
	initial
	begin
		clk = 1'b0;

	end
	initial
		$monitor($time, ", t=%b, rst=%b, clk=%b, q=%b", t, rst, clk, q);
endmodule
