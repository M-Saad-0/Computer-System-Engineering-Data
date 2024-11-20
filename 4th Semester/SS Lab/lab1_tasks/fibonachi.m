function fi = fibonachi(N)
    f = 1;
    p = 1;
    n = 1;
    fi = [1, 1];
    if N==1;
        fi = 1;
    end
    for i=3: N
        p = f;
        f = n;
        n = f + p;
        fi(i) = n;
    end
end
    
%lab3_13