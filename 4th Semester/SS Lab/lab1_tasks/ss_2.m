t = -10:10;
u = [zeros(1, 10) 1 zeros(1, 10)];
x = zeros(1, 21);
for i=10:21
    x(i) = u(i)+2*u(i-2)+u(i-5);
end
h = x;
for i=1:21
    for j = 21:-1:1
        u(j) = u(i);
    end
end
u(1)=0; u(2)=1;
h = exp(2*t).*u;
stem(conv(x, h), 'filled', 'linewidth', 2);
grid on;
title('Convolution of x(t) and h(t)');
xlabel('Sample Number');
ylabel('Sample Height');
