clear all; close all; clc;
t = -3:.001:3;
x = square(2*pi*t);

plot(t,x);
title('Signal carré')
xlabel('t (sec.)');
ylabel('Amplitude');
grid on;

t=-3:3;
y=(-1).^t;
figure;
plot(t,y);
title('Signal triangulaire')
xlabel('t (sec.)');
ylabel('Amplitude');
grid on;