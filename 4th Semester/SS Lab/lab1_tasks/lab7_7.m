n = -10:1:10;
s = sin(2*pi*n);
factor = 2;
y = interp(s, factor);
N = 1:length(y);
subplot(2,1,1);
stem(n, s, 'filled');  grid;
xlabel('Time');
ylabel('Amplitude');
title('Original Signal');
subplot(2,1,2);
stem(N, y, 'filled'); grid;
xlabel('Time');
ylabel('Amplitude');
title('Interpolated Signal');