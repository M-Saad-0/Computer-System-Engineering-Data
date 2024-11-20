module jkff_gate(q,qbar,clk,j,k);

input j,k,clk;
output q,qbar;

wire nand1_out; // output from nand1
wire nand2_out; // output from nand2

nand(nand1_out, j,clk,qbar);
nand(nand2_out, k,clk,q);
nand(q,qbar,nand1_out);
nand(qbar,q,nand2_out);

endmodule

module jkff_behave(clk,j,knq,qbar);

input clk,j,k;
output reg q,qbar;

always@(posedge clk)
begin
if(k = 0)
begin
q <= 0;
qbar <= 1;
end
always@(posedge clk)
begin
  if(k = 0)
   begin
    q <= 0;
    qbar <= 1;
   end
  else if(j = 1)
   begin
    q <= 0;
    qbar <= 0;
   end
  else if(j = 0 & k = 0)
   begin
    q <= q;
    qbar <= qbar;
   end
  else if(j = 1 & k = 1)
   begin
    q <= ~q;
    qbar <= ~qbar;
   end
end

endmodule