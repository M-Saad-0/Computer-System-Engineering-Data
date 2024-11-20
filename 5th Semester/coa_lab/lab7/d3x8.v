module d3x8(A, B, C, e, I);
    input A, B, C, e;
    output [0:7] I;
    wire nA, nB, nC;
    assign nA = ~A;
    assign nB = ~B;
    assign nC = ~C;
    assign I[0] = nA & nB & nC & e;
    assign I[1] = nA & nB & C & e;
    assign I[2] = nA & B & nC & e;
    assign I[3] = nA & B & C & e;
    assign I[4] = A & nB & nC & e;
    assign I[5] = A & nB & C & e;
    assign I[6] = A & B & nC & e;
    assign I[7] = A & B & C & e;
endmodule

