
clear;
clc;
clear all;
numerator = [10];
denominator = [1 2 20];
sys = tf(numerator, denominator);

% Create a figure for the Impulse Response
figure;
impulse(sys, 'r');  
title('Impulse Response');
xlabel('Time');
ylabel('Amplitude');

% Create a figure for the Step Response
figure;
step(sys, 'r');  % 'r' specifies red color
title('Step Response');
xlabel('Time');
ylabel('Amplitude');
