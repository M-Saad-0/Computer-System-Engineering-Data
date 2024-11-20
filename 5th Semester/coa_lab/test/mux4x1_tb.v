module mux4x1(
 input S0, S1, 
 input I0, I1,I2,I3,
 output reg Y);

wire Y0, Y1;

 mux2x1 m1(I0, 
