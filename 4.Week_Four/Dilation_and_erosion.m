%% Dilation and Erosion
clear all; close all;

img = imread('cameraman.tif');
msk = img <= 88;
msk_erode = imerode(msk,ones(7,7));
msk_erode_final = imdilate(msk_erode,ones(7,7));


subplot(2,2,1)
imshow(img)
title('cameraman')
subplot(2,2,2)
imshow(msk)
title('binary msk - threshold = 88')
subplot(2,2,3)
imshow(msk_erode)
title('erosion')
subplot(2,2,4)
imshow(msk_erode_final)
title('dilation')
