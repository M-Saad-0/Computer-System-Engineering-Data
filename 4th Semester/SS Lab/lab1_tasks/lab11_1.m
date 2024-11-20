k = -50:50;
T = 1;
T1 = 0.25;
ak = sin(k*2*pi*(T1/T))./(k*pi);
ak(51)=2*T1/T;
% Manual correction for a0 ?> ak(51)
t = -1.5:0.005:1.5;
w0 = 2*pi/T;
xt = zeros(1,length(t));
% Amount of time shift
t0 = 0.25;
% FS coefficients of the time shifted signal w0 = 2*pi/T;
bk = ak.*exp(-1j*k*w0*t0);
%construction of original square wave
for k = -50:50
    xt = xt + ak(k+51)*exp(1j*k*w0*t); 
end% Given Fourier series coefficients
figure;
subplot(3, 1, 1);
plot(-t, xt, 'LineWidth', 1);
xlabel('t');
ylabel('x(-t)');
title('Time-Reversed Signal x(-t)');

% b) Plot FS coefficients a-k of time-reversed signal
bk = fliplr(ak);  % Time-reversed coefficients

subplot(3, 1, 2);
stem(k, real(bk), 'filled');
xlabel('k');
ylabel('Re(bk)');
title('Fourier Series Coefficients of Time-Reversed Signal');

% c) Plot the reconstructed time-reversed signal using FS coefficients a-k
M = length(k);  % Number of terms
xt_recon = zeros(size(t));

for m = 1:M
    xt_recon = xt_recon + bk(m) * exp(1j * k(m) * t);
end

subplot(3, 1, 3);
plot(t, real(xt_recon), 'LineWidth', 1);
xlabel('t');
ylabel('x(-t)');
title('Reconstructed Time-Reversed Signal');
