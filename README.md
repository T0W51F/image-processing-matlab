# Image Processing - Grayscale Conversion (MATLAB)

## Project Overview
This project demonstrates basic image processing techniques using MATLAB.
It converts a color (RGB) image into grayscale using two different methods
and compares the results visually.

## Features
- Grayscale conversion using manual luminosity formula
- Grayscale conversion using MATLAB built-in `rgb2gray()` function
- Side-by-side visual comparison of original and processed images
- Saves the grayscale output as a new image file
- Displays image statistics (mean, min, max pixel values)

## How It Works
The manual grayscale conversion uses the standard luminosity formula:

Gray = 0.2989×R + 0.5870×G + 0.1140×B

This formula weights each color channel based on human eye sensitivity.

## How to Run
1. Open MATLAB
2. Open the file `image_processing.m`
3. Press **Run**
4. Four figure windows will appear showing the comparison
5. A grayscale image will be saved as `grayscale_output.png`

## Requirements
- MATLAB (any recent version)
- Image Processing Toolbox (for `rgb2gray` and `imshow`)

## Output
- Figure 1: Original color image
- Figure 2: Grayscale (manual method)
- Figure 3: Grayscale (built-in method)
- Figure 4: Side-by-side comparison
