
%safi ullah khan , 20pwcse1943
q=zpk([],[-1 -2 -2],2)

numeratorf=2;
denumeratorf=poly([-1 -2 -2]);
[a,b,c]=residue(numeratorf,denumeratorf);

TF=tf([3],[1 2 5 0])

syms s;
F2=ilaplace(3/(s*(s^2+2*s+5)));

numf=3;
denf=poly([1 2 5 9 0]);
[d,e,f]=residue(numf,denf);

syms s;
B=1/(s*(s+2));
B=ilaplace(B);
 
t=0:1/100:1;
plot(t,((1/2)-1/2*exp(-2*t)));

syms s e1 e2 e3 P;
Eq1=[(2*s+2),-(2*s+1),-1;-(2*s+1),(9*s+1),-4*s;-1,-4*s,(4*s+1+1/s)];
B=[e1;e2;e3];
C=[P;0;0];
AB=inv(Eq1)*C;
pretty(AB);








