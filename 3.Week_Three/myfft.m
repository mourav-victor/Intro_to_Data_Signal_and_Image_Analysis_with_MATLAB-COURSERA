function [yfft, f] = myfft(y,Fs)
    %compute lenght of y
    L = length(y);
    %compute the standard fft
    yfft = fft(y);
    %trim away the redundant part
    yfft = yfft(1:ceil((L+1)/2));
    %compute the frequencies to which each fft entry corresponds.
    f = (Fs*(0:(L/2))/L)';
end