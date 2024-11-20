N = 5; 
a = [1 0 exp(1j*pi/4) 0 2*exp(1j*pi/4)]; % Non-zero Fourier series coefficients

K = length(a);

n = 0:N-1;

x = zeros(size(n));
for k = 1:K
    x = x + a(k) * exp(1j * 2 * pi * k * n / N);
end

stem(n, real(x), 'filled');
xlabel('n');
ylabel('x[n]');
title('Discrete-time periodic signal x[n]');
grid on;
