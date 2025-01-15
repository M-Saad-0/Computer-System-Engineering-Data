%% Part (a): Stability Analysis
A = [0 1 0 0;
    0 -0.818 2.6727 0;
    0 0 0 1;
    0 -0.4545 31.1818 0];

B = [0;
    1.8182;
    0;
    4.5455];

C = [1 0 0 0];
D = [0];

sys = ss(A, B, C, D);

eigenvalues = eig(A);
disp('Eigenvalues of the system:');
disp(eigenvalues);

if all(real(eigenvalues) < 0)
    disp('The system is stable based on eigenvalue method.');
else
    disp('The system is unstable based on eigenvalue method.');
end

figure;
pzmap(sys);
title('Pole-Zero Map');
grid on;

poles = pole(sys);
disp('Poles of the system:');
disp(poles);

figure
rlocus(sys);
title('Root Locus');
grid on;

figure;
step(sys);
title('Step Response');
xlabel('Time (s)');
ylabel('Output');

%% Part (b): Simulate the Unstable System
sys_unstable = ss(A, B, C, D);
[num, den] = ss2tf(A, B, C, D);
roots(den)
tf(num, den)
t = 0:0.01:5;
u = ones(size(t));
[y_unstable, t, x] = lsim(sys_unstable, u, t);
figure;
plot(t, y_unstable);
title('Response of the Unstable System');
xlabel('Time (s)');
ylabel('Output');

%% Part (c): Controllability and Observability Analysis
controllability_matrix = ctrb(A, B);
observability_matrix = obsv(A, C);

disp('Rank of Controllability Matrix:');
disp(rank(controllability_matrix));
disp('Rank of Observability Matrix:');
disp(rank(observability_matrix));
disp('Rank of B:');
disp(rank(B));

desired_controller_poles = [-4, -3, -8, -2];
K = place(A, B, desired_controller_poles);
A_cl_controller = A - B * K;
sys_feedback_controller = ss(A_cl_controller, B, C, D);

desired_observer_poles = [-6, -7, -9, -8];
L = place(A', C', desired_observer_poles)';

A_observer_controller = [(A - B * K), (B * K);
                         zeros(size(A)), (A - L * C)];
B_observer_controller = [B; zeros(size(B))];
C_observer_controller = [C, zeros(size(C))];
D_observer_controller = D;

sys_observer_controller = ss(A_observer_controller, B_observer_controller, C_observer_controller, D_observer_controller);

%% Part (d): PID Controller Design
Kp = 10;
Ki = 5;
Kd = 2;

PID = pid(2.52e+15, 2.07e+22,7.69e+07);

plant = ss(A, B, C, D);
%pidTuner(plant, 'pid');
PID = pidtune(plant, 'pid');
sys_cl_pid = feedback(PID * plant, 1);
step(sys_cl_pid);

%% Part (d): Simulate Responses
figure(1)
step(sys_feedback_controller);
title('Step Response: Feedback Controller');
xlabel('Time (s)');
ylabel('Output');

figure(2)
step(sys_observer_controller);
title('Step Response: Observer Controller');
xlabel('Time (s)');
ylabel('Output');

figure(3)
step(sys_cl_pid);
title('Step Response: PID Controller');
xlabel('Time (s)');
ylabel('Output');

fprintf('Stability Analysis: Feedback Controller\n');
eig_feedback = eig(sys_feedback_controller.A);
disp('Eigenvalues:');
disp(eig_feedback);
figure;
pzmap(sys_feedback_controller);
title('Pole-Zero Map: Feedback Controller');
grid on;

fprintf('Stability Analysis: Observer Controller\n');
eig_observer = eig(sys_observer_controller.A);
disp('Eigenvalues:');
disp(eig_observer);
figure;
pzmap(sys_observer_controller);
title('Pole-Zero Map: Observer Controller');
grid on;

fprintf('Stability Analysis: PID Controller\n');
[eig_pid, poles_pid] = pzmap(sys_cl_pid);
disp('Poles (Eigenvalues):');
disp(eig_pid);
figure;
pzmap(sys_cl_pid);
title('Pole-Zero Map: PID Controller');
grid on;

figure;
rlocus(sys_feedback_controller);
title('Root Locus: Feedback Controller');
grid on;

figure;
rlocus(sys_observer_controller);
title('Root Locus: Observer Controller');
grid on;

figure;
rlocus(sys_cl_pid);
title('Root Locus: PID Controller');
grid on;

%% Part (e): Steady-State Error Analysis
sys_unstable = ss(A, B, C, D);
t = 0:0.01:5;
u = ones(size(t)); 
[y_unstable, t, x] = lsim(sys_unstable, u, t);
steady_state_error_unstable = 1 - y_unstable(end);
disp('Steady-State Error for Unstable System:');
disp(steady_state_error_unstable);

sys_feedback_controller_steady_state = feedback(sys_feedback_controller, 1);
[y_feedback_controller, t_feedback_controller] = step(sys_feedback_controller_steady_state, t);
steady_state_error_feedback = 1 - y_feedback_controller(end);
disp('Steady-State Error for Stable System (Feedback Controller):');
disp(steady_state_error_feedback);

sys_observer_controller_steady_state = feedback(sys_observer_controller, 1);
[y_observer_controller, t_observer_controller] = step(sys_observer_controller_steady_state, t);
steady_state_error_observer = 1 - y_observer_controller(end);
disp('Steady-State Error for Stable System (Observer Controller):');
disp(steady_state_error_observer);

%sys_cl_pid_steady_state = feedback(sys_cl_pid, 1);
%[y_pid, t_pid] = step(sys_cl_pid_steady_state, t);

%steady_state_error_pid = 1 - y_pid(end);
%disp('Steady-State Error for Stable System (PID Controller):');
%disp(steady_state_error_pid);
 

sys_cl_pid_steady_state = feedback(sys_cl_pid, 1);


poles_cl = pole(sys_cl_pid_steady_state);
if any(real(poles_cl) >= 0)
    disp('System is unstable. Steady-state error is undefined.');
else
    info = stepinfo(sys_cl_pid_steady_state);
    settling_time = info.SettlingTime;
    t = 0:0.01:(10*settling_time);

    [y_pid, t_pid] = step(sys_cl_pid_steady_state, t);
    steady_state_error_pid = 1 - y_pid(end);
    disp('Steady-State Error for Stable System (PID Controller):');
    disp(steady_state_error_pid);
end