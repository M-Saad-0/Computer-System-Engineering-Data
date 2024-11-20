function lab3_11
    Mat1 = input('Enter a vector: ');
    Mat2 = input('Enter another vector: ');
    while(length(Mat1)~=length(Mat2))
        Mat2 = input('The shoud be same enter again: ');
    end
    Matrix = Mat1*0;
    for i=1:length(Mat1)
        Matrix(i) = Mat1(i)^2 + Mat2(i)^2;
    end
    Matrix
end

    