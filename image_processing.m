% =========================================================
% Basic Image Processing Project - Grayscale Conversion
% Author: Your Name
% Description: This program loads a color image, converts it
%              to grayscale manually and using built-in functions,
%              and displays a comparison of the results.
% =========================================================

clc;        % Clear command window
clear;      % Clear workspace variables
close all;  % Close any open figure windows

% ---------------------------------------------------------
% MAIN SCRIPT
% ---------------------------------------------------------

% Load a sample image (MATLAB has built-in sample images)
originalImage = imread('peppers.png');  % Built-in MATLAB sample image

% Display original image
displayImage(originalImage, 'Original Color Image', 1);

% --- Method 1: Manual Grayscale Conversion ---
grayManual = manualGrayscale(originalImage);
displayImage(grayManual, 'Grayscale - Manual Method', 2);

% --- Method 2: Built-in MATLAB Function ---
grayBuiltin = rgb2gray(originalImage);
displayImage(grayBuiltin, 'Grayscale - Built-in rgb2gray()', 3);

% --- Show all three side by side ---
figure(4);
subplot(1, 3, 1); imshow(originalImage);  title('Original');
subplot(1, 3, 2); imshow(grayManual);     title('Manual Grayscale');
subplot(1, 3, 3); imshow(grayBuiltin);    title('Built-in Grayscale');
sgtitle('Image Processing - Grayscale Comparison');

% Save the grayscale output
imwrite(grayBuiltin, 'grayscale_output.png');
disp('Grayscale image saved as grayscale_output.png');

% Display image statistics
printImageStats(originalImage, grayBuiltin);


% ---------------------------------------------------------
% FUNCTION: manualGrayscale
% Converts an RGB image to grayscale using the luminosity formula:
%   Gray = 0.2989*R + 0.5870*G + 0.1140*B
% ---------------------------------------------------------
function grayImage = manualGrayscale(rgbImage)
    % Extract individual color channels
    R = double(rgbImage(:, :, 1));
    G = double(rgbImage(:, :, 2));
    B = double(rgbImage(:, :, 3));

    % Apply luminosity weighted formula
    grayDouble = 0.2989 * R + 0.5870 * G + 0.1140 * B;

    % Convert back to uint8 format (0-255)
    grayImage = uint8(grayDouble);
end


% ---------------------------------------------------------
% FUNCTION: displayImage
% Displays an image in a specified figure window with a title
% ---------------------------------------------------------
function displayImage(img, titleText, figureNumber)
    figure(figureNumber);
    imshow(img);
    title(titleText);
end


% ---------------------------------------------------------
% FUNCTION: printImageStats
% Prints basic statistics about the original and grayscale images
% ---------------------------------------------------------
function printImageStats(colorImg, grayImg)
    fprintf('\n========== Image Statistics ==========\n');
    fprintf('Original Image Size : %d x %d x %d\n', size(colorImg));
    fprintf('Grayscale Image Size: %d x %d\n', size(grayImg));
    fprintf('Mean Pixel Value (Grayscale): %.2f\n', mean(grayImg(:)));
    fprintf('Max  Pixel Value (Grayscale): %d\n', max(grayImg(:)));
    fprintf('Min  Pixel Value (Grayscale): %d\n', min(grayImg(:)));
    fprintf('======================================\n');
end
