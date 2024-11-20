`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:44 05/29/2024 
// Design Name: 
// Module Name:    CSA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CSA(s,c,x,y,z);

input x,y,z;
output s,c;
assign s = x^y^z;
assign c = x&y | y&z | x&z;

endmodule

module top(sum,cout,x,y,z);

input [3:0] x,y,z;
output [4:0] sum;

output cout;

wire [3:0] cw;
wire [2:0] sw;
wire [2:0] fc;

CSA FA0(sum[0],cw[0],x[0],y[0],z[0]);
CSA FA1(sw[0],cw[1],x[1],y[1],z[1]);
CSA FA2(sw[1],cw[2],x[2],y[2],z[2]);
CSA FA3(sw[2],cw[3],x[3],y[3],z[3]);

CSA FA4(sum[1],fc[0],cw[0],sw[0],1'b0);
CSA FA5(sum[2],fc[1],cw[1],sw[1],fc[0]);
CSA FA6(sum[3],fc[2],cw[2],sw[2],fc[1]);
CSA FA7(sum[4],cout,cw[3],1'b0,fc[2]);
endmodule
