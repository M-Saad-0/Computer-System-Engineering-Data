t=-4:0.005:4;
x = sin(pi*t);
h = [0 2 2 2 0];
plot(conv(x, h), 'linewidth', 2);
grid on;
title('Convolution of x(t) and h(t)');
xlabel('Sample Number');
ylabel('Sample Height');
