module full_adder(A, B, C, sum, carry);	//Full adder has three inputs and two outputs
input A, B, C;		//Taking A, B, C as inputs
output sum, carry;		//Taking sum and carry as output
half_adder h1(A, B, c1, s1);	//Full adder can be implemented from two half_adder
half_adder h2(C, s1, c2, sum);
or h3(carry, c1, c2);
endmodule
 
