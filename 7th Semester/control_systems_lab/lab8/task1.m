%% Question 1
%Stable
den = [1 4 50];
num = 100;
TfQ1 = tf(num, den)
step(TfQ1)
%pzmap(TfQ1)
%% Question 2   
%Stable
den = poly([-1+4i, -1-4i]);
num = [5 3];
TfQ2Stable = tf(num, den)
step(TfQ2Stable)
%pzmap(TfQ2Stable)
%%
%Marginally Stable
den = poly([-2i, +2i]);
num = [4 9];
TfQ2MStable = tf(num, den)
step(TfQ2MStable)
%pzmap(TfQ2MStable)
%%
%Unstable
den = poly([3-2i, 3+2i]);
num = [9 4];
TfQ2UnStable = tf(num, den)
step(TfQ2UnStable)
%pzmap(TfQ2UnStable)