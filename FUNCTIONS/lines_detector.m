function lines=lines_detector( edges )


    [H,T,R] = hough(edges, 'RhoResolution', 0.5, 'Theta', -90:0.5:89.5);
    
    % Hough peaks for line detection
    P = houghpeaks(H,50,'threshold',ceil(0.3*max(H(:))), 'NHoodSize', [97 37]);
    
    % line formatting through Hough Transformation
    lines = houghlines(edges,T,R,P,'FillGap',200,'MinLength',500);

end