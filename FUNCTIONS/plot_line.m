function plot_line_from_2_pts(line , image)

        A = line(1);
        B = line(2);
        C = line(3);
        
        % Generate x values along the width of the image
        [rows, cols, ~] = size(image);
        x_vals = 1:cols;
        
        % Calculate corresponding y values for the line equation: Ax + By + C = 0
        y_vals = (-A * x_vals - C) / B;
        
        figure;
        imshow(image);
        hold on;
        plot(x_vals, y_vals, 'r', 'LineWidth', 2); % Adjust line properties as needed
        hold off;
       
end
