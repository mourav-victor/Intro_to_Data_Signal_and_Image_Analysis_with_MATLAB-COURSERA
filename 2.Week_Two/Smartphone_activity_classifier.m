%% Smartphone activity classifier
close all;
clear all;
clc;

load humanactivity
D_train = feat(1:2:end,:);
class_train = actid(1:2:end);
D_test = feat(2:2:end,:);
class_test = actid(2:2:end);

% Create model and apply prediction
mdl = my_fitpca(D_train, class_train);
[class,score] = my_predictpca(mdl,D_test);

%Visualization, side by side
[class(:) class_test(:)] 

% Calculate accuracy in percent
accuracy = sum(class == class_test)/length(class) * 100