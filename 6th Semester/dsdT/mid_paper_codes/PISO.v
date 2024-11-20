module PISO (CLK, PI, SO, LD, SHIFT);
	//Write your code here

	input CLK, LD, SHIFT;
	input [7:0] PI;
	output SO;

	reg SO;
	reg [7:0] SHIFTER;

	always @(negedge CLK)
		if (LD)
			SHIFTER = PI;
		else if (SHIFT) 
		begin
			SO = SHIFTER[7];
			SHIFTER = {SHIFTER[6:0], 1'b0}; 
		end

endmodule