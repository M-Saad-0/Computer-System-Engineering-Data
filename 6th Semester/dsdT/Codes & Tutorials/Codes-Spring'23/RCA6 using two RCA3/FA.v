module FA (S, Cout, a, b, cin);

	input a, b, cin;
	output S, Cout;
	
	wire s0, c0, c1;

	HA ha1 (s0, c0, a, b);
	HA ha2 (S, c1, s0, cin);
	or o1 (Cout, c0, c1);

endmodule