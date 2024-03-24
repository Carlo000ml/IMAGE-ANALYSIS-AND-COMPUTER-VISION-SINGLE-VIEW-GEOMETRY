function [angle_x,angle_y,angle_z]=orientation_3d(v)

        % axes 
        unit_x = [1, 0, 0]; 
        unit_y = [0, 1, 0]; 
        unit_z = [0, 0, 1]; 

  
        angle_x = compute_angle_between(v, unit_x)
        angle_y = compute_angle_between(v, unit_y) 
        angle_z = compute_angle_between(v, unit_z) 
       
end