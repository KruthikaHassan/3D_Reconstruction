% This is a function to obtain corners in an image using the Harris Stephens Method
% The input parameters are the image, sigma (std.devation for the gaussian
% filter), kappa (hyperparameter), threshold (cut off value to obtain a
% score)

function [score, pts] = HarrisCorners(image, std, kappa, threshold)

% get the structure matrix or Harris, M
[xx, yy, xy] = findM(image);

% find the determinant and trace of the structure/Harris matrix
det = xx.*xyy - xy.*xy; 
trace = (xx + yy).^2;

% find the score 
score = det - kappa*trace;







end