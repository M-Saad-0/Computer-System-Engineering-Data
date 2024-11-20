t = 0:0.001:1;
f = [10 20 30 40 50 60]

y1 = sin(2*pi*f(1)*t);
subplot(3,2,1)
plot(t,y1);
xlabel('time in seconds')
ylabel('Amplitude')
title('Sinusoid of Frequency 10Hz');

y1 = sin(2*pi*f(2)*t);
subplot(3,2,2)
plot(t,y1);
xlabel('time in seconds')
ylabel('Amplitude')
title('Sinusoid of Frequency 20Hz');

y1 = sin(2*pi*f(3)*t);
subplot(3,2,3)
plot(t,y1);
xlabel('time in seconds')
ylabel('Amplitude')
title('Sinusoid of Frequency 30Hz');

y1 = sin(2*pi*f(4)*t);
subplot(3,2,4)
plot(t,y1);
xlabel('time in seconds')
ylabel('Amplitude')
title('Sinusoid of Frequency 40Hz');

y1 = sin(2*pi*f(5)*t);
subplot(3,2,5)
plot(t,y1);
xlabel('time in seconds')
ylabel('Amplitude')
title('Sinusoid of Frequency 50Hz');

y1 = sin(2*pi*f(6)*t);
subplot(3,2,6)
plot(t,y1);
xlabel('time in seconds')
ylabel('Amplitude')
title('Sinusoid of Frequency 60Hz');