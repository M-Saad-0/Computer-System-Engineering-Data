DTS= input('Enter a Discrete Time Signal: ');
counter=0;
for i=1: length(DTS)
    if DTS(i)<-3 || DTS(i)>3
        counter = counter + 1;
    end
end
disp('The counter: ');
disp(counter);
