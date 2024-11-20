n = -10:10;
unit = [zeros(1, 10) ones(1, 11)];
impulse = unit;
for i=2:21
    impulse(i) = unit(i) - unit(i-1);
end
stem(n, impulse, 'filled');
axis([-10, 10, -2,  2]);
title('Impulse Function');
xlabel('Sample Number');
ylabel('Amplitude');
