%Signum Function
t = -5:0.5:5;
x1 = 1;
x2 = 0;
x3 = -1;
x = x1 .* (t>0) + x2.*(t==0) + x3.*(t<0);
stem(t,x, 'g', 'LineWidth', 2);
legend('Signum Function');
xlabel('Sample Number');
ylabel('Amplitude');
