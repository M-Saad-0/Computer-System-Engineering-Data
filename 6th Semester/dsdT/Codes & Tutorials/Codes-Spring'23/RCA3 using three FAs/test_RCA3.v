module test_RCA3 (S, Cout, A, B, Cin);

	input [2:0] S;
	input Cout;
	output [2:0] A, B;
	output Cin;

	reg [2:0] A, B;
	reg Cin;

	initial begin
	A=3'b101; B=3'b111; Cin=1'b0;
	#20 A=3'b100; B=3'b001; Cin=1'b0;
	#20 A=3'b111; B=3'b111; Cin=1'b0;
	end

	initial begin
	$display ("*****A 3-bit Ripple Carry Adder...*****\n"); 
	$monitor ("%d, A, B=%b, %b ****OUT=%b%b\n", $time, A, B, Cout, S);
	end

endmodule