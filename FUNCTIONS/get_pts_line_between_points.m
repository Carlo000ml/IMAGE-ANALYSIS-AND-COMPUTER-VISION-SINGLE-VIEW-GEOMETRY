function [x,y]=get_pts_line_between_points(line, point1,point2)

        A = line(1);
        B = line(2);
        C = line(3);
        
        starting=int32(point1(1));
        ending=int32(point2(1));
        

        x = double(starting:ending);
        
        % Calculate corresponding y values for the line equation: Ax + By + C = 0
        y = (-A * x - C) / B;

end
