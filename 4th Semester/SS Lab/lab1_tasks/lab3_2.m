x=[-3,0,0,2,6,8];
y=[-5,-2,0,3,4,10];

for i=1:6
    if x(i)>y(i)
        fprintf('%i is greater at index %i',x(i),i);
        disp(' ');
    end
end
