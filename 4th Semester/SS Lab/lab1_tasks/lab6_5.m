t = -1:0.005:1;
f = 3;
amp = 5;
x = amp*sin(f*t*pi + pi/2);
y = amp*sin(f*t*pi + 0);
subplot(2,1,1);
plot(t, x, 'linewidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Phase shift of \pi/2');
subplot(2,1,2);
plot(t, y, 'linewidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Phase shift of 0');
