module rca4_DataFlow_TB();
reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire C;
rippleCarryAdderBe rca(S, C, A, B, Cin);
initial begin
A=4'b1010; B=4'b0011; Cin=0; #10
A=4'b1010; B=4'b1101; Cin=0; #10
A=4'b1111; B=4'b1010; Cin=0;#10
A=4'b1010; B=4'b0101; Cin=0; #10
A=4'b1100; B=4'b0101; Cin=0; #10
A=4'b0110; B=4'b1010; Cin=0; #10
A=4'b1110; B=4'b0111; Cin=0; #10
A=4'b1100; B=4'b1101; Cin=0; #10
A=4'b1110; B=4'b1010; Cin=0;
end
initial
$monitor("%d  A=%b  B=%b  Cin=%b  S=%b  Cout=%b", $time, A, B, Cin, S, C);
endmodule
