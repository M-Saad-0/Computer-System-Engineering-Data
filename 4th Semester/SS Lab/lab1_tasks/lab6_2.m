x = -1:0.005:1;
for n=1 : 8
    y = sin(n*pi*x);
    subplot(8,1,n);
    plot(x, y, 'linewidth', 2);
end
xlabel('x-axis');
ylabel('y-axis');
