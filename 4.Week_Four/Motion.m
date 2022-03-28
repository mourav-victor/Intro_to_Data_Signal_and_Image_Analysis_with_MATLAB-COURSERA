%% Motion
close all; clear all; clc;

img = imread('cameraman.tif');
subplot(2,1,1)
imshow(img)

% create and apply filter
h = fspecial('motion');
new_img = conv2(img, h, 'same');
new_img_uint8 = uint8(new_img);
subplot(2,1,2)
imshow(new_img_uint8)

average_pixel_intensity = mean(new_img, 'all');