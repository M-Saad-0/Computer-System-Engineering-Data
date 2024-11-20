%Task1
t = 0 : 1/1000: 0.25;
sig = sin(2*pi*50*t) + sin(2*pi*120*t);
%%
%Task2
noise = 0 + 2*randn(size(sig));
noisySignal = sig + noise;
figure
subplot(2,1,1);
plot(t, sig, 'g', 'LineWidth', 2);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
plot(t, noisySignal, 'r', 'LineWidth', 2);
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
%%
%Task3
N = length(sig);
f = (-N/2:(N/2)-1)*1000/N;
figure
plot(f, fftshift(abs(fft(noisySignal, 251))), 'g');
title('Composite Signal Frequency  Domain');
xlabel('Frequency (Hz)');
ylabel('Ampitude');
grid on;
%%
%Task4
Pyy = noisySignal.*conj(noisySignal)/251;
f1 = 1000/251*(0:127);
figure
plot(f, Pyy, 'r');
title('Power Spectral Density');
xlabel('Frequency (Hz)');
ylabel('Power (db/Hz)');
grid on;
%%
%Task5
[Pyy2, w] = periodogram(noisySignal, rectwin(length(noisySignal)), length(noisySignal), 1000);
figure
plot(w, 10*log10(Pyy2));
title('Periodogram Power Spectral Density');
xlabel('Frequency (Hz)');
ylabel('Power (db/Hz)');
grid on;
%%
%Task6
figure
plot(abs(f(1:50)), Pyy(1:50), 'r');
title('Power Spectral Density 1  to 50 values');
xlabel('Frequency (Hz)');
ylabel('Power (db/Hz)');
grid on;
