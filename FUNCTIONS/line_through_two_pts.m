function line=line_through_two_pts(point_one , point_two , IM, plot)

        a=point_one(:);
        b=point_two(:);
        line=cross(a,b);
        line=line./line(3);
        if plot
           plot_line(line,IM);
        end
end
