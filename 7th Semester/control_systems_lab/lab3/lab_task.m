g1 = tf([1], [1, 1]);
g2 = tf([1], [1, 4]);
g3 = tf([1, 3], [1, 5]);

%feedback upper
s1= series(g1, g2);
A = parallel(s1, g3);
C = series(A, g3);

%feedback down
p1=parallel(g1, g2);
G = series(p1, g3);

f = feedback(C, G)
step(f)


