%%
%Exponential Sequence
A = 1.5;
n = -10:10;

%for (-1 &lt; alpha &lt; 0), try alpha= -0.5
alpha = -0.5;
x = A * alpha .^ n;
subplot(2,2,1)
stem(n, x, 'r', 'LineWidth', 2);
title(sprintf('Exponential Sequence: x[n] = alpha^n for aplha = %d', alpha));
xlabel('Sample Number');
ylabel('Amplitude');
%for (0 &lt; alpha &lt; 1), try alpha=0.7
alpha = 0.7;
x = A * alpha .^ n;
subplot(2,2,2)
stem(n, x, 'g', 'LineWidth', 2);
title(sprintf('Exponential Sequence: x[n] = alpha^n for aplha = %d', alpha));
xlabel('Sample Number');
ylabel('Amplitude');
%for (|alpha| &gt; 1), try alpha= 1.1
alpha = 1.1;
x = A * alpha .^ n;
subplot(2,2,3)
stem(n, x, 'b', 'LineWidth', 2);
title(sprintf('Exponential Sequence: x[n] = alpha^n for aplha = %d', alpha));
xlabel('Sample Number');
ylabel('Amplitude');

%%
%Complex Sequence
A = 1.5;
n = -10:10;

%for (-1 &lt; alpha &lt; 0), try alpha= -0.5
alpha = -0.5;
x = abs(A) * exp(1j * (0* n));
subplot(2,2,1)
stem(n, x, 'r', 'LineWidth', 2);
axis([-10,10,0,2]);
title(sprintf('Complex Sequence: x[n] = e^{j(\\omega_0 n + \\phi)} for \\alpha = %d', alpha));
xlabel('Sample Number');
ylabel('Amplitude');
%for (0 &lt; alpha &lt; 1), try alpha=0.7
alpha = 0.7;
x = abs(A) * exp(1j * (pi/15 * n));
subplot(2,2,2)
stem(n, x, 'g', 'LineWidth', 2);
title(sprintf('Complex Sequence: x[n] = e^{j(\\omega_0 n + \\phi)} for \\alpha = %d', alpha));
xlabel('Sample Number');
ylabel('Amplitude');
%for (|alpha| &gt; 1), try alpha= 1.1
alpha = 1.1;
x = abs(A) * exp(1j * ( pi/15 * n));
subplot(2,2,3)
stem(n, x, 'b', 'LineWidth', 2);
title(sprintf('Complex Sequence: x[n] = e^{j(\\omega_0 n + \\phi)} for \\alpha = %d', alpha));
xlabel('Sample Number');
ylabel('Amplitude');