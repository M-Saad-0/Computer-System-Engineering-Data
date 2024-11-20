%Unit Impulse function
t = -5:0.5:5;
x1 = 1;
x2 = 0;
x = x1.*t==0 + x2.*t~=0;
stem(t,x, 'LineWidth', 2);
legend('Unit Impulse Function');
xlabel('Sample Number');
ylabel('Amplitude');
