x1= [1 2 2 1 1];
x2= [3 2 0 1 2];
for i=1: 5
    if x1(i)<x2(i)
        fprintf('x1 has smaller value at: %i', i);
        disp(' ');
    end
end
