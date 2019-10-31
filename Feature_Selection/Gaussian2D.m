% This function implements a simple 2D gaussian filter
% G(x,y) = K.exp(-(x^2+y^2)/2.sigma^2)
% K = normalization constant
% x,y = Pixel coordinates
% sigma = standard deviation of the distribution
% the kernel size is usually odd and of size mxm where 
% m = ceil(6.sigma x 6.sigma)
% the Gaussian 2D is linearly separable and can be written as two separate
% 1D Gaussian, G(x,y) = K1. exp(-x^2/2.sigma^2). K2 exp(-y^2/2.sigma^2)
% K = K1*K2
% the formula is assumed for a centered mean

clc;
clear all;
close all;

% read an image and convert to grayscale
I = imread("Lena.png");
I_gray = rgb2gray(I);

% construct 2D gaussian kernel
sigma = 1;
m = 5;
kernel = zeros(5,1);  % initialize the kernel of size mx1
norm = 0;

%Construct a 1D gaussian kernel
for i=1:5
    dist = (i-3)^2;
    kernel(i) = exp(-1*dist/(2*sigma*sigma));
    norm = norm + kernel(i);
end
kernel = kernel/norm;  % normalize the kernel

% construct  2D Gaussian kernel using the 1D kernel
kernel2D = kernel.*kernel';

%convolve with the image to obtain blurred image

[k,l] = size(I_gray);
output = zeros(k,l);
Im = padarray(I_gray,[2 2]);

%find the convolution
for i=1:k
    for j=1:l
        temp = Im(i:i+4, j:j+4);
        temp = double(temp);
        conv = temp.*kernel2D;
        output(i,j) = sum(conv(:));
    end
end

% convert from double to grayscale
output = uint8(output);

figure(1)
imshow(I_gray)
figure(2)
imshow(output)

