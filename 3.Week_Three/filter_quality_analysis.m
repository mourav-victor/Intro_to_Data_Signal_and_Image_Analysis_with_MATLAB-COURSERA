%% Filter quality analysis
close all;
clear all;
clc;

% Data
Fs = 1000;
freq_range = [100,200];
filt10 = fir1(10,freq_range/(Fs/2));
filt100 = fir1(100,freq_range/(Fs/2));
filt1000 = fir1(1000,freq_range/(Fs/2));

% Apply fft to filter
[h10, f10] = myfft(filt10,Fs);
[h100, f100] = myfft(filt100,Fs);
[h1000, f1000] = myfft(filt1000,Fs);

% Plot response
figure(1)
subplot(3,1,1)
plot(f10, abs(h10));
title('10-sized window')
subplot(3,1,2)
plot(f100, abs(h100));
title('100-sized window')
subplot(3,1,3)
plot(f1000, abs(h1000));
title('1000-sized window')

[~, idx] = min(abs(f10-90));
f90hz_10 = abs(h10(idx))
[~, idx] = min(abs(f100-90));
f90hz_100 = abs(h100(idx))
[~, idx] = min(abs(f1000-90));
f90hz_1000 = abs(h1000(idx))