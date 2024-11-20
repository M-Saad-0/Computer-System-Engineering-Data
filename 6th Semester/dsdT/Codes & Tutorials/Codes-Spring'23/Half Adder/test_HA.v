module test_HA (S, Carr, A, B);
	
	input S, Carr;
	output A, B;
	
	reg A, B;

	initial begin
	#10 A=0;B=1;
	#10 A=0;B=0;
	#10 A=1;B=1;
	#10 A=1;B=0;end
	
	initial
	$monitor("%d, A=%b, B=%b ===>Sum=%b, Cout=%b",$time, A, B, S, Carr);

endmodule