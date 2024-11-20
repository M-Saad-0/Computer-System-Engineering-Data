`timescale 1ns / 1ps

module Clock_Divider(clock_in,clock_out);
	input clock_in;
	output reg clock_out;
	reg [27:0] counter = 28'd0;
	parameter DIVISOR = 28'd100000000;
	

	always @(posedge clock_in)
	begin
		counter <= counter + 28'd1;
		if(counter>=(DIVISOR-1))
			counter <=28'd0;
		clock_out <= (counter>DIVISOR/2)?1'b1:1'b0;
	end
endmodule

module counter18bit(CLK,CLR,counter_out);
		 input CLK,CLR;
		 output reg [17:0] counter_out;
		 
		 always @(posedge CLK)
		 
					if(CLR | counter_out == 18'b111111111111111111)
								counter_out <= 18'b000000000000000000;
					else
								counter_out <= counter_out + 1'b1;
endmodule
							

module counter_3_bit(CLK,CLR,COUNT);
	
		input CLK,CLR;
		output reg [3:0] COUNT;
		
		always @(posedge CLK)
				  if(CLR | COUNT == 4'd9)
							COUNT <= 4'h0;
					else
							COUNT <= COUNT + 1;
					
endmodule

module BCD7_seg(OUT,COUNT);

	input [3:0] COUNT;
	output reg [7:0] OUT;
	
	always @(*)
	
			case(COUNT)
					4'b0000 : OUT = 8'b 10000001;//0
					4'b0001 : OUT = 8'b 11110011;//1
					4'b0010 : OUT = 8'b 01001001;//2
					4'b0011 : OUT = 8'b 01100001;//3
					4'b0100 : OUT = 8'b 00110011;//4
					4'b0101 : OUT = 8'b 00100101;//5
					4'b0110 : OUT = 8'b 00000101;//6
					4'b0111 : OUT = 8'b 11110001;//7
					4'b1000 : OUT = 8'b 00000001;//8
					4'b1001 : OUT = 8'b 00100001;//9
					default : OUT = 8'b 11111111;//default
					endcase
endmodule

module bcd_3(CLK,CLR,BCDu,BCDt,BCDh
    ); 
	 input CLK,CLR;
	 output [3:0] BCDu,BCDt,BCDh;	
	 
	 BCD b1(CLK,CLR,BCDu);
	 BCD b2(BCDu[3],CLR,BCDt);
	 BCD b3(BCDt[3],CLR,BCDh);
endmodule

module mux4x1(bcd1,bcd2,bcd3,counter_out,out_mux);
				 input [7:0] bcd1,bcd2,bcd3;
				 input [1:0] counter_out;
				 output reg [7:0] out_mux;
				 
				 always @(*)
							case(counter_out)
							00: out_mux = bcd1;
							2'b01 : out_mux = bcd2;
							2'b10 : out_mux = bcd3;
							2'b11 : out_mux = 8'b11111111;
							default : out_mux = 8'b11111111;
							endcase

endmodule

module decoder2x4(counter, out_dec);

			input [1:0] counter;
			output reg [3:0] out_dec;
			
			always @(*)
						case(counter)
						2'b00 : out_dec = 4'b1110;
						2'b01 : out_dec = 4'b1101;
						2'b10 : out_dec = 4'b1011;
						2'b11 : out_dec = 4'b1111;
						default : out_dec = 4'b1111;
						endcase

endmodule


module topModule(CLK,CLR,out_dec,out_mux);

		 input CLK,CLR;
		 output [3:0] out_dec;
		 output [7:0] out_mux;
		 
		 
		 wire slow_clk;
		 wire [17:0] counter_out;
		 wire [3:0] BCDu,BCDt,BCDh;
		 wire [7:0] bcd1,bcd2,bcd3;
		 
		 counter18bit CNT(CLK,CLR,counter_out);
		 Clock_Divider c1(CLK,slow_clk);
		 
		 Task01 t1(slow_clk,CLR,BCDu,BCDt,BCDh); 
		 BCD7_seg b1(BCDu,bcd1);
		 BCD7_seg b2(BCDt,bcd2);
		 BCD7_seg b3(BCDh,bcd3);
		 mux4x1 MUX(bcd1,bcd2,bcd3,counter_out[17:16],out_mux);
		 decoder2x4 d1(counter_out[17:16] , out_dec);
		 
endmodule
		 
		
		 
		 
