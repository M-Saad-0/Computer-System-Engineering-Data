module CARRY (Cout, A, B, Cin);
 
	output Cout;
	input A, B, Cin;
	
	// Behavioral Code
	assign Cout = (A&B) | (B&Cin) | (A&Cin);
	
endmodulemodule CARRY (Cout, A, B, Cin);
 
	output Cout;
	input A, B, Cin;
	
	// Behavioral code
	assign Cout = (A&B) | (B&Cin) | (A&Cin);
	
endmodulemodule CARRY (C, A, B);
 
	output C;
	input A, B;
	
	and a1 (C, A, B);
	
endmodulemodule CARRY (C, A, B);
 
	output C;
	input A, B;
	
	and a1 (C, A, B);
	
endmodulemodule Carry (Cy, A, B);

	input A, B;
	output Cy;

	assign Cy = A&B;

endmodulemodule Carry (Cy, A, B);

	input A, B;
	output Cy;

	assign Cy = A&B;

endmodulemodule Carry (Cy, A, B);

	input A, B;
	output Cy;

	assign Cy = A&B;

endmodulemodule Carry (Cy, A, B);

	input A, B;
	output Cy;

	assign Cy = A&B;

endmodulemodule D_FF (q, d, clock, reset);

	output q;
	input d, clock, reset;
	
	reg q;

	always @(negedge clock or posedge reset)
	begin
		if (reset)
			q = 1'b0;
		else
			q = d;
	end
	
endmodulemodule D_FF (q, d, clock, reset);

	output q;
	input d, clock, reset;
	
	reg q;

	always @(negedge clock or posedge reset)
	begin
		if (reset)
			q = 1'b0;
		else
			q = d;
	end
	
endmodulemodule D_FF (q, d, clock, reset);

	output q;
	input d, clock, reset;
	
	reg q;

	always @(negedge clock or posedge reset)
	begin
		if (reset)
			q = 1'b0;
		else
			q = d;
	end
	
endmodulemodule Dec_24 (A, B, OUT);

	input A, B;
	output [3:0] OUT;
	
	assign OUT[0] = ~A & ~B;
	assign OUT[1] = ~A & B;
	assign OUT[2] = A & ~B;
	assign OUT[3] = A & B;
	
endmodulemodule FA (Sum, Cout, A, B, Cin);
 
	output Sum, Cout;
	input A, B, Cin;

	wire c1, c2, s1;	
	// Structural code
	HA2 ha1 (.Su(s1), .Ca(c1), .A(A), .B(B));
	HA2 ha2 (.Su(Sum), .Ca(c2), .A(s1), .B(Cin));		
	or o1 (Cout, c1, c2);
	
endmodule


module rippleAdder(Sum10, Cout_, A10, B10, Cin_ );
	input [9:0]A10, B10;
	input Cin_;
	output [9:0]Sum10;
	output Cout_;
	wire [8:0]c;
	FA fa1(Sum10[0], c[0], A10[0], B10[0], Cin_);
	FA fa2(Sum10[1], c[1], A10[1], B10[1], c[0]);
	FA fa3(Sum10[2], c[2], A10[2], B10[2], c[1]);
	FA fa4(Sum10[3], c[3], A10[3], B10[3], c[2]);
	FA fa5(Sum10[4], c[4], A10[4], B10[4], c[3]);
	FA fa6(Sum10[5], c[5], A10[5], B10[5], c[4]);
	FA fa7(Sum10[6], c[6], A10[6], B10[6], c[5]);
	FA fa8(Sum10[7], c[7], A10[7], B10[7], c[6]);
	FA fa9(Sum10[8], c[8], A10[8], B10[8], c[7]);
	FA fa10(Sum10[9], c[9], A10[9], B10[9], c[8]);
endmodulemodule FA (S, Cout, a, b, cin);

	input a, b, cin;
	output S, Cout;
	
	wire s0, c0, c1;

	HA ha1 (s0, c0, a, b);
	HA ha2 (S, c1, s0, cin);
	or o1 (Cout, c0, c1);

endmodulemodule FA (S, Cout, a, b, cin);

	input a, b, cin;
	output S, Cout;
	
	wire s0, c0, c1;

	HA ha1 (s0, c0, a, b);
	HA ha2 (S, c1, s0, cin);
	or o1 (Cout, c0, c1);

endmodulemodule FA (S, Cout, a, b, cin);

	input a, b, cin;
	output S, Cout;
	
	wire s0, c0, c1;

	HA ha1 (s0, c0, a, b);
	HA ha2 (S, c1, s0, cin);
	or o1 (Cout, c0, c1);

endmodulemodule FA1 (Sum, Cout, A, B, Cin);
 
	output Sum, Cout;
	input A, B, Cin;
		
	// Structural Code
	SUM s1 (.S(Sum), .A(A), .B(B), .Cin(Cin));
	CARRY c1 (.Cout(Cout), .A(A), .B(B), .Cin(Cin));
	
