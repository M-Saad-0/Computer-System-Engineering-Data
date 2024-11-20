x1 = [3 1 1 0 0];
x2 = [4 2 1 0 0];
x3 = [3 2 1 2 3];

y1 = conv(x1, x2);
y1 = conv(y1, x3);

y2 = conv(x2, x3);
y2 = conv(y2, x1);

subplot(2,1,1);
stem(y1, 'linewidth', 2);
title('( x1 * x2 ) * x3');
xlabel('Sample Number');
ylabel('Sample Height');

subplot(2,1,2);
stem(y2, 'linewidth', 2);
title('x1 * ( x2 * x3 )');
xlabel('Sample Number');
ylabel('Sample Height');
