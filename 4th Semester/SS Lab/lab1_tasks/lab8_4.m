x = [2 4 6 4 2];
h = [3 -1 2 1];
c_sig = conv(x,h);
subplot(3,1,1);
stem(x, 'linewidth', 2);
grid on;
title('Signal One')
xlabel('Sample Number');
ylabel('Sample Height');
subplot(3,1,2);
stem(h, 'linewidth', 2);
grid on;
title('Signal Two')
xlabel('Sample Number');
ylabel('Sample Height');
subplot(3,1,3);
stem(c_sig, 'linewidth', 2);
grid on;
title('Convolved Signal');
xlabel('Sample Number');
ylabel('Sample Height');
