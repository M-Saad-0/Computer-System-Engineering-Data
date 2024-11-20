%% Question 6.1
A = [0, 1 0; 0, 0, 1; -24 -26 -9];
B = [0;0;1];
C = [2 7 1];
D = 0;
SS = ss(A, B, C, D);
T = tf(SS)

%% Question 6.2
A = [-4, -1.5; 4, 0];
B = [2;0];
C = [1.5 0.625];
D = 0;
SS = ss(A, B, C, D);
T = tf(SS)

%% Question 6.3
num = [8 10];
den = [1 5 1 5 13];
T3 = tf(num, den)   
[A, B, C, D] = tf2ss(num, den)

%% Question 6.4
num4 = [1 2 12 7 6];
den4 = [1 9 13 8 0 0];
T4 = tf(num4, den4);
[A, B, C, D] = tf2ss(num4, den4)

%% Question 6.5
A = [0 1 5 0; 0 0 1 0; 0 0 0 1; -7 -9 -2 -3];
B = [0;5;8;2];
C = [1 3 6 6];
D = 0;
SS = ss(A, B, C, D);
T5 = tf(SS)

%% Question 6.6 
A = [3 1 0 4 -2; -3 5 -5 2 -1;0 1 -1 2 8; -7 6 -3 -4 0;-6 0 4 -3 1];
B = [2;7;8;5;4];
C = [1 -2 -9 7 6];
D = 0;
SS = ss(A, B, C, D);
T6 = tf(SS)

%% Question 2 Mid Past Paper
num = [3 0 3];
den = [12 0 -7 0 13];
T3 = tf(num, den)   
[A, B, C, D] = tf2ss(num, den)

