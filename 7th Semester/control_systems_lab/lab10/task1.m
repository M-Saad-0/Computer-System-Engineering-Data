%% 11A   Task 1
num=[1 -2] 
denum=[1 2 4 8] 
sys=tf(num,denum) 
rlocus(sys) 
title('Root locus of G(S)H(S)=K(s - 2)/(s^3 + 2 s^2 + 4 s +8)')

%% 11A Task 2
num=[1 -2] 
denum=[1 2 4 8] 
sys=tf(num,denum) 
k=[0:1:10] 
rlocus(sys,k) 
title('Root Locus Plot of G(S)H(S)=K(S-2)/(S+2)(S+2j)(S+2j), for "K= 0 to 10"')

%% 11B Task 1
num=[1 2] 
denum=[1 2 3] 
sys=tf(num,denum) 
k = [1:10];
rlocus(sys) 
title('Root Locus Plot of G(S)H(S)=K(S+2)/(S^2+2S+3), for "K= 0 to 10"')

%% 11B Task 2
num=[1 2] 
denum=[1 2 3] 
sys=tf(num,denum) 
k=[0:1:10]; 
rlocus(sys,k) 
title('Root Locus Plot of G(S)H(S)=K(S+2)/(S^2+2S+3), for "K= 0 to 10"') 
