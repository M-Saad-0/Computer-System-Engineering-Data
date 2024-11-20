function dt = fifth_order_dff(t, y);
    dt = zeros(5, 1);
    dt(1) = y(2);
    dt(2) = y(3);
    dt(3) = y(4);
    dt(4) = y(5);
    dt(5) = -2*y(5)-24*y(4)-48*y(3)-24*y(2)-20*y(1)-10;
end