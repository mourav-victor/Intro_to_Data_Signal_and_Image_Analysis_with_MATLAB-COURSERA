%% Noise filter
close all; clear all; clc;

% load file
[y, Fs] = audioread('NoisyKeywordSpeech-16-16-mono-34secs.flac');
y = y(1:200000);
% soundsc(y, Fs);
audio_time_in_seconds = length(y)/Fs

% apply fft and plot spectrum
[y_fft, f] = myfft(y, Fs);
figure(1)
subplot(3,1,1)
plot(f, abs(y_fft));
xlabel('Frequency - Hz')

% filter high frequencies
W = 100;
h_hp = fir1(W,3400/(Fs/2),'LOW');
y_filtered = conv(y,h_hp,'same');

% apply fft and plot spectrum
[y_fft_filtered, f2] = myfft(y_filtered, Fs);
subplot(3,1,2)
plot(f2, abs(y_fft_filtered));
xlabel('Frequency - Hz')
%soundsc(y_filtered, Fs);

% filter high frequencies
W = 100;
freq_range = [400,3400];
h_bp = fir1(W,freq_range/(Fs/2));
y_filtered_bp = conv(y,h_bp,'same');

% apply fft and plot spectrum
[y_fft_filtered_bp, f3] = myfft(y_filtered_bp, Fs);
subplot(3,1,3)
plot(f3, abs(y_fft_filtered_bp));
xlabel('Frequency - Hz')
%soundsc(y_filtered_bp, Fs);

