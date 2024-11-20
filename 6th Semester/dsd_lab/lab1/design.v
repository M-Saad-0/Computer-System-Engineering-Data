module design(A, B, C, D, O);
    input A, B, C, D;
    output O;
    wire T1, T2;
    and a(T1, A, B);
    or o(T2, C, D);
    nand n(O, T1, T2);
endmodule
