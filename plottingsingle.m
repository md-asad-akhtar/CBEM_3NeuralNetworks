clc;
clear;

% Load the MNIST CSV file
filename = fullfile('datasets','mnist_train_100.csv');
data = csvread(filename);
index = 3;  % Change this to try other digits

% Extract label and pixel data
label = data(index, 1);
pixels = data(index, 2:end);

% Reshape and plot the image
image = reshape(pixels, [28, 28])';
figure;
imshow(image, []);
title(['Label: ', num2str(label)]);