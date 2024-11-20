t = 0:0.0001:8;
ff = 0.5;
y = (4/pi)*sin(2*pi*ff*t);
for k=3:2:17
    fh = ff*k;
    x = (4/(k*pi))*sin(2*fh*pi*t);
    y = y+x;
end
plot(t, y);
title('A square with harmonics 1st to 17th');
ylabel('Amplitude');
xlabel('Time');
