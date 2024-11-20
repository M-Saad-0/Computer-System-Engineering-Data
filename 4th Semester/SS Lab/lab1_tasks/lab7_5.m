n = -10:10;
unitI = [zeros(1,10) 1 zeros(1,10)];
x = zeros(1, 21);
for i=8:16
    x(i) = 2*unitI(i)+8*unitI(i-1)+4*unitI(i-3)+3*unitI(i-4);
end
subplot(2,1,1);
stem(n, x, 'filled', 'linewidth', 2); grid;
axis([-1, 5, -10, 10]);
xlabel('Sample Number');
ylabel('Sample Height');
title('Sum of unit impulse signals');
subplot(2,1,2);
stem(n, -x, 'filled', 'linewidth', 2);  grid;
xlabel('Sample Number');
ylabel('Sample Height');
axis([-1, 5, -10, 10]);
title('Flipped Signal');
