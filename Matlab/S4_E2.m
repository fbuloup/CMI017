%% Séquence IV - Exercice III
clear all; close all; clc; 

time = 0:.001:2;
x = 0;
for k = 0:10
    rho = 4/((2*k+1)*pi)^2; phi = -pi;
    x = x+2*rho*cos(2*pi*(2*k+1)*time+phi); 
    plot(time , x);
    title(['k = ', int2str(k)]); 
    xlabel('time'); 
    ylabel('x(t)'); 
    pause(0.15);
end