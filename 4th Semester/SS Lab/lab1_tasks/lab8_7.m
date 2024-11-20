N = -10:10;
imp = [zeros(1, 10) 1 zeros(1, 10)];
h = zeros(1, 21);
x = h;
for n = 8:15
    h(n) = 2*imp(n) + imp(n-1)+ 2*imp(n-2)+ 4*imp(n-3)+ 3*imp(n-4);
    x(n) = imp(n) + 4*imp(n-1)+ 3*imp(n-2)+ 2*imp(n-3);
end
c = conv(h, x);

stem(c, 'filled', 'linewidth', 2);
title('Convolving the signals made from Impulse Trains');
xlabel('Sample Number');
ylabel('Sample Height');
