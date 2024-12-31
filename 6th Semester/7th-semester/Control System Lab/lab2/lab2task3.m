
num = 10;
den = [1 2 20];
G = tf(num, den);
t = 0:0.01:15; 
u = sin(2 * pi * t) + (t >= 0) + 2 * (t >= 5);
[y, t, x] = lsim(G, u, t);
figure;
subplot(2, 1, 1);
plot(t, u);
xlabel('Time');
ylabel('Input');
title('Combined Input Signal');
grid on;

subplot(2, 1, 2);
plot(t, y);
xlabel('Time');
ylabel('Output');
title('System Response to Combined Input');
grid on;
