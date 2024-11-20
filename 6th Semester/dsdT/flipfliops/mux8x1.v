
module mux8x1(I0, I1, I2, I3, I4, I5, I6, I7, S, O);
    input [7:1]I0, I1, I2, I3, I4, I5, I6, I7; input [3:0]S; output [7:0]O;
    assign O = (S==3'b000)?I0:
		(S==3'b001)?I1:
		(S==3'b010)?I2:
		(S==3'b011)?I3:
		(S==3'b100)?I4:
		(S==3'b101)?I5:
		(S==3'b110)?I6:I7;
endmodule
