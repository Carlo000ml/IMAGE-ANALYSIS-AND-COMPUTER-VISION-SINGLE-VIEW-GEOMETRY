function [Gx,Gy,Magnitude,Dir_Grad]=compute_gradient(filtered_image , type , plot)

    if strcmp(type, 'Perwitt')
        % horizontal
        smoothing_h=ones(3,2);
        dx=[1 -1];
        hp_x=conv2(smoothing_h , dx);
        
        % vertical
        smoothing_v=ones(2,3);
        dy=[1 ;-1];
        hp_y=conv2(smoothing_v , dy);
        
        
        Gx=conv2(filtered_image,hp_x, "same");
        
        Gy=conv2(filtered_image,hp_y, "same");
        title_gx='Perwitt  Gx';
        title_gy='Perwitt Gy';
    end

    if strcmp(type, 'Sobel')
        % horizontal
        smoothing_h=[1,1;2,2;1,1];
        dx=[1 -1];
        hp_x=conv2(smoothing_h , dx);
        
        % vertical
        smoothing_v=[1,2,1;1,2,1];
        dy=[1 ;-1];
        hp_y=conv2(smoothing_v , dy);
        
                
        Gx=conv2(filtered_image,hp_x, "same");
        
        Gy=conv2(filtered_image,hp_y, "same");
        title_gx='Sobel  Gx';
        title_gy='Sobel Gy';
    end
   
         
    if plot
        figure;
        imshow(Gx)
        title(title_gx)   
    end
    if plot
        figure;
        imshow(Gy)
        title(title_gy)

    end
    Magnitude=sqrt(Gx.^2 + Gy.^2);

    BORDER = 3;
    
    % remove boundaries as these are affected by zero padding
    Magnitude(1 : BORDER, :) = 0;
    Magnitude(end - BORDER : end, :) = 0;
    Magnitude(:, 1 : BORDER) = 0;
    Magnitude(:, end - BORDER : end) = 0;
    Magnitude=sqrt(Gx.^2 + Gy.^2);

    if plot
        figure;
        imshow(Magnitude)
        title("Gradient Magnitude")

    end
    
    

    Dir_Grad=atand(- sign(Gx).*Gy ./(abs(Gx)+eps));
    if plot
        figure;
        imshow(Dir_Grad)
        title("Gradient Directions")


       

    end
end
        


           