amp1 = input('Enter amplitude for first signal....');
amp2 = input('Enter amplitude for second signal....');
t=-2:0.01:2;
x1=amp1*cos(2*pi*0.5*t);
x2=amp2*cos(2*pi*0.5*t);
resultant=x1+x2;
subplot(3,1,1);
plot(t,x1,'linewidth',3);
grid;
ylabel('Amplitude');
xlabel('Time');
title(sprintf('Cosine wave, Amp = %i, Freq = 0.5 HZ, Pha = 0RAD', amp1));
subplot(3,1,2);
plot(t,x2,'linewidth',3);
grid;
ylabel('Amplitude');
xlabel('Time');
title(sprintf('Cosine wave, Amp = %i, Freq = 0.5 HZ, Pha = 0RAD', amp2));
subplot(3,1,3);
plot(t,resultant,'linewidth',3);
grid;
ylabel('Amplitude');
xlabel('Time');
title('Sum of two cosine signals');