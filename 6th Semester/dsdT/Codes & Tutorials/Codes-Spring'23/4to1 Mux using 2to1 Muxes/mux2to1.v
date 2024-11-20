module mux2to1 (Out, I0, I1, Sel);
	
	input I0, I1, Sel;
	output Out;
	
	reg Out;

	always @(*)
	if (~Sel)
		Out = I0;
	else
		Out = I1;
		
endmodule