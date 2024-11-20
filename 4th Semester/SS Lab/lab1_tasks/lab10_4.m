% Parameters
T = 1;    % Time period of the square wave
T1 = 1/4; % Duty cycle of the square wave

% Fourier series coefficients for square wave
k = -100:100;   
ak = sin(k*2*pi*(T1/T))./(k*pi);
ak(101) = 2*T1/T;

% Number of terms
M_values = [10, 20, 100];

% Plotting
figure;

for i = 1:length(M_values)
    M = M_values(i);
    
    % Reconstruction of the square wave using M terms
    x = zeros(size(k));
    x(101-M:101+M) = ak(101-M:101+M);
    xt = ifft(x) * length(k);
    
    % Plot
    subplot(length(M_values), 1, i);
    plot(k, real(xt), 'LineWidth', 1);
    xlabel('k');
    ylabel('x(t)');
    title(['Square Wave Reconstruction (M = ' num2str(M) ')']);
    xlim([-100, 100]);
    ylim([-0.5, 1.5]);
    grid on;
end

sgtitle('Square Wave Reconstruction with Different Numbers of Terms');
