% This function is to find the structure matrix or Harris matrix
% by finding the gradients along x and y
%
%INPUT - image, standard deviation for the gaussian kernel
%OUTPUT - structure/harris matrix

function [xx,xy,yy] = findM(image, std)

% find the gradient using the central difference method
dx = zeros(size(image)); 
dy = zeros(size(image));
dx(:,2:end-1) = 0.5*(image(:,3:end) - image(:,1:end-2)); % 0.5*[f(x+1)-f(x-1)]
dy(2:end-1,:) = 0.5*(image(3:end,:) - image(1:end-2,:)); % 0.5*[f(y+1)-f(y-1)]

% constructing the isotropic gaussian kernel to obtain the structural
% matrix
%NOT ABLE TO IMPLEMENT


% construct elements of the structural matrix by convolving with the
% gaussian kernel
xx = conv2(dx.*dx, kernel,'same');
yy = conv2(dy.*dy, kernel, 'same');
xy = conv2(dx.*dy, kernel, 'same');





end