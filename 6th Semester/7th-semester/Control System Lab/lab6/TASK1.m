numerator = [1 7 2];
denominator = [1 4 26 24];

[A, B, C, D] = tf2ss(numerator, denominator);

disp('State-Space Representation:');
disp('A matrix:');
disp(A);
disp('B matrix:');
disp(B);
disp('C matrix:');
disp(C);
disp('D matrix:');
disp(D);







A = [-4 -1.5; 4 0];
B =[2 ; 0];
C= [1.5 0.625];
D=[0]
sys_ss = ss(A, B, C, []);
final = tf(sys_ss)
disp('State-Space System:');
disp(final);






numerator = [8 10];
denominator = [1 5 1 5 13];

[A, B, C, D] = tf2ss(numerator, denominator);

disp('State-Space Representation:');
disp('A matrix:');
disp(A);
disp('B matrix:');
disp(B);
disp('C matrix:');
disp(C);
disp('D matrix:');
disp(D);






numerator = [1 2 12 7 6];
denominator = [1 9 13 8 0 0];

[A, B, C, D] = tf2ss(numerator, denominator);

disp('State-Space Representation:');
disp('A matrix:');
disp(A);
disp('B matrix:');
disp(B);
disp('C matrix:');
disp(C);
disp('D matrix:');
disp(D);







A = [0 1 5 0 ; 0 0 1 0 ; 0 0 0 1;-7 -9 -2 -3];
B =[0 ; 5; 8; 2];
C= [1 3 6 6];

sys_ss = ss(A, B, C, []);
final = tf(sys_ss)
disp('State-Space System:');
disp(final);



A = [3 1 0 4 -2; -3 5 5 2 -1 ; 0 1 -1 2 3 ; -7 -6 -3 -4 0; -6 0 4 -3 1];
B =[3 ;1 ;5 ;10; 2];
C= [1 -2 -9 7 6];

sys_ss = ss(A, B, C, []);
final = tf(sys_ss)
disp('State-Space System:');
disp(final);
