function mask=sobel_edge_detector(Magnitude, median_coeff, quantile_thresh, type)
    T1 = median_coeff * median(Magnitude(:));
    T2 = quantile(Magnitude(:) , quantile_thresh);
    T3 = (T1+T2)/2;


    [n_pts , hh_bins] = hist(Magnitude(:) , 200);

    figure;
    bar(hh_bins ,n_pts), title('histogram Magnitude');
    hold on
    plot([T3 , T3] , [min(n_pts) , max(n_pts)] , 'r' ,'LineWidth' , 1);
    hold off

    binary_mask=double(Magnitude > T3);

    if strcmp(type, 'binary')
        mask=binary_mask;
        figure;
        imshow(binary_mask)
        title('Binary Mask Sobel Edge Detector')
    end



    if strcmp(type, 'hard')
        mask=Magnitude.* binary_mask;
        figure;
        imshow(mask)
        title('Hard Thresholding Sobel Edge Detector')
    end
end

