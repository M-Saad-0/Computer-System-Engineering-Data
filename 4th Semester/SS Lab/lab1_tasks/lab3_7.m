function lab3_7()   
    A = [5 12 3; 9 6 5; 2 2 1];
    B = [2 1 9; 10 5 6; 3 4 2];
    Sum = zeros(3);
    for i=1 : 9
        Sum(i) = A(i) + B(i);
    end
    Sum
    