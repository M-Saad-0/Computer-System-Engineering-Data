module four_bit(a0, b0, a1, b1, a2, b2, a3, b3, cin, s0, s1, s2, s3, c3); //8 inputs and outputs and 1 Cin for carry and 1 Cout
input a0, b0, a1, b1, a2, b2, a3, b3, cin;
output s0, s1, s2, s3, c3;

full_adder g1(a0, b0, cin, s0, c0); 	//We can use four 1-bit full adders 
full_adder g2(a1, b1, c0, s1, c1);	//For implementing four bit adder
full_adder g3(a2, b2, c1, s2, c2);
full_adder g4(a3, b3, c2, s3, c3);

endmodule

