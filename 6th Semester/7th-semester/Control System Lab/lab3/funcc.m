% Initial conditions
y0 = [0; 1; 1];

% Time span
tspan = [0 10];
[t,y]=ode23('func',tspan,y0);

plot(t,y)