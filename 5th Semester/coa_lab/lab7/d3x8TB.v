module d3x8TB();
	reg A, B, e, C;
	wire [0:7]I;
	d3x8 d3(A, B, C, e, I);
	initial begin
		$display("A  B  C  e  I0  I1  I2  I3 I4  I5  I6  I7");
		
		e = 0;		A = 0;		B = 0;		C = 0;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
		e = 1;		A = 0;		B = 0;		C = 0;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
		e = 1;		A = 0;		B = 0;		C = 1;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
		e = 1;		A = 0;		B = 1;		C = 0;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
		e = 1;		A = 0;		B = 1;		C = 1;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
		e = 1;		A = 1;		B = 0;		C = 0;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
		e = 1;		A = 1;		B = 0;		C = 1;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);

		e = 1;		A = 1;		B = 1;		C = 0;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
		e = 1;		A = 1;		B = 1;		C = 1;		#100
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b   %b", A,  B, C, e,  I[0],  I[1],  I[2],  I[3], I[4],  I[5],  I[6],  I[7]);
		
end
endmodule