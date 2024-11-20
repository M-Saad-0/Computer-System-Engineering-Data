module HA (Su, Co, a, b);

	input a, b;
	output Su, Co;

	Sum s1 (Su, a, b);
	Carry c1 (Co, a, b);

endmodule