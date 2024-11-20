`timescale 1ns / 1ps
module tb( );

reg [3:0] x,y,z;
wire sum,cout;
top t1(sum,cout,x,y,z);


initial begin
	x=4'b1010;
	y=4'b0110;
	z=4'b0101;
	#10
	x=4'b0100;
	y=4'b1010;
	z=4'b1010;
end

initial
	$monitor("x:%b, y:%b, z:%b, sum:%b, cout:%b",x,y,z,sum,cout);


endmodule
