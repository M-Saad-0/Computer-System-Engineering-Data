t = 0:0.001:1;
noice = sin(2*pi*100*t) + exp(2*pi*t*j);
sum = 0;
for f = 10:10:60
    y1 = sin(2*pi*f*t);
    sum = sum + y1;
end
sum = sum +noice;
subplot(2,1,1)
plot(t,sum);

xlabel('time in seconds')
ylabel('Amplitude')
title('Signal with noise');

N = length(sum);
f = (0:N-1)*1000/N;

subplot(2,1,2)
plot(f,abs(fftshift(fft(sum))));

xlabel('time in seconds')   
ylabel('Amplitude')
title('Fourier Transform');


