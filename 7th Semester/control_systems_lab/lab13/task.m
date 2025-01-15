%% part 1
g = tf([1], [1 3 1]);
sys = feedback(g, 1);

step(sys)
hold on

%% part 2
    p = pidtune(g, 'pid')
    sys_new = feedback(p*g, 1);
    step(sys_new);