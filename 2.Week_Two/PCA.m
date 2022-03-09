%% PCA
clc;
clear all;
close all;

data = load('S14LsG_vSGKeC7Bv7zhinQ_5002ea1abb884b538a1f0eafcd8c8904_DimensionReduction.mat');
data = data.dataset;

% PCA function
[eig_values, D_pca, eig_vectors] = pca(data);
max_data_1st = max(D_pca(:,1))
max_data_2nd = max(D_pca(:,2))

% Scatter Plot
scatter(D_pca(:,1),D_pca(:,2));
axis equal;

