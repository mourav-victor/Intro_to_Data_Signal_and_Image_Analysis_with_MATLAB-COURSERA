%% Spectrum plotting
close all;
clear all;
clc;

% load sound file
load('O-LEhuFnRO6ixIbhZ1Tu1g_eadf4fbaa1bc4e90a53fb4d94e33e96c_crickets.mat');

% listen to file, what is the secret message?
% soundsc(crickets, Fs);

% lets analise its frequency content using Fourier Transform
[yfft, f] = myfft(crickets, Fs);
plot(f, abs(yfft), '*');