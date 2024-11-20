module TB_PISO;
	
	reg CLK, LD, SHIFT;
	reg [7:0] PI;
	wire SO;
		
	PISO dut (CLK, PI, SO, LD, SHIFT);
	
	always
		#5 CLK = ~CLK; 

	initial
		begin
			CLK = 1'b0; 
			PI = 8'b10101101;
			#10 LD = 1'b1;
			#10 LD = 1'b0;
			#5 SHIFT = 1'b1;	
		end

endmodule