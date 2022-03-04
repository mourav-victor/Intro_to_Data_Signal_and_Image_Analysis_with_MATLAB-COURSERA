%% Detecting Outliers
clc;
clear all;
close all;

% load data
data_struct = load('SRVAPdivSYWVQD3Yr2mFUQ_5c54ac4610a8497e9a0f82cf5118e3cb_nodetraffic.mat')
data = data_struct.nodetraffic;

% calculate statistical parameters
data(1:10);
data_mean = round(mean(data))
data_std = round(std(data))

% detect outliers
% ps: outlier if stddistance is greater than 6
counter = 0;
for i=1:length(data)
    if(abs(standard_deviation_distance(data, data(i))) > 6)
        counter = counter + 1;
    end
end

display(counter)