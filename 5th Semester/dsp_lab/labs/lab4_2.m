t = 0:0.001:1;
f = [10 20 30 40 50 60]

y1 = sin(2*pi*f(1)*t);
N = length(y1);
ft = fft(y1);
fa = (0:N-1)*(f(1)/N);
subplot(3,2,1)
plot(fa,abs(fftshift(ft)));
axis([-250,250,0,60]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency  Response of 10Hz Signal');

y1 = sin(2*pi*f(2)*t);
N = length(y1);
ft = fft(y1);
fa = (0:N-1)*(f(2)/N);
subplot(3,2,2)
plot(fa,ft);
axis([-250,250,0,60]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency  Response of 20Hz Signal');

y1 = sin(2*pi*f(3)*t);
N = length(y1);
ft = fft(y1);
fa = (0:N-1)*(f(3)/N);
subplot(3,2,3)
plot(fa,ft);
axis([-250,250,0,60]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency  Response of 30Hz Signal');

y1 = sin(2*pi*f(4)*t);
N = length(y1);
ft = fft(y1);
fa = (0:N-1)*(f(4)/N);
subplot(3,2,4)
plot(fa,ft);
axis([-250,250,0,60]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency  Response of 40Hz Signal');

y1 = sin(2*pi*f(5)*t);
N = length(y1);
ft = fft(y1);
fa = (0:N-1)*(f(5)/N);
subplot(3,2,5)
plot(fa,ft);
axis([-250,250,0,60]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency  Response of 50Hz Signal');

y1 = sin(2*pi*f(6)*t);
N = length(y1);
ft = fft(y1);
fa = (0:N-1)*(f(6)/N);
subplot(3,2,6)
plot(fa,ft);
axis([-250,250,0,60]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency  Response of 60Hz Signal');

