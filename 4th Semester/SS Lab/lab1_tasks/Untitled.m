
a1 = -159155j/(1000 - 159.155j);
b1 = 6.283j + a1;
Vr1 = a1/b1 * (2+0j);

M1 = abs(Vr1);
theta1 = angle(Vr1);
deg1 = theta1 * (180/pi);

a2 = 62832j/(1000 + 628.32j);
b2 = -15.915j + a2;
Vr2 = a2/b2 * (2+0j);

M2 = abs(Vr2);
theta2 = angle(Vr2);
deg2 = theta2 * (180/pi);

t = 0:0.000001:0.003;
f1 = 1000;
f2 = 10000;
w1 = 2*pi*f1;
w2 = 2*pi*f2;
Vr1 = M1*sin(w1*t + deg1);
Vr2 = M2*sin(w2*t - deg2);
Vr = Vr1 + Vr2;

subplot(311)
plot(t,Vr1)
grid on 
title('Source one only')

subplot(312)
plot(t,Vr2)
grid on 
title('Source two only')

subplot(313)
plot(t,Vr)
grid on 
title('Both Sources')