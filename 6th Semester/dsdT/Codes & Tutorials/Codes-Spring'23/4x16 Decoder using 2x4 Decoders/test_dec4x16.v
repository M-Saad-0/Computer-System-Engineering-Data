module test_dec4x16 (y, A, B, C, D, En);

	input [0:15] y;
	output A, B, C, D, En;
	
	reg A, B, C, D, En;
	
	initial begin
	En=0;
	#5 {A, B, C, D}=4'd0; En=1;
	#5 {A, B, C, D}=4'd1; En=1;
	#5 {A, B, C, D}=4'd2; En=1;
	#5 {A, B, C, D}=4'd3; En=1;
	#5 {A, B, C, D}=4'd4; En=0;
	#5 {A, B, C, D}=4'd5; En=1;
	#5 {A, B, C, D}=4'd6; En=1;
	#5 {A, B, C, D}=4'd7; En=1;
	#5 {A, B, C, D}=4'd8; En=1;
	#5 {A, B, C, D}=4'd9; En=1;
	#5 {A, B, C, D}=4'd10; En=1;
	#5 {A, B, C, D}=4'd11; En=1;
	#5 {A, B, C, D}=4'd12; En=1;
	#5 {A, B, C, D}=4'd13; En=1;
	#5 {A, B, C, D}=4'd14; En=1;
	#5 {A, B, C, D}=4'd15; En=1;
	#5 {A, B, C, D}=4'd1; En=0;
	end

	initial 
	$monitor ("%d, %b, %b ====>> %b", $time, {A, B, C, D}, En, y);
	
endmodule