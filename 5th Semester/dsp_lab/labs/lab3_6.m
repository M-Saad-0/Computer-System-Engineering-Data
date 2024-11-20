%Triangular function
t = -5:0.5:5;
a = 2;
x1 = 1-abs(t)/2;
x2 = 0;
x = x1.*(abs(t)<=a) + x2.*(abs(t)>a);
plot(t,x, 'r', 'LineWidth', 2);
legend('Traingular Function');
xlabel('Sample Number');
ylabel('Amplitude');
