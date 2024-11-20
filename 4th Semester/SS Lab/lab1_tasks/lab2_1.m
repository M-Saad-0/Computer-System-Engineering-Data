A= [3 4 5; 1 3 7; 7 4 2];
B= zeros(3); 
%Replacing first column of B with first of A
B(:,1)= A(:,1);
%Subtracting each column of A from the previous one and
%then initializing it to B except first column
B(:,2:3)= A(:,2:3)-A(:,1:2)
