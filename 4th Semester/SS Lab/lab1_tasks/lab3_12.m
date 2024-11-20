function lab3_12
    A = [1 2 3; 7 6 4; 8 2 0];
    B = [23 54 64; 92 64 37; 15 7 33];
    A_compliment = ~A 
    A_AND_B = A&B
    A_AND_Bcomp = A & ~B
    A_OR_B = A | B
    A_OR_Acomp = A | ~A'
end
