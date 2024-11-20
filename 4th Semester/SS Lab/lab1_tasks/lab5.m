t= [1:0.2:100];
d = 40*exp(i*(423*t));
subplot(1,2,1);
plot(d);
subplot(1,2,2);
stem(d);