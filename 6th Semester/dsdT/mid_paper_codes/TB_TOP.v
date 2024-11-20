module TB_TOP;
	
	reg CLOCK, CLR, UD;
	reg [7:0] I0, I1, I2, I3, I4, I5, I6, I7;
	wire [7:0] DATA_OUT;
	
	TOP DUT (CLOCK, CLR, UD, I0, I1, I2, I3, I4, I5, I6, I7, DATA_OUT);
	
	always 
		#5 CLOCK = ~CLOCK;
		
	initial
	begin
		CLOCK = 0;
		CLR = 0;
		I0 = 8'h11; I1 = 8'hFF; I2 = 8'hAB; I3 = 8'hCC; I4 = 8'h99; I5 = 8'h88; I6 = 8'hE7; I7 = 8'hD0;
		#10 CLR = 1; UD = 1;
		#50 UD = 0;
		#150 UD = 1;
	end
	
	initial
		$monitor ($time, ": CLR = %b, UD = %b, I0 = %h, I1 = %h, I2 = %h, I3 = %h, I4 = %h, I5 = %h, I6 = %h, I7 = %h, OUT = %h", 
		CLR, UD, I0, I1, I2, I3, I4, I5, I6, I7, DATA_OUT);
	
endmodule