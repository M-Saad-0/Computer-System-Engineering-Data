f1 = 10;
t = 0:0.001:1;
y1 = sin(2*pi*f*t);
plot(t,y1)
xlabel('time in seconds')
ylabel('Amplitude')
title('Signal of 10 Hz frequency')
Y1 =fft(y,length(y1))
n = length(Y1);
fshift(-n/2:n/2-1)*(1000*n);
Y1shift = (fftshift(Y1));
Figure	
plot(fshift,abs(Y1shift))