a = 1.3;
n = 0:0.5:10;
x = a.^n;
stem(n, x);
title('Discrete Signal of a^n');
xlabel('Sample Number');
ylabel('Amplitude');
hold on;
plot(n, x, 'linewidth', 3);
title('Continuous Signal of a^n and a = 1.3');
xlabel('x-axis');
ylabel('Amplitude');