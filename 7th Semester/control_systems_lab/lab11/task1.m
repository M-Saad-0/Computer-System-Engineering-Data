%% tf = k(S+3)(S+4)/(S+5)(S+6)
den = poly([-5, -6])
nem = poly([-3, -4])
TF = tf(nem, den);
sisotool(TF)
%%
num =[1 7 12]; 
den =[1 11 30]; 
sys=tf(num,den); 
sisotool(sys); 