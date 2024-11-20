x=input('Enter a matrix: ');
len_x=length(x);
y=input('Enter another matrix: ')
y_len=length(x);
while (x_len~=y_len)
    fprintf('Dimension not same...');
    y=input('');
    y_len=length(y);
end
subplot(3,1,1);
stem(x, filled);
xlabel('x-matrix');

subplot(3,1,2);
stem(y, filled);
xlabel('y-matrix');

subplot(3,1,3);
stem(x*y, filled);
xlabel('result matrix');