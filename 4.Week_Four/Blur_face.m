%% Blur face
close all; clear all; clc;

% load img
img = imread('cameraman.tif');
subplot(2,2,1)
imshow(img)

% get ROI (face)
face = img(35:85, 90:140);
subplot(2,2,2)
imshow(face)

% apply filter
gaussian_filter = fspecial('gaussian', [3,3], 5)
face_filtered = conv2(face, gaussian_filter, 'same');
face_filtered = uint8(face_filtered);
subplot(2,2,4)
imshow(face_filtered)

% insert to img
edge = 1;
img_cesured = img;
img_cesured(35+edge:85-edge, 90+edge:140-edge) = face_filtered(edge+1:end-edge, edge+1:end-edge);
subplot(2,2,3)
imshow(img_cesured)

figure
imshow(img_cesured)

figure
imshow(img)