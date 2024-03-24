function plot_hist(image)

    figure;
    imhist(image);
    title('Histogram of filtered Grayscale Image');
    xlabel('Pixel Intensity');
    ylabel('Frequency');