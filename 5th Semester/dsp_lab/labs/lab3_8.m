%Sinc function
t = -5:0.05:5;
x = sinc(t);
plot(t,x, 'g', 'LineWidth', 2);
legend('Sinc Function');
xlabel('Sample Number');
ylabel('Amplitude');    