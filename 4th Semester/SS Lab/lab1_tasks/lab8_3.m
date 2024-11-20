n = -4:1/10:4;
s = 5*exp(n*pi/4);
p_vector = 1:length(n);
signal = sig_causal(s, p_vector);
subplot(3,1,1);
stem(n, s, 'filled');
xlabel('Sample Number');
ylabel('Sample Height');
title('Original Signal');
grid on;
subplot(3,1,2);
stem(p_vector, 'filled');
axis([-40, 40, -100, 100])
xlabel('Sample Number');
ylabel('Sample Height');
title('Position Vector');
grid on;
subplot(3,1,3);
stem(sig, 'filled');
axis([-40, 40, -2, 2])
xlabel('Sample Number');
ylabel('Sample Height');
title('Causal Signal');
grid on;
