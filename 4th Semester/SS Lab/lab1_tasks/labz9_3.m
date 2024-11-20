t = 0:0.0001:8;
x = 0;
for n=1:2:9
    x = x + sin(2*pi*t*2*n)/n;
end
plot(t, x, 'linewidth', 2);
title('A sine with harmonics 1st to 9th');
ylabel('Amplitude');
xlabel('Time');
