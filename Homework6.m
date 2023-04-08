%% Simulation Tool 

%% A 
% p(t) is the pulse shape
% transform of a triangular pulse is a sinc squared
% triangle is the convolution of two rectangular pulses
Tp = 0.1;
dt = Tp/50;
t = -1: dt: 1;
p_t = (1 - (1/Tp)*abs(t)).* (abs(t) <= Tp); 

fast_trans = fft(p_t); 
figure(1);
plot(t, p_t); 

figure(2);
plot(fast_trans); 

%% C
N = 10;                % N = 10
Xn = 2*((rand(1,N)>0.5)-0.5);

%% D
