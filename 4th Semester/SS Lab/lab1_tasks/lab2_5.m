L= [3,7,-4,12;-5,9,10,2];
A= [6,13,8,11;15,5,4,1];
%4x3 2nd and 3rd column contains all elements of A
B= [L(1:1,:)',A']
%3x4 2nd and 3rd row contains all A elements
C= [L(1:1,:);A]
%2x3 first two rows contains all A elements
D= [A(:,1:3)]