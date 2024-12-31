%y(5) + y(4)*y(3) + 3*y(2)*y(1) = 0

t = 0:0.1:10; 
Y0 = [0, 1 9 4 1]; 
[T, Y] = ode45('diff_func3', t, Y0);
plot(T,Y)