endmodulemodule FA1 (Sum, Cout, A, B, Cin);
 
	output Sum, Cout;
	input A, B, Cin;
		
	// Structural code
	SUM s1 (.S(Sum), .A(A), .B(B), .Cin(Cin));
	CARRY c1 (.Cout(Cout), .A(A), .B(B), .Cin(Cin));
	
endmodule

module HA (Su, Co, a, b);

	input a, b;
	output Su, Co;

	Sum s1 (Su, a, b);
	Carry c1 (Co, a, b);

endmodulemodule HA (Su, Co, a, b);

	input a, b;
	output Su, Co;

	Sum s1 (Su, a, b);
	Carry c1 (Co, a, b);

endmodulemodule HA (Su, Co, a, b);

	input a, b;
	output Su, Co;

	Sum s1 (Su, a, b);
	Carry c1 (Co, a, b);

endmodulemodule HA (Su, Co, a, b);

	input a, b;
	output Su, Co;

	Sum s1 (Su, a, b);
	Carry c1 (Co, a, b);

endmodulemodule HA (a, b, s, c);
 
	input a,b;
	output s,c;
	
	// Gate level code
	xor x1 (s, a, b);
	and a1 (c, a, b);
	
endmodulemodule HA1 (a, b, s, c);
 
	input a,b;
	output s,c;
	
	// Behavioral code
	assign {c, s} = a + b;
	
endmodule

module HA2 (Su, Ca, A, B);
 
	output Su, Ca;
	input A, B;
		
	// Structural code
	SUM s1 (Su, A, B); // Connection by position
	CARRY c1 (.A(A), .B(B), .C(Ca)); // Connection by reference
	
endmodulemodule HA2 (Su, Ca, A, B);
 
	output Su, Ca;
	input A, B;
		
	// Structural code
	SUM s1 (Su, A, B); // Connection by position
	CARRY c1 (.A(A), .B(B), .C(Ca)); // Connection by reference
	
endmodulemodule Johnson_Counter (CLK, CLR, COUNT);

	input CLK, CLR;
	output [3:0] COUNT;
	
	reg [3:0] COUNT;
		
	always @(posedge CLK)
		if (~CLR)
			COUNT = 4'd0;
		else
			case (COUNT)
				4'd0: COUNT = 4'd8;
				4'd8: COUNT = 4'd12;
				4'd12: COUNT = 4'd14;
				4'd14: COUNT = 4'd15;
				4'd15: COUNT = 4'd7;
				4'd7: COUNT = 4'd3;
				4'd3: COUNT = 4'd1;
				4'd1: COUNT = 4'd0;
				default: COUNT = 4'd0;
			endcase

endmodulemodule Johnson_Counter (CLK, CLR, COUNT);

	input CLK, CLR;
	output [3:0] COUNT;
	
	parameter [3:0] S0 = 4'b0000, S1 = 4'b1000, S2 = 4'b1100, S3 = 4'b1110,
	                S4 = 4'b1111, S5 = 4'b0111, S6 = 4'b0011, S7 = 4'b0001;
	
	reg [3:0] COUNT;
	
	always @(posedge CLK)
		if (~CLR)
			COUNT = S0;
		else
			case (COUNT)
				S0: COUNT = S1;
				S1: COUNT = S2;
				S2: COUNT = S3;
				S3: COUNT = S4;
				S4: COUNT = S5;
				S5: COUNT = S6;
				S6: COUNT = S7;
				S7: COUNT = S0;
				default: COUNT = S0;
			endcase
			
