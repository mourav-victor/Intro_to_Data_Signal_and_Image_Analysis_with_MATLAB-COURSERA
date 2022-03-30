%% Final project script 1
close all; clear all; clc;

% Define the filter size we will use in step 2:
filtsize = 85;

% Creating test image 'im' by splicing together two built in images.
% Also zero-padding (adding zeros around the border) with half the 
% filter size (filtsize) we will use so that the filter could be 
% centered on any actual image pixel, including those near the border.
% 'coins.png' contains bright nickels and dimes on a dark background
% 'eight.tif' contains dark quarters on a bright background, so we invert it
% to match 'coins.png'
im1 = imread('coins.png');
[r,c] = size(im1);
im2 = imread('eight.tif');
[r2,c2] = size(im2);

figure
subplot(2,1,1)
imshow(im1);
subplot(2,1,2)
imshow(im2);


filtsizeh = floor(filtsize/2);
im = zeros(r+r2+filtsize,c+filtsize);
im(filtsizeh+1:filtsizeh+r+r2,filtsizeh+1:filtsizeh+c) = [im1;255-im2(:,1:c)];
[r,c] = size(im);

figure
imagesc(im);colormap(gray);title('test image');axis equal;


% Initializing assessed/displayed variables as empty so that code is executable 
msk=[]; msk_dil=[]; msk_dil_erd=[]; centroid=[]; component_size=[]; 

%% 1. Localize the centroid of each coin
% Otsu threshold
thrsh = otsuthresh(imhist(im)) * 255
msk = im > thrsh;
figure; imagesc(msk); colormap(gray); title('Otsu'); axis equal;

% Dilate 
n = 8;
msk_dil = imdilate(msk,ones(n,n));
figure; imagesc(msk_dil); colormap(gray); title('Dilated'); axis equal;

% Erode 
m = 19;
msk_dil_erd = imerode(msk_dil,ones(m,m));
figure; imagesc(msk_dil_erd); colormap(gray); title('Eroded'); axis equal;

% Connected components to get centroids of coins:
CC = bwconncomp(msk_dil_erd)
centroid_struct = regionprops(msk_dil_erd)

centroid = zeros(CC.NumObjects, length(CC.ImageSize))
component_size = zeros(CC.NumObjects, 1)
for i=1:CC.NumObjects
    centroid(i,:) = centroid_struct(i).Centroid
    component_size(i) = centroid_struct(i).Area;
end

%% 2. Measure features for each coin using a bank of matching filters
% make matching filters to create features
% Define diameters to use for filters
dimediameter = 31;
quarterdiameter = 51;
nickeldiameter = 41;

% Initialize assessed variables
D=[]; nickelfilter = []; dimefilter = []; quarterfilter = [];

% Use the MakeCircleMatchingFilter function to create matching filters for dimes, nickels, and quarters
% (This is in a separate Matlab grader problem. Save your work, 
%       complete the corresponding grader problem and embed the solution 
%       in the helper function list below.)


figure;
subplot(1,3,1); imagesc(dimefilter); colormap(gray); title('dime filter'); axis tight equal;
subplot(1,3,2); imagesc(nickelfilter); colormap(gray); title('nickel filter'); axis tight equal;
subplot(1,3,3); imagesc(quarterfilter); colormap(gray); title('quarter filter'); axis tight equal;

% Evaluate each of the 3 matching filters on each coin to serve as 3 feature measurements 


D
