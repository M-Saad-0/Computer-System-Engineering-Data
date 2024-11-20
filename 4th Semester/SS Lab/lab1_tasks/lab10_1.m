t = -3:0.01:3;

a1 = (1/4)*exp(-1j*2*pi*t) + (1/2)*exp(1j*2*pi*t); % Asymmetric coefficients

% Coefficients for k = -2 and k = 2
a2 = (1/2)*exp(-2j*2*pi*t) + (1/4)*exp(2j*2*pi*t); % Asymmetric coefficients

% Coefficients for k = -3 and k = 3
a3 = (1/3)*exp(-3j*2*pi*t) + (1/3)*exp(3j*2*pi*t);

y1 = a1;
y2 = y1 + a2;
x = a1 + a2 + a3;

figure;
subplot(3,2,1);
plot(t, real(a1));
axis([-3 3 -2 2]);
title('Real Part of a1(t)');

subplot(3,2,2);
plot(t, y1);
axis([-3 3 -0.2 2]);
title('Real Part of y1(t)');

subplot(3,2,3);
plot(t, a2);
axis([-3 3 -2 2]);
title('Real Part of a2(t)');

subplot(3,2,4);
plot(t, y2);
axis([-3 3 -1 3]);
title('Real Part of y2(t)');

subplot(3,2,5);
plot(t, a3);
xlabel('t');
axis([-3 3 -1 1]);
title('Real Part of a3(t)');

subplot(3,2,6);
plot(t, x);
xlabel('t');
axis([-3 3 -1 4]);
title('Real Part of x(t)');
