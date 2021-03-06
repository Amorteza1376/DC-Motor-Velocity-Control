clear
close all
clc
figure;
hold on;

s = tf('s');
 
J = 0.01;
b = 0.1;
R = 1;
L = 0.5;
K = 0.01;

H = K/ ((J*s + b)*(L*s + R) + K^2);

Kp = 100;

C = pid (Kp);

sys_cl = feedback (C * H, 1);
t = 0: 0.01: 5;

step (sys_cl, t)

grid

title ('Step Response with Proportional Control')
