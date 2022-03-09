%% Scatter Plots
clc;
clear all;
close all;

data = load('ATDq3iiOTHKw6t4ojtxyWw_9673e6a9348c413a82e8b1d65840e7df_EulerIdentity.mat')
x = data.x;
y = data.y;

scatter(x,y)
axis equal;