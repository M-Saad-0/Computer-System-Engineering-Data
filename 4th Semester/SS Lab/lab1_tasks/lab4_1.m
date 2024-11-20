x1= [2 5 8 4 3];
x2= [4 3 2 0 0];
VectorAdition= x1+x2;
VectorMultiplication= x1.*x2;
fprintf('Result for Vector Addition: ');
disp(VectorAdition);
fprintf('Result for Vector Multiplication: ');
disp(VectorMultiplication);

xA= [0 0 0 0 0];
xM= [0 0 0 0 0];
for i=1: 5
    xA(i)= x1(i) + x2(i);
    xM(i)= x1(i)*x2(i);
end
disp('Part 2');
fprintf('Result for Vector Addition: ');
disp(xA);
fprintf('Result for Vector Multiplication: ');
disp(xM);



