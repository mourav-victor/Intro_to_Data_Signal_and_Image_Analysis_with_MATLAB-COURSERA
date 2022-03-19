load gong % loads gong sound y and sampling frequency Fs
% can play in MATLAB Online with soundsc(y,Fs)
soundsc(y, Fs);

% call spectrogram to get s,f,t
W = 256;
[s,f,t] = spectrogram(y,W,[],[],Fs);
size(s)

% Use imagesc to display it
imagesc(f,t,log(abs(s')))

colorbar
axis xy
xlabel('Frequency (Hz)')
ylabel('Time (s)')