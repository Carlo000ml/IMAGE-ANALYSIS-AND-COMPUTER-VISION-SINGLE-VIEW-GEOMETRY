function conic=fit_conic_through_6_pts(p1,p2,p3,p4,p5,p6, image , plot)

        X=[p1(1);p2(1);p3(1);p4(1);p5(1);p6(1)];
        Y=[p1(2);p2(2);p3(2);p4(2);p5(2);p6(2)];

        A=[X.^2 X.*Y Y.^2 X Y ones(size(X))];

        sol=null(A)
        conic=[sol(1) sol(2)/2 sol(4)/2 ; sol(2)/2 sol(3) sol(5)/2 ; sol(4)/2 sol(5)/2 sol(6)];
        if plot
            plot_conic(conic,image)
        end
end
