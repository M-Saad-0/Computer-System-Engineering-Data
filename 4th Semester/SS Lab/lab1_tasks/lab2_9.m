A= [5285,-4467,105,-283;
    11348,-3355,1732,2271;
    5609,-6412,1324,1722;
    2735,1793,964,1307];
A(3,end) %This means element from the 3rd and last column
A(:) %This converts a matrix into column vector
A(:,end) %This gives last column
Y = linspace(20,100) %Will give a vector evenly between 20 and 100
Y = linspace(20,100,50) % (x2-x1)/(n-1) spaced vector