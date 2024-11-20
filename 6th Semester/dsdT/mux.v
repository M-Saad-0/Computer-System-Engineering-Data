module mux2x1(O, I1, I2, S);
output O;
input I1, I2, S;
assign O = !S?I1:I2;
endmodule

module mux4x1(O, I, S1, S2);
output O;
input [3:0]I; input S1, S2;
wire w1, w2;
mux2x1 m1(w1, I[0], I[1], S1);
mux2x1 m2(w2, I[2], I[3], S1);
mux2x1 m3(O, w2, w1, S2);
endmodule

module mux8x1(O, I, S);
output O;
input [7:0]I; input [2:0]S;
wire w1, w2;
mux4x1 m1(w1,I[7:4], S1, S2);
mux4x1 m2(w2, I[3:0], S1, S2);
mux2x1 m3(O, w2, w1, S3);
endmodule

module mTest();
wire O;
reg [7:0]I; reg [2:0]S;
mux8x1 m(O, I, S);
initial begin
// Test all possible input combinations for S
    S <= 3'b000;  // Select input I[0]
    I <= 8'b10101010;
    #10; // Wait for simulation time

    S <= 3'b001;  // Select input I[1]
    I <= 8'b01010101;
    #10;

    S <= 3'b010;  // Select input I[2]
    I <= 8'b11111111;
    #10;

    S <= 3'b011;  // Select input I[3]
    I <= 8'b00000000;
    #10;

    S <= 3'b100;  // Select input I[4]
    I <= 8'b11001100;
    #10;

    S <= 3'b101;  // Select input I[5]
    I <= 8'b00110011;
    #10;

    S <= 3'b110;  // Select input I[6]
    I <= 8'b10010001;
    #10;

    S <= 3'b111;  // Select input I[7]
    I <= 8'b01101110;
end
endmodule

