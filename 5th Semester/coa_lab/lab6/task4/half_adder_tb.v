module stm_adder();
reg A,B;
wire C, SUM;
half_adder add(A,B,C,SUM);
initial 
begin
$display("A, B, C, SUM");
A=0;
B=0;
#10
$display("%b %b %b %b", A,B,C,SUM);
A=0;
B=1;
#10
$display("%b %b %b %b", A,B,C,SUM);
A=1;
B=0;
#10
$display("%b %b %b %b", A,B,C,SUM);
A=1;
B=1;
#10
$display("%b %b %b %b", A,B,C,SUM);
end
endmodule
