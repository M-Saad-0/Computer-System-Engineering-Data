module fsm(clk, reset, q);
    input clk, reset;
    output reg [2:0]q;
    wire nQ2, n;
    DFF d1(q[2], clk, reset, q[0], n);
    DFF d1(~(q[2]|q[0]), clk, reset, q[1], n);
    DFF d1(nQ2&q[1], clk, reset, q[3], nQ2);
endmodule