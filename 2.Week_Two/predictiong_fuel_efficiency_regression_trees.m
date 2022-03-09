%% Predicting Fuel Efficiency Using Regression Trees
close all;
clear all;
clc;

load carbig
D = [Acceleration, Cylinders, Displacement, Horsepower, Model_Year, Weight];
y = MPG;
msk = ~ismissing(y);
D = D(msk,:);
y = y(msk);


D_train = D(1:2:end,:);
y_train = y(1:2:end);

D_test = D(2:2:end,:);
y_test = y(2:2:end);
rng(0);

mdl = fitrtree(D_train, y_train, 'OptimizeHyperparameters', 'auto');
% view(mdl, 'Mode', 'graph')

pred = predict(mdl, D_test);
% [y_test pred]

mse = mean((y_test - pred).^2)
[R, p] = corr(y_test, pred)
rg = [min([y_test;pred]), max([y_test;pred])]

figure(1)
plot(rg, rg)
hold on
scatter(y_test, pred)


