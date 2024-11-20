module TOP (CLOCK, CLR, UD, I0, I1, I2, I3, I4, I5, I6, I7, DATA_OUT);
	//Write your code here

	input CLOCK, CLR, UD;
	input [7:0] I0, I1, I2, I3, I4, I5, I6, I7;
	output [7:0] DATA_OUT;

	wire [2:0] COUNT;

	COUNTER c (CLOCK, CLR, UD, COUNT);
	MUX81 m (COUNT, I0, I1, I2, I3, I4, I5, I6, I7, DATA_OUT);
	
endmodule