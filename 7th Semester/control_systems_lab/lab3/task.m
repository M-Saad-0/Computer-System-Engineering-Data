g1 = tf([1], [1, 1]);
g2 = tf([1], [1, 4]);
g3 = tf([1, 3], [1, 5]);

G_I = parallel(g1, g2);
G_F = parallel(G_I, g3);
%step(G_F);

S_G_I = series(g1, g2);
S_G_F = series(S_G_I, g3)
step(S_G_F);




g_f = feedback(S_G_I, g3);
step(g_f);






