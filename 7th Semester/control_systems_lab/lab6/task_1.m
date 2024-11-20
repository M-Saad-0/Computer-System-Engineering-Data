%Q-1
syms s
f = ilaplace(3/(s+(s^2+2*s+5)));
pretty(f)


%%
%Q-2
%f2 = tf([1], [1, 2, 0]);
f2 = ilaplace(1/(s^2+2*s));
pretty(f2)


%%
%Q-3
f3 = ilaplace(1/(s^2));
pretty(f3)


%%
%Q-4
%a = 10;
syms a
f4 = ilaplace(1/(s-a)^2);
pretty(f4)

%%
%Q-5
syms f t;
t5 = t;
f5 = laplace(t5);
pretty(f5)

%%
%Q-6
t6 = cos(a*t);
f6 = laplace(t6);
pretty(f6)
%%
%Q-7
t7 = 1+2*exp(-t)+3*exp(-2*t);
f7 = laplace(t7);
pretty(f7)
%%
%Q-8
f8 = 2*exp(-t)-2*t*exp(-2*t)-2*exp(-2*t);
fs = laplace(f8);
pretty(fs)
%%
%Q-9
f9 = (4*s^2+4*s+4)/(s^4+3*s^3+2*s^2);
num = [0 0 4 4 4];
den = [1 3 2 0 0];
[r p k]= residue(num, den)
%%
%Q-10
syms I1 I2 I3 V;
A = [2*s+2 -2*s-1 -1;-2*s-1 9*s+1 -4*s;-1 -4*s 4*s+1+1/s];
B = [I1;I2;I3];
C = [V;0;0];
B = inv(A)*C;
pretty(B)

%%

