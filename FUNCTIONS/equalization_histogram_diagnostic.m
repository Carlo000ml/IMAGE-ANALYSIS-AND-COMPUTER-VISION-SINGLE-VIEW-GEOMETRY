function equalized_image=equalization_histogram_diagnostic(gray_image)

    figure;
    plot_hist(gray_image)
    title('Histogram Original Image')
    
    
    % Perform histogram equalization
    figure;
    equalized_image = histeq(gray_image);
    imshow(equalized_image)
    
    %show the histogram
    figure;
    plot_hist(equalized_image)
    title('Histogram Equalized Image')

end
