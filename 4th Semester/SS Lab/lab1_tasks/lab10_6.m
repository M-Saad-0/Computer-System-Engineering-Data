% Given Fourier series coefficients
k = -10:10;
ak = zeros(size(k));
ak(abs(k) < 3) = 1j * k(abs(k) < 3);

% Number of terms for reconstruction
M = 10;

% Time parameters
T = 2 * pi;
t = linspace(-T/2, T/2, 1000);

% Reconstructed signal
x = zeros(size(t));
for n = -M:M
    x = x + ak(floor(round(n) + 1 + length(k) / 2)) * exp(1j * n * t);
end

% Plot Fourier series coefficients
figure;
subplot(2, 1, 1);
stem(k, real(ak), 'filled');
xlabel('k');
ylabel('Re(ak)');
title('Fourier Series Coefficients');

% Plot reconstructed signal
subplot(2, 1, 2);
plot(t, real(x), 'LineWidth', 1);
xlabel('t');
ylabel('x(t)');
title('Reconstructed Signal (M = 10)');
