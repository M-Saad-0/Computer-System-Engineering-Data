% Create a time vector for simulation
t = 0:0.01:10;  % Adjust the time vector as needed
% Name: Abdul Wahab
% Reg: 20pwcse1946
% Generate a sinusoidal input signal
A = 1;  % Amplitude
f = 1;  % Frequency (1 Hz)
u = A * sin(2 * pi * f * t);

% Simulate the system response to the sinusoidal input using lsim
y = lsim(sys, u, t);

% Plot the sinusoidal response
figure;
plot(t, y);
title('Response to Sinusoidal Input (MATLAB)');
xlabel('Time');
ylabel('Amplitude');
