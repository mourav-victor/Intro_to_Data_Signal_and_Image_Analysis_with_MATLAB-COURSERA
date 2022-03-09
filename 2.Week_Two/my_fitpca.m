function mdl = my_fitpca(D,class)

    % Find the number of unique classes from the class vector, numclasses
    [classes, idxa, idxc] = unique(class);
    numclasses = length(classes);
    
    % For each class, use 'pca' to find the eigenvectors (1st output), eigenvalues (3rd output), and mean feature vector (6th output)
    for i=1:numclasses
        [eigvects,~,eigvals,~,~,mu] = pca(D(class == classes(i),:));
        % create a subfield 'class' within the output struct mdl, which is a vector of length numclasses
        % mdl.class(i) has subfields 'eigvects' (the eigenvectors matrix output from 'pca', transposed), 'eigvals' (the eigenvalues output from 'pca'), and 'mu' (the mean feature vector).
        mdl.class(i).eigvects = eigvects';
        mdl.class(i).eigvals = eigvals;
        mdl.class(i).mu = mu;
        
    end
end
