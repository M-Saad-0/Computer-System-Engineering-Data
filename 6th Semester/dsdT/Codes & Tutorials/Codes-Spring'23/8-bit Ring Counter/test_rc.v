module test_rc (clk, init, count);

	output clk, init;
	input [7:0] count;
	
	reg clk, init;

	always
	#5 clk = ~clk; //toggle clk every 5 time units

	initial
	begin
	clk = 1'b0; //set clk to 0		
	init = 1'b1;
	#20 init = 1'b0;		
	end

	initial
	$monitor("%d: init = %b, count = %b",$time, init, count);

endmodule
