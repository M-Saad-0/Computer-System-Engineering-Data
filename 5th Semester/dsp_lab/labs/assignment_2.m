fs = 1000;  %Sample Rate
t = 0:1/fs:1;  %Time Duration of the signal
f = 5;        %Frequency of 5Hz
A = 5;         

signal = A*sin(2*pi*f*t);   %Original Signal
noise1 = 0 + 2*randn(size(t));    %Noises with different mean 
noise2 = 0.5 + 3*rand(size(t));  %and standard deviation
noise3 = -0.5 + 4*rand(size(t)); 

ns1 = signal + noise1;         %Adding the generated noises to the signal 
ns2 = signal + noise2;
ns3 = signal + noise3;

subplot(2,2,1);         %And plotting the noises and the signal
plot(t, signal);
title(sprintf('Original signal of %dHz', f));

subplot(2,2,2);
plot(t, noise1);
title('Noise of mean 0 and standard deviation 2');

subplot(2,2,3);
plot(t, noise2);
title('Noise of mean 0.5 and standard deviation 3');

subplot(2,2,4);
plot(t, noise3);
title('Noise of mean -0.5 and standard deviation 4');

%%
subplot(2,2,1);         %And plotting the noises and the signal
plot(t, signal);
title(sprintf('Original signal of %dHz', f));

subplot(2,2,2);
plot(t, ns1);
title('Noised Signal 1');

subplot(2,2,3);
plot(t, ns2);
title('Noised Signal 2');

subplot(2,2,4);
plot(t, ns3);
title('Noised Signal 3');

%%
ns1_movmean_3 = smooth(ns1, 3);
ns1_movmean_5 = smooth(ns1, 5);
ns1_movmean_7 = smooth(ns1, 7);
ns2_movmean_3 = smooth(ns2, 3);
ns2_movmean_5 = smooth(ns2, 5);
ns2_movmean_7 = smooth(ns2, 7);
ns3_movmean_3 = smooth(ns3, 3);
ns3_movmean_5 = smooth(ns3, 5);
ns3_movmean_7 = smooth(ns3, 7);

% Plotting all moving averages
figure;
subplot(3,3,1);
plot(t, ns1_movmean_3, 'r');
title('ns1 with Moving Average (WS = 3)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,2);
plot(t, ns1_movmean_5, 'g');
title('ns1 with Moving Average (WS = 5)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,3);
plot(t, ns1_movmean_7, 'b');
title('ns1 with Moving Average (WS = 7)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,4);
plot(t, ns2_movmean_3, 'r');
title('ns2 with Moving Average (WS = 3)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,5);
plot(t, ns2_movmean_5, 'g');
title('ns2 with Moving Average (WS = 5)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,6);
plot(t, ns2_movmean_7, 'b');
title('ns2 with Moving Average (WS = 7)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,7);
plot(t, ns3_movmean_3, 'r');
title('ns3 with Moving Average (WS = 3)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,8);
plot(t, ns3_movmean_5, 'g');
title('ns3 with Moving Average (WS = 5)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,3,9);
plot(t, ns3_movmean_7, 'b');
title('ns3 with Moving Average (WS = 7)');
xlabel('Time (s)');
ylabel('Amplitude');
