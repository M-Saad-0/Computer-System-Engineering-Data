//programm counter code written by some indian guy for SAP simple as possible computer
module pc( Cp, nCLK, nCLR, Ep, WBUSlower);
input Cp;
input nCLK;
input nCLR;
input Ep;
output[3:0] WBUSlower;
//reg[3:0] nextPC;
reg[3:0]  WBUSlower;
always @(negedge nCLK)  // negative edge of nCLK means positive edge of CLK
begin
if( Cp == 1)
/* Increment PC on every negative edge of nCLK 
* (ie: positive edge of CLK - mid point of single T state
*/
begin
WBUSlower = WBUSlower + 1; 
end
if ( nCLR == 0)
/* Reset Program Counter */
begin
//nextPC = 4'b0000;
WBUSlower = 4'b0000;
end
end
/*
* Keep WBUS in high impedence state when Ep is low (during this time some other module is using 
* When Ep is high, output the contents of PC to WBUS
*/
//assign WBUSlower = (Ep) ? nextPC : 4'bzzzz;
endmodule


module inputMAR(nLm, clk, in, ram_addr, ram_nrd, ram_nwr, run_prog);
input clk, nLm, run_prog;  //run_prog = 1 means in run mode not in programming mode
output ram_nrd, ram_nwr;
reg ram_nrd, ram_nwr;
parameter wordsize = 4;
input [wordsize-1:0] in;
output [wordsize-1:0] ram_addr;
reg [wordsize-1:0] ram_addr;
always @ (posedge clk)
begin 
if(run_prog) begin
 {ram_nrd, ram_nwr} = 2'b01; //make nrd enabled and nwr disabled b/c in run mode ram become ROM
 if(!nLm) ram_addr = in;    
 else     ram_addr <= ram_addr;
 end
else begin
 {ram_nrd, ram_nwr} = 2'b10;
 if(!nLm) ram_addr = in;    //make nrd enabled and nwr disabled b/c in run mode
 else     ram_addr <= ram_addr;
 end
end
endmodule 

module ram(clk, nrd, nwr, nce, addr, data);
input clk, nrd, nwr, nce;
parameter wrdsize = 8;
parameter logwrd = 3;//wrdsize'bz;
parameter addrsize = 4;
inout [wrdsize-1:0] data;
reg [wrdsize-1:0] dataout;
input [logwrd-1:0] addr;
reg [wrdsize-1:0] rammem[0:2**addrsize];
always @ (nce or nwr or nrd)      //asynchronous RAM
begin 
if(!nrd)
dataout <= !nce?rammem[addr]:8'bz;
else if(!nwr)
rammem[addr] <= !nce?data:rammem[addr];
end
assign data =dataout;
endmodule

module IR(clk, nli, nei, clr, wbus, wbuslower, wbusup);
input clk, nli, nei, clr;
input [7:0] wbus;
output [3:0] wbuslower, wbusup;
reg [7:0]wbuss ;
wire[7:0] wbusloww;
reg [3:0] wbuslower;
assign wbusup = wbuss[7:4];
assign wbusloww = wbuss[3:0];
always @ (posedge clk)
begin
if (clr)begin wbuss = 8'b0; wbuslower = 4'bz; end
else if(!nli) begin
wbuss = wbus; wbuslower = 4'bz; end
if (!nei) begin
wbuslower = wbusloww;
end
end
endmodule

module accumulator(clk, nLa, Ea, accout, accin, accreg);
input clk, nLa, Ea;
parameter wordsize = 8;
input [wordsize-1:0] accin;
output [wordsize-1:0] accout, accreg;
reg [wordsize-1:0] accout, accreg;
always @(posedge clk)
 begin 
 if(!nLa) 
 begin
  accreg <= accin; accout <= 8'bz; 
 end
 if(Ea)  
 begin
  accout <= accreg;  
 end
 end
endmodule

module addsub(Su, Eu, ina, inb, result);
input Su, Eu;
parameter wordsize = 8;
input [wordsize-1:0] ina, inb;
output [wordsize-1:0] result;
assign result = Eu?(Su?ina-inb:ina+inb):8'bz;
endmodule

module regB(nLb, clk, in, out);
input clk, nLb;
parameter wordsize = 8;
input [wordsize-1:0] in;
output [wordsize-1:0] out;
reg [wordsize-1:0] out;
always @ (posedge clk)
begin 
if(!nLb) out = in;
end
endmodule

module outreg(nLo, clk, in, out);
input clk, nLo;
parameter wordsize = 8;
input [wordsize-1:0] in;
output [wordsize-1:0] out;
reg [wordsize-1:0] out;
always @ (posedge clk)
begin 
if(!nLo) out = in;
end
endmodule

