module rc (clk, init, count);

	input clk, init;
	output [7:0] count;
	
	reg [7:0] count;

	always @(posedge clk)
		if (init)
			count = 8'b00000001;
		else 
		begin
			count <= count >> 1; 
			count[7] <= count[0];
		end
		
endmodule