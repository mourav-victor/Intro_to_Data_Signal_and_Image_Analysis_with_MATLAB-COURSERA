%% Brazil flag
close all; clear all; clc;

% define dimensions
width = 100;
height = 60;
p = 100/60;

% lets recreate brazil flag only using its pixels
flag = ones(60, 100);
imshow(flag);
pause;

% define pixels intensities
p1 = 400;
p2 = 500;
p3 = 200;

% first image: green
flag = p1 * flag;
imagesc(flag);

% second image: yellow
for i=1:height/2
    ii = floor(i*p);
    for j=1:ii
        % upper side
        flag(i, width/2-ii+j) = 500;
        flag(i, width/2+j) = 500;
        % lower side
        flag(height-i, width/2-ii+j) = 500;
        flag(height-i, width/2+j) = 500;
    end 
end
pause;
imagesc(flag);

% third image: blue
for i=15:height/2
    ii = floor(0.5*50*sin((pi/2)*(i/(height/2))));
    for j=1:ii
        % upper side
        flag(i, width/2-ii+j) = p3;
        flag(i, width/2+j) = p3;
        % lower side
        flag(height-i, width/2-ii+j) = p3;
        flag(height-i, width/2+j) = p3;
    end 
end
pause;
imagesc(flag);
title('BRASIL')
colorbar
