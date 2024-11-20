module BEHAV_CIRCUIT (a, b, c, en, d);

	input a, b, c, en;
	output [0:7] d;
	//Write your code here
	
	reg [0:7] d;
	reg na, nb, nc;

	always @(*)
	begin
		na = !a;
		nb = !b;
		nc = !c;
		d[0] = na && nb && nc && en;
		d[1] = na && nb && c && en;
		d[2] = na && b && nc && en;
		d[3] = na && b && c && en;
		d[4] = a && nb && nc && en;
		d[5] = a && nb && c && en;
		d[6] = a && b && nc && en;
		d[7] = a && b && c && en;
	end

endmodule