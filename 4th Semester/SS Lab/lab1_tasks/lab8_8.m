imp = [zeros(1, 10) 1 zeros(1, 10)];
h1 = [1 3 2 1];
h2 = [1 1 2];
for n = 8:15
    x(n) = imp(n) + 4*imp(n-1)+ 3*imp(n-2)+ 2*imp(n-3);
end

y = conv(x, h1);
y = conv(y, h1);

stem(y, 'filled', 'linewidth', 2);
title('Output on applying two impulse responses.');
xlabel('Sample Number');
ylabel('Sample Height');
