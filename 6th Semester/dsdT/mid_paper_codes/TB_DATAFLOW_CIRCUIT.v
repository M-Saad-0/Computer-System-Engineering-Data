//Test Bench for DATAFLOW_CIRCUIT 
module TB_DATAFLOW_CIRCUIT;

	reg a, b, c, en; 
	wire [0:7] d;
	
	DATAFLOW_CIRCUIT DF (a, b, c, en, d);

	initial 
	begin
		a = 1; b = 1; c = 1; en = 0;
		#5 a = 0; b = 1; c = 1; en = 1;
		#5 a = 1; b = 0; c = 1; en = 1;
		#5 a = 0; b = 1; c = 0; en = 1;
		#5 a = 1; b = 1; c = 0; en = 0;
		#5 a = 0; b = 0; c = 1; en = 1;
		#5 a = 0; b = 0; c = 0; en = 1;
	end

	initial 
		$monitor ($time, " OUT = %b", d);		

endmodule