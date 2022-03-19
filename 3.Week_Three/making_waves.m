%% Making waves
clc;
clear all;

% Define T, Fs, and f (vector of sound frequencies)
T = 3;
Fs = 44100;
ts = 1/Fs;
E = [330, 247, 208, 165, 123, 82]
Em = [330, 247, 196, 165, 123, 82]
A = [110, 164, 220, 277, 330]

% Compute time vector, t
t = [0:ts:T-ts];

% Choose chords
f = E;

% Use a for-loop to construct y as a sum of cosines
y = zeros(1, length(t));
for i=1:length(f)
    y = y + cos(2*pi*f(i)*t);
end

soundsc(y,Fs);