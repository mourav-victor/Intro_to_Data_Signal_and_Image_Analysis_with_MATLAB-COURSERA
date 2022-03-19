function y = GaussianFilter(x, sigma)
    % Compute W by rounding up 6*sigma
    W = ceil(6*sigma);
    % Use fspecial to create our Gaussian filter
    h = fspecial('gaussian',[1,W],sigma);
    % convolve the signal with the filter
    y = conv(x,h,'same');
end