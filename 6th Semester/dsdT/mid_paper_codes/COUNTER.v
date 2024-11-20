module COUNTER (CLK, RESET, UP_DN, COUNT);
	//Write your code here

	input CLK, RESET, UP_DN;
	output [2:0] COUNT;

	reg [2:0] COUNT;

	always @(posedge CLK)
		if (~RESET) //Active low RESET
			COUNT <= 0;
		else
			if (UP_DN) //Up mode selected
				COUNT <= COUNT + 1; //Increment COUNT
			else //Down mode selected
				COUNT <= COUNT - 1; //Decrement COUNT
				
endmodule