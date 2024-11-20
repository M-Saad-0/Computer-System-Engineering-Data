%Quadratic function
t = -5:0.5:5;
x = t.^2;
stem(t,x, 'y', 'LineWidth', 2);
legend('Quadratic Function');
xlabel('Sample Number');
ylabel('Amplitude');
