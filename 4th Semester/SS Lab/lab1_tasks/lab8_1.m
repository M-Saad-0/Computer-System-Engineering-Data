n = -2:1/20:2;
sig = sin(2*pi*n);
unit = n>=0;
sig2 = sig.*unit;
title('All Signals');
xlabel('Sample Number');
ylabel('Sample Height');
subplot(2,1,1);
stem(n, sig, 'filled', 'linewidth', 2);
grid on;
title('Original Signal')
xlabel('Sample Number');
ylabel('Sample Height');
subplot(2,1,2);
stem(n, sig2,'filled',  'linewidth', 2);
grid on;
title('Causal Signal')
xlabel('Sample Number');
ylabel('Sample Height');
