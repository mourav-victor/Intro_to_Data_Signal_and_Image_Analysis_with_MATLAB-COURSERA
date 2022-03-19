function y = BandPassFilter(x, Fs, freq_range, W)
    %Create the filter using 'fir1'
    h = fir1(W, 2*freq_range/Fs, 'bandpass'); % 'bandpass' is default
    %Apply the filter using 'conv'
    y = conv(x,h,'same');
end