module control_unit(clk,  clr, cntrl_bus, opcode);
input clk,clr;
parameter opcodesize = 4;
input [opcodesize-1:0] opcode;
parameter cntrlbussize = 12;
parameter T1 = 6'b000001,
   T2 = 6'b000010,
   T3 = 6'b000100,
   T4 = 6'b001000,
   T5 = 6'b010000,
   T6 = 6'b100000;
output [cntrlbussize-1:0] cntrl_bus;
// ring counter 
reg [5:0]  ringcount;
reg [cntrlbussize-1:0] cntrl_bus;
wire [5:0]state ;
always @ (negedge clk)
begin
if (clr)
 ringcount = 6'b000001;
else case(ringcount)
 T1: ringcount <= T2;
 T2: ringcount <= T3;
 T3: ringcount <= T4;
 T4: ringcount <= T5;
 T5: ringcount <= T6; 
 T6: ringcount <= T1;
 endcase
end

//end of ring counter 

/*Mealy state machine in which next state is missing in a sense that 
ringcounter indepedently calculate determin it*/
assign state = ringcount;
always @(negedge clk)
case ({state, opcode})
{T1, 4'hx}: cntrl_bus = 12'h5E3;    //fetch cycle start here PC -> MAR
{T2, 4'hx}: cntrl_bus = 12'hBE3;
{T3, 4'hx}: cntrl_bus = 12'h263;  //fetch cycle end here
//LDA operation
{T4, 4'h0}: cntrl_bus = 12'h1A3;
{T5, 4'h0}: cntrl_bus = 12'h2C3;
{T6, 4'h0}: cntrl_bus = 12'h3E3;
//ADD
{T4, 4'h0}: cntrl_bus = 12'h1A3;
{T5, 4'h0}: cntrl_bus = 12'h2E1;
{T6, 4'h0}: cntrl_bus = 12'h3C7;
//SUB
{T4, 4'h0}: cntrl_bus = 12'h1A3;
{T5, 4'h0}: cntrl_bus = 12'h2E1;
{T6, 4'h0}: cntrl_bus = 12'h3EF;
//OUT
{T4, 4'h0}: cntrl_bus = 12'h3F2;
{T5, 4'h0}: cntrl_bus = 12'h3E3;
{T6, 4'h0}: cntrl_bus = 12'h3E3;
//HLT
{T4, 4'h0}: cntrl_bus = 12'h3E3;
{T5, 4'h0}: cntrl_bus = 12'h3E3;
{T6, 4'h0}: cntrl_bus = 12'h3E3;
endcase
endmodule

module sap1main(clk, clr, result, run_prog, ram_sel, Wbus_ext, nLm_ext);  //ram_nwr and nCe is placed in portlist because manually programming will be done
input clk, clr, run_prog, ram_sel, nLm_ext;
parameter wordsize = 8;
parameter cntrlbussize = 12;
input [wordsize-1:0] Wbus_ext;
output [wordsize-1:0] result;
//varibles for run and program mode of SAP1 in FPGA it is connected to the switches
wire ram_nrd, ram_nwr, run_prog, nLm_int;
wire [wordsize-1:0] Wbus, Wbus_int;
wire Cp, Ep, nLm, nCe, nLi, nEi, nLa, Ea, Su, Eu, nLb, nLo;
assign nCee = run_prog?nCe:ram_sel;
assign Wbus = run_prog?Wbus_int:Wbus_ext;
assign nLm = run_prog?nLm_int:nLm_ext;
wire [cntrlbussize-1:0] cntrl_bus = {Cp, Ep, nLm, nCe, nLi, nEi, nLa, Ea, Su, Eu, nLb, nLo};
wire [wordsize/2-1:0]opcode;
wire [wordsize-1:0] ACC_to_ALU, regB_to_ALU;

pc PC_sap1( Cp, nCLK, nCLR, Ep, Wbus[wordsize/2-1:0]);

inputMAR MAR_sap1(nLm, clk, in, ram_addr, ram_nrd, ram_nwr, run_prog);

ram ram_sap1(clk, ram_nrd, ram_nwr, nCee, Wbus[wordsize/2-1:0], Wbus);

IR IR_sap1(clk, nLi, nEi, clr, Wbus, Wbus[wordsize/2-1:0], opcode);

control_unit cntrl_unit_sap1(clk,  clr, cntrl_bus, opcode);

accumulator ACC_sap1(clk, nLa, Ea, Wbus, Wbus, ACC_to_ALU);

addsub(Su, Eu, ACC_to_ALU, regB_to_ALU, Wbus);

regB(nLb, clk, Wbus, ACC_to_ALU);

outreg(nLo, clk, Wbus, result);

endmodule
