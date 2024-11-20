num = [1];
den = [1 3 2];
sys = tf(num, den); 
disp('Step Function (step):');
step(sys); 
disp('Step response plotted for the system.');