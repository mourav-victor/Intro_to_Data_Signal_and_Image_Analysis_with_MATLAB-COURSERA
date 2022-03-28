%% Cropping
close all; clear all; clc;

% load image, if not in your matlab, install image processing toolbox or
% use my_logo.tif instead
img = imread('logo.tif');
imshow(img)
size(img)

% press enter to visualize new_img
pause;
new_img = img(30:50, 20:90);
imshow(new_img);

