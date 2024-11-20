module FA_tb();	//Testing the full_aader code 
reg A, B, C;
wire carry, sum;
full_adder add(A, B, C, sum, carry);	//Using the module full_adder
initial 
begin
$display("A, B, C, sum, carry");	//Displaying the results for inptuts and outptus
A=0;
B=0;
C=0;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);

A=0;
B=0;
C=1;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);
A=0;
B=1;
C=0;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);
A=0;
B=1;
C=1;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);

A=1;
B=0;
C=0;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);

A=1;
B=0;
C=1;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);

A=1;
B=1;
C=0;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);

A=1;
B=1;
C=1;
#10
$display("%b %b %b %b,%b", A,B,C,sum, carry);
end
endmodule
