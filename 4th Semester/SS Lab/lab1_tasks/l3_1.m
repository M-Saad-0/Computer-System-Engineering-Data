a=[1,2,3,4;5,6,7,8]
b=[8,7,6,5;4,3,2,1]
for i=1:2
    for j=1:4
        c(i,j) = a(i,j)+b(i,j)
    end
end
