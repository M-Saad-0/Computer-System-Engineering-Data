module d_ff(q, d, clk, rst);
	input clk, rst, d;
	output q;
	reg q;
	always@(negedge clk or posedge rst)
	begin
		if(rst)
			q=1'b0;
		else
			q=d;
	end
endmodule