endmodulemodule RCA (Cout, S, A, B);

	output Cout;
	output [3:0] S;
	input [3:0] A, B;
	
	wire [2:0] C;   //Intermediate/Internal Carries

	// FA1 (Sum, Cout, A, B, Cin);   //FA1's Interface (I/O Pins)

	FA1 fa0 (S[0], C[0], A[0], B[0], 1'b0);
	FA1 fa1 (S[1], C[1], A[1], B[1], C[0]);
	FA1 fa2 (S[2], C[2], A[2], B[2], C[1]);
	FA1 fa3 (S[3], Cout, A[3], B[3], C[2]);

endmodulemodule RCA3 (S, Cout, A, B, Cin);

	input [2:0] A, B;
	input Cin;
	output [2:0] S;
	output Cout;

	wire c0, c1;

	FA fa1 (S[0], c0, A[0], B[0], Cin);
	FA fa2 (S[1], c1, A[1], B[1], c0);
	FA fa3 (S[2], Cout, A[2], B[2], c1);

endmodulemodule RCA3 (S, Cout, A, B, Cin);

	input [2:0] A, B;
	input Cin;
	output [2:0] S;
	output Cout;

	wire c0, c1;

	FA fa1 (S[0], c0, A[0], B[0], Cin);
	FA fa2 (S[1], c1, A[1], B[1], c0);
	FA fa3 (S[2], Cout, A[2], B[2], c1);

endmodulemodule RCA6 (S, Cout, A, B, Cin);

	input [5:0] A, B;
	input Cin;
	output [5:0] S;
	output Cout;

	wire c0;

	RCA a1 (S[2:0], c0, A[2:0], B[2:0], Cin);
	RCA a2 (S[5:3], Cout, A[5:3], B[5:3], c0);

endmodulemodule ROM1_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if  (read_en & cs)
			case (addrb)
				0: datab = 8'h21;
				1: datab = 8'hab;
				2: datab = 8'h33;
				3: datab = 8'h99;
				4: datab = 8'ha3;
				5: datab = 8'hff;
				6: datab = 8'hcd;
				7: datab = 8'h88;
			endcase
		else
			datab = 8'bz;

endmodulemodule ROM1_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if  (read_en & cs)
			case (addrb)
				0: datab = 21;
				1: datab = 255;
				2: datab = 33;
				3: datab = 99;
				4: datab = 127;
				5: datab = 13;
				6: datab = 10;
				7: datab = 88;
			endcase
		else
			datab = 8'b0;

endmodulemodule ROM1_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if  (read_en & cs)
			case (addrb)
				0: datab = 21;
				1: datab = 255;
				2: datab = 33;
				3: datab = 99;
				4: datab = 127;
				5: datab = 13;
				6: datab = 10;
				7: datab = 88;
			endcase
		else
			datab = 8'b0;

endmodulemodule ROM2_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if (read_en & cs)
			case (addrb)
				0: datab = 8'h2e;
				1: datab = 8'h38;
				2: datab = 8'h4c;
				3: datab = 8'h58;
				4: datab = 8'h68;
				5: datab = 8'h7f;
				6: datab = 8'h88;
				7: datab = 8'h9a;
			endcase
		else
			datab = 8'bz;
		
endmodulemodule ROM2_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if (read_en & cs)
			case (addrb)
				0: datab = 28;
				1: datab = 38;
				2: datab = 48;
				3: datab = 58;
				4: datab = 68;
				5: datab = 78;
				6: datab = 88;
				7: datab = 98;
			endcase
		else
			datab = 8'b0;
		
endmodulemodule ROM2_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if (read_en & cs)
			case (addrb)
				0: datab = 28;
				1: datab = 38;
				2: datab = 48;
				3: datab = 58;
				4: datab = 68;
				5: datab = 78;
				6: datab = 88;
				7: datab = 98;
			endcase
		else
			datab = 8'b0;
		
endmodulemodule ROM3_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if (read_en & cs)
			case (addrb)
				0: datab = 128;
				1: datab = 138;
				2: datab = 148;
				3: datab = 158;
				4: datab = 168;
				5: datab = 178;
				6: datab = 188;
				7: datab = 198;
			endcase
		else
			datab = 8'b0;

endmodulemodule ROM_16x8 (cs, addrb, datab, read_en);

	input [3:0] addrb;
	output [7:0] datab;
	input cs, read_en;
	
	wire [7:0] datab1, datab2;
	wire [1:0] OUT;
	
	assign OUT[0] = ~addrb[3];
	assign OUT[1] = addrb[3];
	
	ROM1_8x8 rc1 (OUT[0], addrb[2:0], datab1, read_en);
	ROM2_8x8 rc2 (OUT[1], addrb[2:0], datab2, read_en);
	
	assign datab = (cs && read_en)?datab1 | datab2:8'bz;
	
endmodulemodule ROM_24x8 (cs, addrb, datab, read_en);

	input [4:0] addrb;
	output [7:0] datab;
	input cs, read_en;
	
	wire [7:0] datab1, datab2, datab3;
	wire [3:0] OUT;
	
	Dec_24 d1 (addrb[4], addrb[3], OUT);
	
	ROM1_8x8 rc1 (OUT[0], addrb[2:0], datab1, read_en);
	ROM2_8x8 rc2 (OUT[1], addrb[2:0], datab2, read_en);
	ROM3_8x8 rc3 (OUT[2], addrb[2:0], datab3, read_en);
	
	assign datab = (cs && read_en)?datab1 | datab2 | datab3:8'bz;
	
endmodulemodule ROM_8x16 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [15:0] datab;
	input cs, read_en;
	
	wire [7:0] datab1, datab2;
	
	ROM1_8x8 rc1 (cs, addrb, datab1, read_en);
	ROM2_8x8 rc2 (cs, addrb, datab2, read_en);
	
	assign datab = (cs && read_en)?{datab2, datab1}:16'bz;
	
endmodulemodule SUM (S, A, B, Cin);
 
	output S;
	input A, B, Cin;
	
	// Behavioral Code
	assign S = A^B^Cin;
	
endmodulemodule SUM (S, A, B, Cin);
 
	output S;
	input A, B, Cin;
	
	// Behavioral code
	assign S = A^B^Cin;
	
endmodulemodule SUM (S, A, B);
 
	output S;
	input A, B;
	
	xor x1 (S, A, B);
	
endmodulemodule SUM (S, A, B);
 
	output S;
	input A, B;
	
	xor x1 (S, A, B);
	
endmodulemodule Sum (S, A, B);

	input A, B;
	output S;

	xor x1 (S, A, B);

endmodulemodule Sum (S, A, B);

	input A, B;
	output S;

	xor x1 (S, A, B);

endmodulemodule Sum (S, A, B);

	input A, B;
	output S;

	xor x1 (S, A, B);

endmodulemodule Sum (S, A, B);

	input A, B;
	output S;

	xor x1 (S, A, B);

endmodulemodule T_FF (q, T, clock, reset);

	output q;
	input T, clock, reset;
	wire d;
	
	
	xor n1 (d, T, q); 
	// xor is a Verilog-provided primitive. Case sensitive.
		
	D_FF d0 (q, d, clock, reset);
	
endmodulemodule T_FF (q, T, clock, reset);

	output q;
	input T, clock, reset;
	wire d;
	
	
	xor n1 (d, T, q); 
	// xor is a Verilog-provided primitive. Case sensitive.
		
	D_FF d0 (q, d, clock, reset);
	
endmodulemodule T_FF (q, clock, reset);

	output q;
	input clock, reset;
	wire d;
	
	
	not n1 (d, q); 
	// not is a Verilog-provided primitive. Case sensitive.
		
	D_FF d0 (q, d, clock, reset);
	
endmodulemodule Top;
	
	wire [0:15] y;
	wire A, B, C, D, En;
	
	dec4x16 d (y, A, B, C, D, En);
	test_dec4x16 t (y, A, B, C, D, En);

endmodulemodule Top;

	wire [5:0] S, A, B;
	wire Cin, Cout;

	RCA6 a1 (S, Cout, A, B, Cin);
	test_RCA6 t1 (S, Cout, A, B, Cin);
	
endmodulemodule Top;

	wire [2:0] S, A, B;
	wire Cin, Cout;

	RCA3 a1 (S, Cout, A, B, Cin);
	test_RCA3 t1 (S, Cout, A, B, Cin);
	
endmodulemodule Top;

	wire S, Co, A, B, Ci;
	FA fa1 (S, Co, A, B, Ci);
	test_FA t1 (S, Co, A, B, Ci);

endmodulemodule Top;

	wire S, C, A, B;
	HA ha1 (S, C, A, B);
	test_HA t1 (S, C, A, B);

endmodulemodule counter_dn (count, clk, rst);

	output [3:0] count;
	input clk, rst;
	
	reg [3:0] count;

	always @(posedge clk or rst) 
	begin
		if (rst)
			count = 4'b0000;
		else
			count = count - 1;	

	end

endmodulemodule counter_up (count, clk, rst);

	output [3:0] count;
	input clk, rst;
	
	reg [3:0] count;

	always @(negedge clk) 
	begin
		if (~rst)
			count = 4'b0000;
		else
			count = count + 1;	

	end

endmodulemodule dec2x4 (D, A, B, En);

	input A, B, En;
	output [0:3] D;
	
	reg [0:3] D;
	
	always @(A, B, En)
	if (En)
		case ({A, B})
			0: D = 4'b1000;
			1: D = 4'b0100;
			2: D = 4'b0010;
			3: D = 4'b0001;
			default: D = 4'b0000;
		endcase
	else D = 4'b0000;

endmodulemodule dec4x16 (y, A, B, C, D, En);

	input A, B, C, D, En;
	output [0:15] y;
	
	wire [0:3] w;
	
	dec2x4 d1 (w[0:3], A, B, En);
	dec2x4 d2 (y[0:3], C, D, w[0]);
	dec2x4 d3 (y[4:7], C, D, w[1]);
	dec2x4 d4 (y[8:11], C, D, w[2]);
	dec2x4 d5 (y[12:15], C, D, w[3]);

endmodulemodule mux21 (OUT, I, Sel);
	
	output OUT;
	input [1:0] I;
	input Sel;
	
	reg OUT;

	always @(I, Sel)		
		case (Sel)
			1'b0: OUT = I[0];
			1'b1: OUT = I[1];
		endcase

endmodulemodule mux21 (OUT, I, Sel);
	
	output OUT;
	input [1:0] I;
	input Sel;
	
	reg OUT;

	always @(I, Sel)		
		case (Sel)
			1'b0: OUT = I[0];
			1'b1: OUT = I[1];
		endcase

endmodulemodule mux2to1 (Out, I0, I1, Sel);
	
	input I0, I1, Sel;
	output Out;
	
	reg Out;

	always @(*)
	if (~Sel)
		Out = I0;
	else
		Out = I1;
		
endmodulemodule mux41 (OUT, I, Sel);
	
	output OUT;
	input [3:0] I;
	input [1:0] Sel;
	
	wire [1:0] mux;

	mux21 m0 (mux[0], {I[1], I[0]}, Sel[0]);
	mux21 m1 (mux[1], {I[3], I[2]}, Sel[0]);
	mux21 m2 (OUT, {mux[1], mux[0]}, Sel[1]);	

endmodulemodule mux41 (OUT, I, Sel);
	
	output OUT;
	input [3:0] I;
	input [1:0] Sel;
	
	reg OUT;

	always @ (I, Sel) 
		case (Sel)
			2'd0: OUT = I[0];
			2'd1: OUT = I[1];
			2'd2: OUT = I[2];
			2'd3: OUT = I[3];
		endcase

endmodulemodule mux4to1 (Out, I, S);
	
	input [0:3] I;
	input [1:0] S;
	output Out;
	
	wire O1, O2;

	mux2to1 m1 (O1, I[0], I[1], S[0]);
	mux2to1 m2 (O2, I[2], I[3], S[0]);
	mux2to1 m3 (Out, O1, O2, S[1]);
		
endmodulemodule rc (clk, init, count);

	input clk, init;
	output [7:0] count;
	
	reg [7:0] count;

	always @(posedge clk)
		if (init)
			count = 8'b00000001;
		else 
		begin
			count <= count >> 1; 
			count[7] <= count[0];
		end
		
endmodulemodule rc (clk, init, count);

	input clk, init;
	output [7:0] count;
	
	reg [7:0] count;

	always @(init or posedge clk)
	begin
		if (init)
			count = 8'b10000000;
		else 
		begin
			count = {count[6:0], count[7]}; 
		end
	end
	
endmodulemodule rc (clk, init, count);

	input clk, init;
	output [7:0] count;
	
	reg [7:0] count;

	always @(init or posedge clk)
	begin
		if (init)
			count = 8'b10000000;
		else 
		begin
			count = {count[6:0], count[7]}; 
		end
	end
	
endmodulemodule ripple_counter (q, T, clock, reset);

	output [3:0] q; 
	input T, clock, reset;

	T_FF tff0 (q[0], T, clock, reset);
	T_FF tff1 (q[1], T, ~q[0], reset);
	T_FF tff2 (q[2], T, ~q[1], reset);
	T_FF tff3 (q[3], T, ~q[2], reset);
	
endmodulemodule ripple_counter (q, T, clock, reset);

	output [3:0] q; 
	input T, clock, reset;

	T_FF tff0 (q[0], T, clock, reset);
	T_FF tff1 (q[1], T, q[0], reset);
	T_FF tff2 (q[2], T, q[1], reset);
	T_FF tff3 (q[3], T, q[2], reset);
	
endmodulemodule ripple_counter (q, clock, reset);

	output [3:0] q; 
	input clock, reset;

	T_FF tff0 (q[0], clock, reset);
	T_FF tff1 (q[1], q[0], reset);
	T_FF tff2 (q[2], q[1], reset);
	T_FF tff3 (q[3], q[2], reset);
	
endmodulemodule stimulus (count, clk, rst);

	input [3:0] count;
	output clk, rst;
	
	reg clk, rst;
	
	always
		#5 clk = ~clk; //toggle clk every 5 time units

	initial
	begin
		clk = 1'b0; //at t = 0, set clk to 0
		rst = 1'b1; //at t = 0, set rst to 1 to clear the counter
		#20 rst = 1'b0;	//at t = 20, set rst to 0 to run the counter
		#128 rst = 1'b1; //at t = 148, set rst to 1 to clear the counter
		#40 rst = 1'b0;	//at t = 188, set rst to 0 to restart the counter		
	end

	// monitor the outputs
	initial
		$monitor($time, ", rst = %b, count = %d", rst, count);

endmodulemodule stimulus (count, clk, rst);

	input [3:0] count;
	output clk, rst;
	
	reg clk, rst;
	
	always
		#5 clk = ~clk; //toggle clk every 5 time units

	initial
	begin
		clk = 1'b0; //at t = 0, set clk to 0
		rst = 1'b0; //at t = 0, set rst to 0 to clear the counter
		#20 rst = 1'b1;	//at t = 20, set rst to 1 to run the counter
		#125 rst = 1'b0; //at t = 145, set rst to 0 to clear the counter
		#35 rst = 1'b1;	//at t = 180, set rst to 1 to restart the counter		
	end

	// monitor the outputs
	initial
		$monitor($time, ", rst = %b, count = %d", rst, count);

endmodulemodule stimulus (q, T, clock, reset);

	input [3:0] q;
	output T, clock, reset;
	
	reg T, clock, reset;
	
	always
		#5 clock = ~clock; //toggle clock every 5 time units

	initial
	begin
		clock = 1'b0; //set clock to 0		
		T = 1'b0; //T = 0 pauses the counter
		reset = 1'b1; //high reset clears the counter
		#15 reset = 1'b0; //low reset causes the counter to count
		#15 T = 1'b1; //T = 1 causes the counter to count
		#60 T = 1'b0; //T = 0 pauses the counter
		#30 T = 1'b1; //T = 1 resumes the counter
		#500 $finish; //terminate the simulation
	end

	// monitor the outputs
	initial
		$monitor($time, ", T = %b, reset = %b, Output q = %d", T, reset, q);

endmodulemodule stimulus (q, T, clock, reset);

	input [3:0] q;
	output T, clock, reset;
	
	reg T, clock, reset;
	
	always
		#5 clock = ~clock; //toggle clock every 5 time units

	initial
	begin
		clock = 1'b0; //set clock to 0		
		T = 1'b0; //T = 0 pauses the counter
		reset = 1'b1; //high reset clears the counter
		#15 reset = 1'b0; //low reset causes the counter to count
		#15 T = 1'b1; //T = 1 causes the counter to count
		#60 T = 1'b0; //T = 0 pauses the counter
		#30 T = 1'b1; //T = 1 resumes the counter
		#500 $finish; //terminate the simulation
	end

	// monitor the outputs
	initial
		$monitor($time, ", T = %b, reset = %b, Output q = %d", T, reset, q);

endmodulemodule stimulus (q, clock, reset);

	input [3:0] q;
	output clock, reset;
	
	reg clock, reset;
	
	always
		#5 clock = ~clock; //toggle clock every 5 time units

	initial
	begin
		clock = 1'b0; //set clk to 0		
		reset = 1'b1; //high reset clears the counter
		#15 reset = 1'b0; //low reset causes the counter to count
		#500 $finish; //terminate the simulation
	end

	// monitor the outputs
	initial
		$monitor($time, ", reset = %b, Output q = %d", reset, q);

endmodulemodule test_FA(Sum, Cout, A, B, Cin);

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
	
endmodulemodule test_FA; //test bench to test FA (Full Adder)

	// Inputs are regs here
	reg A, B, Cin;
		
	// Outputs are wires here
	wire S, Cout;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// FA dut (Sum, Cout, A, B, Cin);  // Positional association
	FA dut (.A(A), .B(B), .Cin(Cin), .Sum(S), .Cout(Cout));  // Explicit association

	initial begin
		// Initialize Inputs		
		A = 0; B = 0; Cin = 0;
		#10	
		Cin = 1;
		#10
		B = 1; 
		#10
		A = 1;
		#10
		A = 0;
		#10
		Cin = 0;		
	end
	
	initial begin
		$monitor("A=%b,B=%b,Cin=%b--->Sum=%b,Cout=%b  \n",A,B,Cin,S,Cout);		
	end
	      
endmodulemodule test_FA1; //test bench to test FA1 (Full Adder)

	// Inputs are regs here
	reg A, B, Cin;
		
	// Outputs are wires here
	wire S, Cout;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// FA1 dut (Sum, Cout, A, B, Cin);  // Positional association
	FA1 dut (.A(A), .B(B), .Cin(Cin), .Sum(S), .Cout(Cout));  // Explicit association

	initial begin
		// Initialize Inputs		
		A = 0; B = 0; Cin = 0;
		#10	
		Cin = 1;
		#10
		B = 1; 
		#10
		A = 1;
		#10
		A = 0;
		#10
		Cin = 0;		
	end
	
	initial begin
		$monitor("A=%b,B=%b,Cin=%b--->Sum=%b,Cout=%b  \n",A,B,Cin,S,Cout);		
	end
	      
endmodulemodule test_HA (S, Carr, A, B);
	
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

endmodulemodule test_HA; //test bench to test HA (Half Adder)

	// Inputs are regs here
	reg A, B;
		
	// Outputs are wires here
	wire Sum, Carry;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// HA dut (A, B, Sum, Carry);  // Positional association
	HA dut (.a(A), .b(B), .s(Sum), .c(Carry));  // Explicit association

	initial begin
		// Initialize Inputs		
		A = 0;
		B = 0;
		#10	
		B = 1;
		#10
		A = 1;
		#10
		B = 0;		
	end
	      
endmodulemodule test_HA1; //test bench to test HA1 (Half Adder)

	// Inputs are regs here
	reg A, B;
		
	// Outputs are wires here
	wire Sum, Carry;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// HA1 dut (A, B, Sum, Carry);  // Positional association
	HA1 dut (.s(Sum), .c(Carry), .a(A), .b(B));  // Explicit association

	initial begin
		// Initialize Inputs		
		A = 0;
		B = 0;
		#10	
		B = 1;
		#10
		A = 1;
		#10
		B = 0;		
	end
	      
endmodulemodule test_HA2; //test bench to test HA2 (Half Adder)

	// Inputs are regs here
	reg A, B;
		
	// Outputs are wires here
	wire Sum, Carry;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// HA2 dut (Sum, Carry, A, B);  // Positional association
	HA2 dut (.A(A), .B(B), .Su(Sum), .Ca(Carry));  // Explicit association

	initial begin
		// Initialize Inputs		
		A = 0;
		B = 0;
		#10	
		B = 1;
		#10
		A = 1;
		#10
		B = 0;		
	end
	      
endmodule
module test_Johnson (CLK, CLR, COUNT);

	output CLK, CLR;
	output [3:0] COUNT;
	
	reg CLK;
	reg CLR;
	

	always
		#5 CLK = ~CLK; //toggle clk every 5 time units

	initial
	begin
		CLK = 1'b0; //set clk to 0		
		CLR = 1'b0;
		#12
		CLR = 1'b1;
		#200 $finish; //terminate the simulation
	end

	initial
		$monitor($time, ": CLR = %b, COUNT = %b", CLR, COUNT);

endmodulemodule test_Johnson (CLK, CLR, COUNT);

	output CLK, CLR;
	output [3:0] COUNT;
	
	reg CLK;
	reg CLR;
	

	always
		#5 CLK = ~CLK; //toggle clk every 5 time units

	initial
	begin
		CLK = 1'b0; //set clk to 0		
		CLR = 1'b0;
		#12
		CLR = 1'b1;
		#200 $finish; //terminate the simulation
	end

	initial
		$monitor($time, ": CLR = %b, COUNT = %b", CLR, COUNT);

endmodulemodule test_RCA (Co, Su, A, B);

	input Co;
	input [3:0] Su;

	output [3:0] A, B;
	reg [3:0] A, B;
	

	initial begin
		A = 4'b0000;
		B = 4'b1111;
		#15
		A = 4'b1111;
		B = 4'b1111;
		#15
		A = 4'b1010;
		B = 4'b1111;		
	end
	
	initial
		$monitor ("%d, A=%b, B=%b, S=%b, Cout=%b", $time, A, B, Su, Co);

endmodulemodule test_RCA3 (S, Cout, A, B, Cin);

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

endmodulemodule test_RCA6 (S, Cout, A, B, Cin);

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

endmodulemodule test_dec4x16 (y, A, B, C, D, En);

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
	
endmodulemodule test_mux21 (OUT, I, Sel);

	input OUT;
	output [1:0] I;
	output Sel;
	
	reg [1:0] I;
	reg Sel;
	
	initial begin
	
		I[0]=0;
		I[1]=1;
		Sel=1;
		
		#20
		I[0]=0;
		I[1]=1;
		Sel=0;
		
		#30
		I[0]=1;
		I[1]=0;
		Sel=0;
		
	end
	
	initial
		$monitor("%d, I1=%b, I0=%b, Sel=%b, OUT=%b", $time, I[1], I[0], Sel, OUT);

endmodulemodule test_mux41 (OUT, I, Sel);
	
	input OUT;
	output [3:0] I;
	output [1:0] Sel;
	
	reg [3:0] I;
	reg [1:0] Sel;

	initial begin
		I = 4'b0001;
		Sel = 2'b00;
		
		#10
		I = 4'b0100;
		Sel = 2'b10;
		
		#50
		I = 4'b0100;
		Sel = 2'b11;
		
		#10
		I = 4'b1100;
		Sel = 2'b11;
	end
	
	initial
		$monitor ("%d, I3=%b, I2=%b, I1=%b, I0=%b, Sel=%b, OUT=%b", $time, I[3], I[2], I[1], I[0], Sel, OUT);

endmodulemodule test_mux41 (OUT, I, Sel);
	
	input OUT;
	output [3:0] I;
	output [1:0] Sel;
	
	reg [3:0] I;
	reg [1:0] Sel;

	initial begin
		I = 4'b0001;
		Sel = 2'b00;
		
		#10
		I = 4'b0100;
		Sel = 2'b10;
		
		#50
		I = 4'b0100;
		Sel = 2'b11;
	end
	
	initial
		$monitor ("%d, I3=%b, I2=%b, I1=%b, I0=%b, Sel=%b, OUT=%b", $time, I[3], I[2], I[1], I[0], Sel, OUT);

endmodulemodule test_mux4to1; 

	// Inputs are regs here
	reg [0:3] I;
	reg [1:0] Sel;
		
	// Outputs are wires here
	wire Out;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	mux4to1 m1 (Out, I, Sel);
	

	initial begin
	I=4'b0000; Sel=2'b00;
	#5 I=4'b1000; Sel=2'b00;
	#5 I=4'b1001; Sel=2'b11;
	#5 I=4'b1000; Sel=2'b11;
	#5 I=4'b1000; Sel=2'b10;
	#5 I=4'b1010; Sel=2'b10;
	#5 I=4'b1011; Sel=2'b01;
	end
	
	initial
	$monitor("I[I0,I1,I2,I3]=%b,Sel=%b--->Out=%b",I, Sel, Out);		
		      
endmodulemodule test_rc (clk, init, count);

	output clk, init;
	input [7:0] count;
	
	reg clk, init;

	always
	#5 clk = ~clk; //toggle clk every 5 time units

	initial
	begin
	clk = 1'b0; //set clk to 0		
	init = 1'b1;
	#20 init = 1'b0;		
	end

	initial
	$monitor("%d: init = %b, count = %b",$time, init, count);

endmodule
module test_Johnson (CLK, CLR, COUNT);

	output CLK, CLR;
	output [3:0] COUNT;
	
	reg CLK;
	reg CLR;
	

	always
		#5 CLK = ~CLK; //toggle clk every 5 time units

	initial
	begin
		CLK = 1'b0; //set clk to 0		
		CLR = 1'b0;
		#12
		CLR = 1'b1;
		#200 $finish; //terminate the simulation
	end

	initial
		$monitor($time, ": CLR = %b, COUNT = %b", CLR, COUNT);

endmodulemodule test_rc (clock, reset, out);

	output clock, reset;
	output [7:0] out;
	
	reg clock;
	reg reset;
	

	always
		#5 clock = ~clock; //toggle clk every 5 time units

	initial
	begin
		clock = 1'b0; //set clk to 0		
		reset = 1'b1;
		#12
		reset = 1'b0;
		#200 $finish; //terminate the simulation
	end

	initial
		$monitor($time, ": Output = %b", out);

endmodulemodule top;

	wire [3:0] q;
	wire T, clock, reset;
	
	ripple_counter rc (q, T, clock, reset);
	stimulus tb (q, T, clock, reset);

endmodule module top;

	wire [3:0] q;
	wire T, clock, reset;
	
	ripple_counter rc (q, T, clock, reset);
	stimulus tb (q, T, clock, reset);

endmodule module top;

	wire [3:0] q;
	wire clock, reset;
	
	ripple_counter rc (q, clock, reset);
	stimulus tb (q, clock, reset);

endmodule module top;

	wire [3:0] Su, A, B;
	wire Co;
	
	RCA rca (Co, Su, A, B);
	test_RCA trca (Co, Su, A, B);
	
endmodulemodule top_Johnson;

	wire CLK, CLR;
	wire [3:0] COUNT;

	Johnson_Counter jc (CLK, CLR, COUNT);
	test_Johnson  t_jc (CLK, CLR, COUNT);

endmodulemodule top_Johnson;

	wire CLK, CLR;
	wire [3:0] COUNT;

	Johnson_Counter jc (CLK, CLR, COUNT);
	test_Johnson  t_jc (CLK, CLR, COUNT);

endmodulemodule top_counter;

	wire [3:0] count;
	wire clk, rst;
	
	counter_dn cnt (count, clk, rst);
	stimulus tb (count, clk, rst);

endmodule module top_counter;

	wire [3:0] count;
	wire clk, rst;
	
	counter_up cnt (count, clk, rst);
	stimulus tb (count, clk, rst);

endmodule module top_l;

	wire OUT;
	wire [3:0] I;
	wire [1:0] Sel;
	
	mux41 m1 (OUT, I, Sel);
	test_mux41 t1 (OUT, I, Sel);
	
endmodulemodule top_l;

	wire OUT;
	wire [3:0] I;
	wire [1:0] Sel;
	
	mux41 m1 (OUT, I, Sel);
	test_mux41 t1 (OUT, I, Sel);
	
endmodulemodule top_level;
	
	wire OUT;
	wire [1:0] I;
	wire Sel;

	mux21 m21 (OUT, I, Sel);
	test_mux21 tm21 (OUT, I, Sel);

endmodulemodule top_rc;

	wire clk, init;
	wire [7:0] count;

	rc r0 (clk, init, count);
	test_rc t0 (clk, init, count);

endmodule
module top_rc;

	wire clk, init;
	wire [7:0] count;

	rc rc0 (clk, init, count);
	test_rc t_rc0 (clk, init, count);

endmodulemodule top_rc;

	wire clk, init;
	wire [7:0] count;

	rc rc0 (clk, init, count);
	test_rc t_rc0 (clk, init, count);

endmodulemodule tst_ROM_16x8;

	reg [3:0] addrb;
	wire [7:0] datab;
	reg cs, read_en;
	
	ROM_16x8 rom (cs, addrb, datab, read_en);
	
	initial begin
		#5 addrb =  0; 	//0 000
		#10 addrb = 7; 	//0 111
		#10 addrb = 8; 	//1 000
		#5 addrb = 15; 	//1 111
		#5 addrb = 14; 	//1 110
		#5 addrb = 11; 	//1 011
		#5 addrb = 12; 	//1 100
		#5 addrb = 9; 	 //1 001
	end
	
	initial begin
		cs = 1;
		read_en <= 1;		
	end

endmodule

module tst_ROM_24x8;

	reg [4:0] addrb;
	wire [7:0] datab;
	reg cs, read_en;
	
	ROM_24x8 rom (cs, addrb, datab, read_en);
	
	initial begin
		#5 addrb =  0; 	//00 000
		#10 addrb = 7; 	//00 111
		#10 addrb = 8; 	//01 000
		#5 addrb = 15; 	//01 111
		#5 addrb = 14; 	//01 110
		#5 addrb = 11; 	//01 011
		#5 addrb = 12; 	//01 100
		#5 addrb = 9; 	 //01 001
		#5 addrb = 16; 	//10 000
		#5 addrb = 23; 	//10 111
		#5 addrb = 20; 	//10 100
	end
	
	initial begin
		cs = 1;
		read_en <= 1;		
	end

endmodulemodule tst_ROM_8x16;

	reg [2:0] addrb;
	wire [15:0] datab;
	reg cs, read_en;
	
	ROM_8x16 rom (cs, addrb, datab, read_en);
	
	initial begin
		#5 addrb =  0; 
		#10 addrb = 7;
		#10 addrb = 5;
		#5 addrb = 4; 
		#5 addrb = 6;
		#5 addrb = 1; 
		#5 addrb = 2;
		#5 addrb = 3;
		
	end
	
	initial begin
		cs = 1;
		read_en <= 1;		
	end

endmodule