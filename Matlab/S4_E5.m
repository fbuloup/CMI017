%% Séquence IV - Exercice V
clear all; close all; clc;

%% Génération du signal
Fe = 1000;
Te = 1/Fe;
nbSamples = 100;
t = 0:Te:(nbSamples - 1)*Te;
x = 2*cos(2*pi*100*t) + 0.5*cos(2*pi*200*t) + cos(2*pi*250*t);

%% Calcul de la TFD (TFR)
fftX = fftshift(fft(x));

%% Module
magFFTX = abs(fftX)/nbSamples;

%% Vecteur fréquentiel
df = Fe/nbSamples;
f = -Fe/2:df:Fe/2 - df;

%% Tracé du spectre d'amplitude
stem(f, magFFTX);
title('Spectre d''amplitude de x(t)');
xlabel('fréquence (Hz)');
ylabel('Amplitude')