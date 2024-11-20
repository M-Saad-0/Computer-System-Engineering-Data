i=1
t = 0:0.001:1;
y1 = sin(2*pi*ft);
sum = 0;
for f = 10:10:60
    y1 = sin(2*pi*f*t);
    sum = sum + y1;
end
subplot(2,1,1)
plot(t,sum);

xlabel('time in seconds')
ylabel('Amplitude')
title('Composite Signal');

N = length(sum);
f = (0:N-1)*1000/N;

subplot(2,1,2)
plot(f,abs(fftshift(fft(sum))));

xlabel('time in seconds')   
ylabel('Amplitude')
title('Fourier Transform');
