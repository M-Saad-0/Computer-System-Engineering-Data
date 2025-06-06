module test_mux4x1;
reg [3:0] I;
reg [1:0] Sel;
wire Out;

mux4x1 dut(.I(I), .Sel(Sel), .Out(Out));

initial begin
    $monitor("I=%b Sel=%b Out=%b", I, Sel, Out);
    I = 4'b0000; Sel = 2'b00; #100;
    I = 4'b0001; Sel = 2'b00; #100;
    I = 4'b0010; Sel = 2'b00; #100;
    I = 4'b0011; Sel = 2'b00; #100;
    I = 4'b0100; Sel = 2'b01; #100;
    I = 4'b0101; Sel = 2'b01; #100;
    I = 4'b0110; Sel = 2'b01; #100;
    I = 4'b0111; Sel = 2'b01; #100;
    I = 4'b1000; Sel = 2'b10; #100;
    I = 4'b1001; Sel = 2'b10; #100;
    I = 4'b1010; Sel = 2'b10; #100;
    I = 4'b1011; Sel = 2'b10; #100;
    I = 4'b1100; Sel = 2'b11; #100;
    I = 4'b1101; Sel = 2'b11; #100;
    I = 4'b1110; Sel = 2'b11; #100;
    I = 4'b1111; Sel = 2'b11; #100;
    $finish;
end

endmodule

