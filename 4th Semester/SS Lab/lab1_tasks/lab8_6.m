x = [1 3 2 1];
h = [1 1 2];

y1 = conv(x, h);

y2 = conv(h, x);

subplot(2,1,1);
stem(y1, 'filled', 'linewidth', 2);
title('x * h');
xlabel('Sample Number');
ylabel('Sample Height');

subplot(2,1,2);
stem(y2, 'filled', 'linewidth', 2);
title('h * x = x * h');
xlabel('Sample Number');
ylabel('Sample Height');
