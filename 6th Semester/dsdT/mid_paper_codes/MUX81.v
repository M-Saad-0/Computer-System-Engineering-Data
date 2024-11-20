module MUX81 (SEL, D0, D1, D2, D3, D4, D5, D6, D7, OUT);
	//Write your code here

	input [2:0] SEL;
	input [7:0] D0, D1, D2, D3, D4, D5, D6, D7;
	output [7:0] OUT;

	reg [7:0] OUT;
	
	always @(*)
		case (SEL)
			3'b000: OUT = D0;
			3'b001: OUT = D1;
			3'b010: OUT = D2;
			3'b011: OUT = D3;
			3'b100: OUT = D4;
			3'b101: OUT = D5;
			3'b110: OUT = D6;
			3'b111: OUT = D7;
		endcase

endmodule