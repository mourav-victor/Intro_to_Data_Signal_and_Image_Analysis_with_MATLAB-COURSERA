function [img_filt,filt] = GaussianBlur(img,sigma)
    % Use fspecial to generate the Gaussian filter
    W = ceil(6*sigma);
    filt = fspecial('gaussian', [W,W], sigma);
    % Apply the filter to the image using convolution
    img_filt = conv2(img, filt, 'same');
end