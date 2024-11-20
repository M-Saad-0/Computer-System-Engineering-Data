t = 0:19;
delta_t = 1;  T = 2;
x = (t.^cos(t));
stem(t, x, 'filled');
title('A discrete power signal');
ylabel('Amplitude');
xlabel('Time Intervals');

power = sum((x))*(delta_t/T);

disp('This is Total Power of the signal: ');
disp(power);
