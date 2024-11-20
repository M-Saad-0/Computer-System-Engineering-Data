module OR(A, B, O);
    input A, B;
    output O;
    wire nA, nB;
    nand n1(nA, A);
    nand n2(nB, B);
    nand n3(O, nA, nB);
endmodule
