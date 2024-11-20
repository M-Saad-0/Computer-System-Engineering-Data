module buffer(O, I);
	input I;
	output O;
	buf b(O, I);
endmodule

module bufferTB();
	wire O; reg I;
	buffer bffer(O, I);
	initial begin
	I=0; #10
	I=1;I=0;#10 #10
	I=1; #10I=0; #10
	I=1;I=0;#10 #10
	I=1; #10I=0; #10
	I=1;I=0;#10 #10
	I=1; 
	end
	initial
	$monitor("%d I=%b O=%b", $time, I, O);
endmodule


module inverter(O, I);
	input I;
	output O;
	not n(O, I);
endmodule

module inverterTB();
	wire O; reg I;
	inverter invert(O, I);
	initial begin
	I=0; #10
	I=1;I=0;#10 #10
	I=1; #10I=0; #10
	I=1;I=0;#10 #10
	I=1; #10I=0; #10
	I=1;I=0;#10 #10
	I=1; 
	end
	initial
	$monitor("%d I=%b O=%b", $time, I, O);
endmodule

module orUnand(Output, A, B);
	input A, B;
	output Output;
	wire o1, o2;
	nand n1(o1, A, A);
	nand n2(o2, B, B);	
	nand n3(Output, o1, o2);
endmodule

module orUnandTB();
	wire Output; reg A, B;
	orUnand orr(Output, A, B);
	initial begin
	A=0; B=0; #10
	A=0; B=1; #10
	A=1; B=0; #10
	A=1; B=1; 
	 
	end
	initial
	$monitor("%d A=%b B=%b O=%b", $time, A, B, Output);
endmodule

module equation(z, x1, x2, x3, x4, x5);
	input x1, x2, x3, x4, x5;
	output z;
	wire y1, y2;
	assign y1 = x1 & x2;
	assign y2 = x3 & x4 & x5;
	assign z = ~(y1 | y2); 
endmodule

module equationTB();
	wire z; reg x1, x2, x3, x4, x5;
	equation orr(z, x1, x2, x3, x4, x5);
	initial begin
	x1=0; x2=1; x3=0; x4=1; x5=0; #10
	x1=1; x2=0; x3=1; x4=0; x5=1; #10
	x1=1; x2=1; x3=0; x4=1; x5=1; #10
	x1=0; x2=1; x3=1; x4=1; x5=1; #10
	x1=1; x2=1; x3=0; x4=1; x5=0; 
		 
	end
	initial
	$monitor("%d x1=%b x2=%b x3=%b x4=%b x5=%b z=%b", $time, x1, x2, x3, x4, x5, z);
endmodule
