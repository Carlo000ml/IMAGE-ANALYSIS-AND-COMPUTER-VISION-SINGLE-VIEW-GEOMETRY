
function point=find_point_from_detected_edges(edges ,original_image, plot_pt)


        title('Select Two Points on the Edge Image');
        imshow(edges)
        
        hold on;
        [x , y]= getpts;
        hold off;
        
        point1=[x(1);y(1)];
        point2=[x(2);y(2)];
        
        distance = norm(point2 - point1);
        
        % Set the number of points along the line segment based on distance
        numPoints = round(distance);
        
        lineCoordinates = [linspace(point1(1), point2(1), numPoints); linspace(point1(2), point2(2), numPoints)]';
        
        edgePointsOnSegment = edges(sub2ind(size(edges), round(lineCoordinates(:, 2)), round(lineCoordinates(:, 1))));
        
        %selectedEdgePoints = lineCoordinates(edgePointsOnSegment == 1, :);
        firstEdgePoint=[];
        % Iterate over the points along the line segment
        for i = 1:numPoints
            x = round(lineCoordinates(i, 1));
            y = round(lineCoordinates(i, 2));
        
            % Check if the point is within the image bounds and has a value of 1 in the edge image
            if x >= 1 && x <= size(edges, 2) && y >= 1 && y <= size(edges, 1) && edges(y, x) > 0
                % Store the coordinates of the first edge point and break out of the loop
                firstEdgePoint = [x, y];
                break;
            end
        end
        point=firstEdgePoint
         
        if plot_pt

                % Display the original image with the selected points and the line segment
                figure;
                imshow(original_image); % Use the original image
                hold on;
                
                % Plot the line segment on the original image
                %plot(lineCoordinates(:, 1), lineCoordinates(:, 2), 'r', 'LineWidth', 2);
                
                % Plot the selected points on the line segment
                plot(firstEdgePoint(1,1), firstEdgePoint(1,2), 'go', 'MarkerSize', 5);
                
                title('Selected Point on the  Original Image');
                hold off;
                

        end

        point=[point(1,1);point(1,2);1];
end


