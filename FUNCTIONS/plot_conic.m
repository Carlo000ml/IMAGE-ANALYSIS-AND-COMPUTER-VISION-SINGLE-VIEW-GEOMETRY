function plot_conic(conic,image)
            sol=conic(:);
            A=sol(1) ;
            B=sol(2)* 2;
            D=sol(3)* 2;
            C=sol(5) ;
            E=sol(6)* 2;
            F=sol(9);

            % Create a meshgrid covering the image size
            [rows, cols, ~] = size(image);
            [X, Y] = meshgrid(1:cols, 1:rows);
            
            % Evaluate the conic equation at each point of the meshgrid
            conic_eq = A*X.^2 + B*X.*Y + C*Y.^2 + D*X + E*Y + F;
            
            % Define a threshold to determine points lying on the conic
            threshold = 0.005; % Adjust this threshold based on your needs
            
            % Create a mask for points close to the conic
            conic_mask = abs(conic_eq) <= threshold;
            figure;
            % Overlay the conic on the image
            imshow(image); % Display the image
            hold on;
            
            % Plot points of the conic on the image
            plot(X(conic_mask), Y(conic_mask), 'r.'); % Modify the style/color as needed
            hold off;
end