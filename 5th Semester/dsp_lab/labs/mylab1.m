%%
%%Script
%a
xx = cos(pi* (0:11)/4)  %Will make a vector with 11 entries
                        %0:11 is multiplied by pi/4
%%
%b
yy = [];
for k = -5 : 5
    yy(k+6) = cos(k*pi/3);  %this loop makes a vector
                            %of cosine ranges value of k from -5 to 5
end         %yy(k+6) is necessary is because index cannot be negative
yy

%%
%c
x = [-3 -1 0 1 3];
y = x.*x - 3*x;
subplot(3,1,2)
plot(x, y)
title('Real Vector');
z = x + y * sqrt(-1);
subplot(3,1,1)
plot(z, 'r-');
title('Complex Vector');

%%
%d
tt = -1 : 0.01 : 1;
xx = cos(5*pi*tt);
zz = 1.4*exp(j*pi/2) * exp(j*pi*5*tt);
subplot(3,1,3);
plot(tt, xx, 'b-', tt, real(zz), 'r-');
grid on;
title('Test plot of sinusoid');
xlabel('Time (sec)');   
%%
%e
%run the file by 'mylab1'
%%
