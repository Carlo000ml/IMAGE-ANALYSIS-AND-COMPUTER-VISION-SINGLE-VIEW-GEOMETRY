function point=intersection_point_3_lines(line1,line2,line3)

        parallel_lines=[line1' ;
                       line2' ;
                       line3'];
        [~,~,v]=svd(parallel_lines);
        V = v(:,end);
        point = V/V(3);
end

