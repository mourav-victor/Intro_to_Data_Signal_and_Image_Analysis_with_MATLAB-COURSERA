%% Color images
close all; clear all; clc;
img_values = load('Zy2eST-6Toqtnkk_ur6KFQ_0c2aeae487ab4d3baacc7c02153b8b15_RGB.mat');
img_size = size(img_values.B);
img = zeros([img_size, 3]);

% filling values for each chanel
img(:,:,1) = img_values.R;
img(:,:,2) = img_values.G;
img(:,:,3) = img_values.B;

% displaying image
figure(1)
%imshow(img)
imagesc(img)

figure(2)
subplot(3,1,1)
plot(imhist(img(:,:,1)))
subplot(3,1,2)
plot(imhist(img(:,:,2)))
subplot(3,1,3)
plot(imhist(img(:,:,3)))

% adding a randon wallpaper noise
rng(0);
r = randi([1 255],256,256);
white = (img(:,:,1) == 255 & img(:,:,2) == 255 & img(:,:,3) == 255);
img2 = r .* white

figure(3)
%imshow(img)
imagesc(img2)