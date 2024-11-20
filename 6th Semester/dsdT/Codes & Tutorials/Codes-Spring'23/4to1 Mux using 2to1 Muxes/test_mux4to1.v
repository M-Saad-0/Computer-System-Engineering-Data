module test_mux4to1; 

	// Inputs are regs here
	reg [0:3] I;
	reg [1:0] Sel;
		
	// Outputs are wires here
	wire Out;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	mux4to1 m1 (Out, I, Sel);
	

	initial begin
	I=4'b0000; Sel=2'b00;
	#5 I=4'b1000; Sel=2'b00;
	#5 I=4'b1001; Sel=2'b11;
	#5 I=4'b1000; Sel=2'b11;
	#5 I=4'b1000; Sel=2'b10;
	#5 I=4'b1010; Sel=2'b10;
	#5 I=4'b1011; Sel=2'b01;
	end
	
	initial
	$monitor("I[I0,I1,I2,I3]=%b,Sel=%b--->Out=%b",I, Sel, Out);		
		      
endmodule