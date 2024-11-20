module HA(A, B, S, C);
input A, B;
output S, C;
xor x1(A, B, S);
and x2(C, A, B);
end module