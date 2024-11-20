N = -10:10;
imp = [zeros(1, 10) 1 zeros(1, 10)];
for n = 8:15
    x1(n)= 2*imp(n) -3*imp(n-1)+ 3*imp(n-2) +4*imp(n-3) - 2*imp(n-4);
    x2(n)= 4*imp(n)+ 2*imp(n-1)+ 3*imp(n-2) - imp(n-3) -2*imp(n-4);
    x3(n)= 3*imp(n)+ 5*imp(n-1)-3*imp(n-2) +4*imp(n-3);
end

left_A = conv(x1,  conv(x2, x3));
right_A = conv(conv(x1, x2),  x2);

left_C = conv(x1, x2);
right_C = conv(x2, x1);
check1 = left_A == right_A;
check2 = left_C == right_C;
if check - check1 == 0 %Using IF to prove
    disp('Hence proved that');
    disp('x1[n] * (x2[n] * x3[n]) = (x1[n] * x2[n]) * x3[n]');
    disp('x1[n] * x2[n] = x2[n] * x1[n]');
end
