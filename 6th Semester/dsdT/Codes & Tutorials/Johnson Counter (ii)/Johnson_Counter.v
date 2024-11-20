module Johnson_Counter (CLK, CLR, COUNT);

	input CLK, CLR;
	output [3:0] COUNT;
	
	parameter [3:0] S0 = 4'b0000, S1 = 4'b1000, S2 = 4'b1100, S3 = 4'b1110,
	                S4 = 4'b1111, S5 = 4'b0111, S6 = 4'b0011, S7 = 4'b0001;
	
	reg [3:0] COUNT;
	
	always @(posedge CLK)
		if (~CLR)
			COUNT = S0;
		else
			case (COUNT)
				S0: COUNT = S1;
				S1: COUNT = S2;
				S2: COUNT = S3;
				S3: COUNT = S4;
				S4: COUNT = S5;
				S5: COUNT = S6;
				S6: COUNT = S7;
				S7: COUNT = S0;
				default: COUNT = S0;
			endcase
			
endmodule