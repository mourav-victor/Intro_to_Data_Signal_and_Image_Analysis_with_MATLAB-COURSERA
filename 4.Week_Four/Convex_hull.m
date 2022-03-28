%% Convex Hull
close all; clear all; clc;
img = load('JWqdpgllRniqnaYJZaZ4Ww_391ab88ebe6a4325962a63e20755ae25_convhull.mat')
CH = bwconvhull(img.msk);

figure
subplot(2,1,1)
imagesc(img.msk)
subplot(2,1,2)
imagesc(CH)
