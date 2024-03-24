function [x,y]=corner_detector(img,sigma, border, harris_true)

% Derivative masks
    dx = [-1 0 1; 
          -1 0 1; 
          -1 0 1];
    dy = dx';

    Ix = conv2(img, dx, 'same');
    Iy = conv2(img, dy, 'same');

    % Gaussian filter
    g = fspecial('gaussian',max(1,fix(3*sigma)+1), sigma);

    % applying the gaussian filter to images
    Ix2 = conv2(Ix.^2, g, 'same');
    Iy2 = conv2(Iy.^2, g, 'same');
    Ixy = conv2(Ix.*Iy, g, 'same');
    % combining filtered images

    if harris_true
           k = 0.04;
           cim = (Ix2.*Iy2 - Ixy.^2) - k * (Ix2 + Iy2);
    
    else
           cim = (Ix2.*Iy2 - Ixy.^2)./(Ix2 + Iy2 + eps);
    end

    % Set to 0 near the boundaries
    cim(1:border,:)=0;
    cim(end-border:end,:)=0;
    cim(:,end-border:end)=0;
    cim(:,1:border)=0;

    % Threshold the cim
    T=3*mean(cim(:));
    CIM=cim;
    CIM(cim<T)=0;

    % perform nonlocal maximum suppression on the thresholded measure
    support=true(11);
    
    % compute maximum over a square neighbor of size 11 x 11
    maxima=ordfilt2(CIM,sum(support(:)),support);
    
    % determine the locations where the max over the neigh or 11x11
    % corresponds to the cim values
    [x,y]=find((cim==maxima).*(CIM>0));
end