%Ramp function
t = -5:0.5:5;
x1 = 1;
x2 = 0;
x = t(t>=0);
stem(t(t>=0),x, 'r', 'LineWidth', 2);
legend('Ramp Function');
xlabel('Sample Number');
ylabel('Amplitude');
