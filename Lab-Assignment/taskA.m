% ID = 22-47019-1 AB = 22, GH = 91, CDEF = 4701, DG = 79
t = linspace(-5, 5,80); % 80 samples
CDEF = 4701;
A1 = 22; %AB
phase_degree1 = 79; %j1
phase_rad1 = deg2rad(phase_degree1); %j1 
x1 = A1*sin(2*pi*CDEF*t + phase_rad1);
figure;
plot(t, x1)
xlabel('t')
ylabel('X1')
title('sin function')
grid on;

% ID = 22-47019-1 , AB = 22, GH = 91, CDEF = 4701
A2 = 91; %GH
phase_degree2 = 30;% j2
phase_rad2 = deg2rad(phase_degree2); %j2
x2 = A2*cos(2*pi*CDEF*t + phase_rad2); % Here phase_rad2 = j2
figure;
plot(t, x2)
xlabel('t')
ylabel('X2')
title('cosine function')
grid on

%{ 
    %{ Evaluate signals at t = 0
x1_at_0 = AB * cos(0 + DG_rad); % x1(t) at t = 0
x2_at_0 = GH * cos(0 + j2_rad); % x2(t) at t = 0

% Display the results
fprintf('At t = 0:\n');
fprintf('x1(t) amplitude: %.2f\n', x1_at_0);
fprintf('x2(t) amplitude: %.2f\n', x2_at_0);

%Calculate the maximum amplitude of each signal
max_amplitude_x1 = AB;
max_amplitude_x2 = GH;

% Display the correct maximum amplitudes
fprintf('\nCorrect Maximum Amplitudes:\n');
fprintf('x1(t) maximum amplitude: %.2f\n', max_amplitude_x1);
fprintf('x2(t) maximum amplitude: %.2f\n', max_amplitude_x2); 
%}

