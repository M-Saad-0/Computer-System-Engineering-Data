k = -15:15;   % Range of k values
T = 1;        % Time period of the square wave

% Duty cycle T1 = 1/4
T1 = 1/4;
ak1 = sin(k*2*pi*(T1/T))./(k*pi);
ak1(16) = 2*T1/T;

% Duty cycle T1 = 1/8
T1 = 1/8;
ak2 = sin(k*2*pi*(T1/T))./(k*pi);
ak2(16) = 2*T1/T;

% Duty cycle T1 = 1/16
T1 = 1/16;
ak3 = sin(k*2*pi*(T1/T))./(k*pi);
ak3(16) = 2*T1/T;

% Plotting
figure;

subplot(3,1,1);
stem(k, ak1, 'filled');
ylabel('ak');
title('FS Coefficients for Periodic Square Wave (T=1, T1=1/4)');

subplot(3,1,2);
stem(k, ak2, 'filled');
ylabel('ak');
title('FS Coefficients for Periodic Square Wave (T=1, T1=1/8)');

subplot(3,1,3);
stem(k, ak3, 'filled');
xlabel('k');
ylabel('ak');
title('FS Coefficients for Periodic Square Wave (T=1, T1=1/16)');
