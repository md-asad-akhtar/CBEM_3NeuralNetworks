clc;
clear;


filename = fullfile('datasets','mnist_train_100.csv');
data = csvread(filename);

figure;
colormap('gray');  
axis off;
hold on;

digits_to_plot = 0:9;
samples_per_digit = 5;

for digit = digits_to_plot
    idx = find(data(:, 1) == digit);
    idx = idx(1:samples_per_digit);

    for j = 1:samples_per_digit
        sample = data(idx(j), 2:end);
        img = reshape(sample, [28, 28])';
        flipped = flipud(img);  % fix here

        % for positioning
        x_offset = (j-1) * 28;
        y_offset = (digit) * 28;

        imagesc(x_offset + (1:28), y_offset + (1:28), flipped);
    end
end

axis equal off;
title(' Digits 0–9 ');
