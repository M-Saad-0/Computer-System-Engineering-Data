sig1= input('Enter a signal as a vector: ');
sig2= input('Enter another signal with same dimension: ');
while(length(sig1) ~= length(sig2))
    sig2= input('Enter another signal with same dimension: ');
end
mResult= multiply(sig1, sig2);
aResult= add(sig1, sig2);
fprintf('Multiplication result: ');
disp(mResult);
fprintf('Addition result: ');
disp(aResult);
