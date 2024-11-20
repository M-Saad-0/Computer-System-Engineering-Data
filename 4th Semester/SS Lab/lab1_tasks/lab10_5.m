% Given Fourier series coefficients
k = -50:50;
ak = zeros(size(k));
ak(mod(k, 2) == 0) = 1;
ak(mod(k, 2) ~= 0) = 2;

% Number of terms for reconstruction
M_values = [10, 20, 50];

% Time parameters
T = 2 * pi;
t = linspace(-T/2, T/2, 1000);

% Reconstructed signal
figure;

% Plot Fourier series coefficients
subplot(length(M_values) + 1, 1, 1);
stem(k, ak, 'filled');
xlabel('k');
ylabel('ak');
title('Fourier Series Coefficients');

for i = 1:length(M_values)
    M = M_values(i);
    
    % Reconstruct the signal
    x = zeros(size(t));
    for n = -M:M
        x = x + ak(n + 1 + length(k) / 2) * exp(1j * n * t);
    end
    
    % Plot reconstructed signal
    subplot(length(M_values), 1, i );
    plot(t, real(x), 'LineWidth', 1);
    xlabel('t');
    ylabel('x(t)');
    title(['Reconstructed Signal (M = ' num2str(M) ')']);
end
