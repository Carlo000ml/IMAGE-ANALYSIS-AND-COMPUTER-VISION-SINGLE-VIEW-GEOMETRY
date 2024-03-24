function [x,y]=get_pts_line_between_points(image,line, point1,point2)

        A = line(1);
        B = line(2);
        C = line(3);
        
        % Generate x values along the width of the image
        [rows, cols, ~] = size(image);

        x = point1(1):point2(1);
        
        % Calculate corresponding y values for the line equation: Ax + By + C = 0
        y = (-A * x - C) / B;

end
