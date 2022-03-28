%% Image resample function
function img_resample = ImageResample(img, dim)
    % define r,c,nr,nc
    nr = dim(1);
    nc = dim(2);
    [r,c] = size(img);
    % use the meshgrid function to determine sampling coordinates
    [C, R] = meshgrid(1:(c-1)/(nc-1):c, 1:(r-1)/(nr-1):r);
    % use interp2 to interpolate
    img_resample = interp2(double(img), C, R);
end