close all
t = -5:5;
x1 = 1;
x2 = 0;
c = (t>0).*x1 + (t<0).*x2 
plot(t,c, 'r-', 'LineWidth', 1)
axis([-6,6, -2, 2])
grid on
hold on 
stem(sin(t))