function specmat(n)
    Matrix = ones(n);
    for j=1 : (n)^2
        if(j-1>n && mod(j,n)~=1)
            Matrix(j) = Matrix(j-1) + Matrix(j-n);
        end
    end
    Matrix
    