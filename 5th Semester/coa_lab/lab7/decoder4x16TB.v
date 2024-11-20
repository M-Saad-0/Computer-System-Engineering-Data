module decoder4x16TB();
  reg A, B, e, C;
  wire [15:0]I;
  decoder4x16 d3(A, B, C, e, I);

  initial begin
    $monitor("e=%b, A=%b, B=%b, C=%b, I=%b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b", A, B, C, e, I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7], I[8], I[9], I[10], I[11], I[12], I[13], I[14], I[15]);
    
    e = 0;    A = 0;    B = 0;    C = 0;    #20;
    
    e = 0;    A = 0;    B = 0;    C = 1;    #20;
    
    e = 0;    A = 0;    B = 1;    C = 0;    #20;
    
    e = 0;    A = 0;    B = 1;    C = 1;    #20;
    
    e = 0;    A = 1;    B = 0;    C = 0;    #20;
    
    e = 0;    A = 1;    B = 0;    C = 1;    #20;
    
    e = 0;    A = 1;    B = 1;    C = 0;    #20;

    e = 0;    A = 1;    B = 1;    C = 1;    #20;
    
    e = 1;    A = 0;    B = 0;    C = 0;    #20;
    
    e = 1;    A = 0;    B = 0;    C = 1;    #20;
    
    e = 1;    A = 0;    B = 1;    C = 0;    #20;
    
    e = 1;    A = 0;    B = 1;    C = 1;    #20;
    
    e = 1;    A = 1;    B = 0;    C = 0;    #20;
    
    e = 1;    A = 1;    B = 0;    C = 1;    #20;
    
    e = 1;    A = 1;    B = 1;    C = 0;    #20;

    e = 1;    A = 1;    B = 1;    C = 1;

  end
endmodule
