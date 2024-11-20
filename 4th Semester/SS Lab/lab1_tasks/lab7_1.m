n = -10:10;
signum = [-1*ones(1, 10) 0 ones(1, 10)];
stem(n, signum, 'filled');
title('Signum Function');
xlabel('Sample Number');
ylabel('Amplitude');
grid;
