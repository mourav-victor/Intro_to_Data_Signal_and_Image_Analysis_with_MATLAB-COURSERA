%% Edge strength
close all; clear all; clc;

img = imread('cameraman.tif');
edge_mag = SobelMagnitude(img);
figure;
imagesc(img); colormap(gray);
figure; 
imagesc(edge_mag); colormap(gray);