t = 0:0.001:5;
i=sqrt(-1);
x = (-8/(pi*pi))*exp(i*(2*pi*0.5*t));
for N=3:2:11
    x = x + (-8/(N^2*pi*pi))*exp(i*(2*N*pi*0.5*t));
end
plot(t, x, 'linewidth', 2);
title('A triangular signal with harmonics 1st to 11th');
ylabel('Amplitude');
xlabel('Time');
