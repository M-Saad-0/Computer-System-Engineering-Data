module bufferTB();
	wire out;
	reg in;
	buffer buffing(.I(in), .O(out));
	initial begin
		in = 0;
		#10
		in = 1;
		#10
		$monitor("%b	%b", in, out);
	end
endmodule