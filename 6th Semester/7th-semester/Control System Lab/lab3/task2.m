t = 0:0.1:10;
Y0 = [0 1];
[T, Y] = ode23("diff_func2", t, Y0)
plot(T,Y)