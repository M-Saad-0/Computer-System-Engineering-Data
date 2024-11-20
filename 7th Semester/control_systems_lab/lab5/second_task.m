function dt = second_task(t, y)
    dt = zeros(2,1);
    dt(1)=y(2);
    dt(2)=-(y(1)^2)*y(2) + y(2) - y(1); %dt(1)=y(2)
end