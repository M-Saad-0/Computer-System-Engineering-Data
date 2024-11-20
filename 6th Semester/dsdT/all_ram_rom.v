module ram8x8(input [2:0]addr, inout [7:0]oidata, input rw, input cs, input clk);
    reg [7:0]data, oidata;
    reg [7:0]mem[7:0];
    assign oidata = (cs && rw)? data : 8'bz; 
    always@(posedge clk) begin
        if(cs) begin
            if(rw)
                data <= mem[addr];
            else if(!rw)
                mem[addr] = data;
        else
            data <= 8'bz;
        end  
    end
endmodule

module ram8x16(input [2:0]addr, inout [15:0]data, input rw, input cs, input clk);
    reg [15:0]data;
    reg [15:0]mem[7:0];
    ram8x8(addr, data[15:8], rw, cs, clk);
    ram8x8(addr, data[7:0], rw, cs, clk);
endmodule

module ram16x16(input [3:0]addr, inout [15:0]data, input rw, input cs, input clk);
    reg [15:0]data, tmp1, tmp2;
    reg [15:0]mem[15:0];
    wire de1, de2;
    assign de1 =  ~addr[3] && cs; //addr[3] is 0 de1 is 1 also and de2 is 0
    assign de2 =  addr[3] && cs; //addr[3] is 1 de2 is 1 also and de1 is 0
    ram8x16(addr[2:0], tmp1, rw, de1, clk);
    ram8x16(addr[2:0], tmp2, rw, de2, clk);
    assign data = (rw && cs)? tmp1 | tmp2 : 16'bz;
endmodule 


module ram32x16(input [4:0]addr, inout [15:0]data, input rw, input cs, input clk);
    reg [15:0]data, tmp1, tmp2;
    reg [15:0]mem[31:0];
    wire de1, de2;
    assign de1 =  ~addr[4] && cs; 
    assign de2 =  addr[4] && cs; 
    ram16x16(addr[3:0], tmp1, rw, de1, clk);
    ram16x16(addr[3:0], tmp2, rw, de2, clk);
    assign data = (rw && cs)? tmp1 | tmp2 : 16'bz;
endmodule 


module ram32x32(input [4:0]addr, inout [31:0]data, input rw, input cs, input clk);
    reg [31:0]data;
    reg [31:0]mem[31:0];
    ram32x16(addr[4:0], data[31:16], rw, cs, clk);
    ram32x16(addr[4:0], data[15:0], rw, cs, clk);
endmodule


module rom4x4(input [1:0]addr, output [3:0]data, input rd, input cs);
    reg [3:0]data;
    always@(addr, cs, rd) begin
        if(cs && rd) begin  
            case (addr)
                0: data <= 15;
                1: data <= 5;
                2: data <= 7;
                3: data <= 11;
            endcase
        end else begin
            data = 8'bz
        end
    end
endmodule

module 4x16(input [1:0], output [15:0]data, input rd, input cs);
    rom4x4(addr, output [15:12]data, input rd, input cs);
    rom4x4(addr, output [11:8]data, input rd, input cs);
    rom4x4(addr, output [7:4]data, input rd, input cs);
    rom4x4(addr, output [3:0]data, input rd, input cs);
endmodule

module 4x64(input [1:0]addr, output [63:0]data, input rd, input cs);
    rom4x16(addr, output [63:48]data, input rd, input cs);
    rom4x16(addr, output [47:32]data, input rd, input cs);
    rom4x16(addr, output [31:16]data, input rd, input cs);
    rom4x16(addr, output [15:0]data, input rd, input cs);
endmodule

module ram32x16(input [4:0]addr, output [63:0]data, input rd, input cs);
    wire [63:0] tmp1, tmp2, tmp3, tmp4;
    wire de1, de2, de3, de4;
    assign de1 =  ~addr[3] && ~addr[2] && cs; 
    assign de2 =  ~addr[3] && addr[2] && cs; 
    assign de3 =  addr[3] && ~addr[2] && cs; 
    assign de4 =  addr[3] && addr[2] && cs; 
    ram4x64(addr[1:0], tmp1, rd, de1);
    ram4x64(addr[1:0], tmp2, rw, de2);
    ram4x64(addr[1:0], tmp3, rw, de3);
    ram4x64(addr[1:0], tmp4, rw, de4);
    assign data = (rw && cs)? tmp1 | tmp2 | tmp3 | tmp4 : 16'bz;
endmodule 

//it might not run I have not compied and checked it yetn