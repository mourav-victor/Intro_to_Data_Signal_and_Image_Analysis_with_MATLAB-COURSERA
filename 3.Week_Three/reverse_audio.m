%% Reverse Audio
clc; clear all; close all;

%%[y,Fs] = audioread(filename)
data = load('F0Bk8Y-5TKWAZPGPueylDw_ba06a79237564ef3b5f29d5e8c302a33_ReverseAudio.mat');
sound_rev = data.y_rev;
sound_original = flip(sound_rev);
Fs = data.Fs;

soundsc(sound_original, Fs)