function dt = differential_task(t, y)
    dt = zeros(3, 1);
    dt(1) = y(2) * y(3);
    dt(2) = -y(3) * y(1);
    dt(3) = -0.51 * y(2)+y(1);
end
    