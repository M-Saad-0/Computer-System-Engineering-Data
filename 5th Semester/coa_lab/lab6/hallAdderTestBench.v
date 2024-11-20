module stim_Ha();
reg A, B;
wire S, C;
HalfAdder x(A, B, S, C);
initial
begin
$display("A, B, S, C");
A=0;
B=0;
#10;
$display("%b %b %b %b", A, B, S, C);
A=0;
B=1;
#10;
$display("%b %b %b %b", A, B, S, C);
A=1;
B=0;
#10;
$display("%b %b %b %b", A, B, S, C);
A=1;
B=1;
#10;
$display("%b %b %b %b", A, B, S, C);
end
endmodule;