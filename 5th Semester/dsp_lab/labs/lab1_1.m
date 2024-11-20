%%
%playing with Matlab
%d
pi * pi - 10;  %this is simple evaluation of an expression
sin(pi/4)  %this is simple evaluation of an expression
ans^2

%%
%e
x = sin(pi/5)  %Here we evaluate sin(pi/5) and store it in x
cos(pi/5)   
y = sqrt(1-x*x)  %it is simple taking square root of 
                 %(1-0.5878*0.5878)and store it in y
                 
                 
                 
                 
    
%%
%f
z = 3 + 4i;  %Here we declare a complex number
w = -3 + 4j;
real(z)  %this give real part of complex number
imag(z)  %this gives imaginary part
abs([z,w])  %sqrt(sqr(real)+sqr(imag))
conj([z+w])  %it give conjugate 
angle(z)  %it is giving phase angle of z
exp(j*pi)  %it evaluates e(to the power(j*pi))
exp(j*[pi/4, 0, -pi/4])  %it gives vecter of 3 elements






%%
%warm up
%a
jkl = 0:6  %array from 0 to 6
jkl = 2: 4: 17  %array from 2 to 17 with increment of 4
jkl = 99 : -1 : 88  %array from 99 to 88 with decrement of 1
ttt = 2 : 1/9 : 4  
tpi = pi * [0 : 0.1 : 2] %array from 0 to 2 with increment of 0.1 and multiply by pi
S
%%
%b
xx = [zeros(1,3), linspace(0, 1, 5), ones(1, 4)] %it will give a three zeros, 
                                                  %five elements from 0 to 1 and 4 ones
xx(4:6)  %prints element from 4 to 6
size(xx)  %give number of rows and columns
length(xx) %gives number of elements
xx(2:2:length(xx)) %prins only even index elements
xx(2:2:end)  %prins only even index elements
 %c
yy=xx; 
yy(4:6) = pi * (1:3)

xx(2:2:end) = pi^pi

