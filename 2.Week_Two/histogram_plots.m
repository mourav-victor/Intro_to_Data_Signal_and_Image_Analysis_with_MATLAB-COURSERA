%% Histogram Plots
close all;
clear all;
clc;

load carbig
histogram(MPG, 6)

counter = 0;
for i=1:length(MPG)
    if MPG(i) > 41 && MPG(i) < 48
        counter = counter + 1;
    end 
end
display(counter);