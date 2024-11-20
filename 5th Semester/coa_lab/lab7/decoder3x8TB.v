
module decoder3x8TB();
	reg A, B, e;
	wire [3:0]I1, I2;
	decoder3x8 d4(A, B, e, I1, I2);
	initial begin
		$display("A  B  e  I0  I1  I2  I3 I4  I5  I6  I7");
		e = 0;
		A = 0;
		B = 0;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		
		
		e = 0;
		A = 0;
		B = 1;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		

		e = 0;
		A = 1;
		B = 0;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		
		e = 0;
		A = 1;
		B = 1;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		

		e = 1;
		A = 0;
		B = 0;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		

		e = 1;
		A = 0;
		B = 1;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		

		e = 1;
		A = 1;
		B = 0;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		

		e = 1;
		A = 1;
		B = 1;
		#40
		$display("%b  %b  %b  %b   %b   %b   %b   %b   %b   %b   %b", A,  B,  e,  I1[0],  I1[1],  I1[2],  I1[3], I2[0],  I2[1],  I2[2],  I2[3]);
		

		
end
endmodule
