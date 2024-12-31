function dy = diff_func3(t, y)
    dy = zeros(5,1);
    dy(1) = y(2);
    dy(2) = y(3);
    dy(3) = y(4);
    dy(4) = y(5);
    dy(5) = -1*y(5)*y(4) + 3*y(3)*y(2) -1*y(1);
    