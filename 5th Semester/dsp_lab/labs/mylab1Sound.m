fs = 11025;
dur = 0.9;
tt = 0 : 1/fs : dur;
xx = cos(2000*pi*tt);
sound(xx, fs);
plot(xx)
title('Sound wave of a sinusoid')
xlabel('Time')
ylabel('Amplitude')