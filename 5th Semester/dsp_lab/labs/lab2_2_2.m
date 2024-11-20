xx(4:6)  %prints element from 4 to 6
size(xx)  %give number of rows and columns
length(xx) %gives number of elements
xx(2:2:length(xx)) %prins only even index elements
xx(2:2:end)  %prins only even index elements
 %c
yy=xx; 
yy(4:6) = pi * (1:3)

xx(2:2:end) = pi^pi