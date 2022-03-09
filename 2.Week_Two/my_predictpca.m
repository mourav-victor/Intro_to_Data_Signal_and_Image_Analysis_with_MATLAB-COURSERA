function [class,score] = my_predictpca(mdl,data)
    % Initialize output 'class' and 'score' to Mx1 zero vectors]
    [r, c] = size(data);
    class = zeros(r,1);
    score = zeros(r,1);
    
    % Loop over the M samples, to classify each 'i'th sample
    for i=1:r
        % In a nested loop, loop over each 'j'th class to compare the 'i'th sample to the 'j'th class.
        for j=1:length(mdl.class)
            % Within the loop, find the Mahalanobis distance from the 'i'th sample feature vector to the 'j'th class pca model
            mdistance(j) = MahalanobisDistance(mdl.class(j), data(i,:));
        % The minimium Mahalanobis distance across the class pca models is used to choose our classification for the 'i'th sample
        % The classification and the Mahalanobis distance are stored in class(i) and score(i)
        [score(i), class(i)] = min(mdistance);
        end
    end
end

% embed your MahalanobisDistance function you created in the previous assignment here:
function [md,b,std_per_mode] = MahalanobisDistance(pcamdl,v)
    % compute b, our PCA coordinates for v
    b = pcamdl.eigvects*(v-pcamdl.mu)';
    
    % compute std_per_mode, the standard deviation distance from the mean for v for each mode of variation
    std_per_mode = abs(b)./sqrt(pcamdl.eigvals);
    
    % compute md, the Mahalanobis distance
    md = sqrt(sum(std_per_mode.*std_per_mode));
end