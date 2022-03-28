function [msk,thrsh] = OtsuThreshold(img)
% Define the Otsu threshold 'thrsh' using the histogram of img
hist = imhist(img);
subplot(2,1,1)
plot(img)
subplot(2,1,2)
plot(hist)
thrsh = otsuthresh(imhist(img)) * 255

% Apply the threshold to 'img' to make 'msk'
msk = img > thrsh;
figure
plot(msk)