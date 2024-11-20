module test_RCA6 (S, Cout, A, B, Cin);

	input [5:0] S;
	input Cout;
	output [5:0] A, B;
	output Cin;

	reg [5:0] A, B;
	reg Cin;

	initial begin
	#5 A=6'd16; B=6'd17; Cin=1'b0;
	#5 A=6'd63; B=6'd60; Cin=1'b0;
	#5 A=6'd8; B=6'd7; Cin=1'b0;
	end

	initial begin
	$display ("#####Ripple Carry Adder...#####\n"); 
	$monitor ("%d, A, B=%b, %b **** OUT=%b\n", $time, A, B, {Cout, S});
	end

endmodule