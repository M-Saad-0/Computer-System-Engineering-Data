module test_FA(Sum, Cout, A, B, Cin);

	input Sum, Cout;
	output A, B, Cin;

	reg A, B, Cin;

	initial begin	
	#5 A=1; B=0; Cin=1;
	#5 A=1; B=1; Cin=1;
	#5 A=0; B=0; Cin=1;	
	#5 A=0; B=1; Cin=1;
	#5 A=1; B=0; Cin=1;
	end

	initial 
	$monitor("%d, A=%b, B=%b, Cin=%b **** Sum=%b, Cout=%b  \n",$time, A, B, Cin, Sum, Cout);		
	
endmodule