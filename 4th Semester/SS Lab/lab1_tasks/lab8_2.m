n = -2:1/20:2;
s1 = sin(2*pi*n);
u = n<=0;
s2 = s1.*u;
title('All Signals');
xlabel('Sample Number');
ylabel('Sample Height');
subplot(3,1,1);
stem(n, s1, 'linewidth', 2);
grid on;
title('Original Signal')
xlabel('Sample Number');
ylabel('Sample Height');
subplot(3,1,2);
stem(n, s2, 'linewidth', 2);
grid on;
title('Anti-Causal Signal')
xlabel('Sample Number');
ylabel('Sample Height');
subplot(3,1,3);
stem(n, u, 'linewidth', 2);
grid on;
title('Reversed Unit Signal')
xlabel('Sample Number');
ylabel('Sample Height');
