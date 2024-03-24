function [s1,s2,s3,s4]=intersection_two_conics(conic1,conic2)

        c1=conic1(:);
        A1=c1(1) ;
        B1=c1(2)* 2;
        D1=c1(3)* 2;
        C1=c1(5) ;
        E1=c1(6)* 2;
        F1=c1(9);

        c2=conic2(:);
        A2=c2(1) ;
        B2=c2(2)* 2;
        D2=c2(3)* 2;
        C2=c2(5) ;
        E2=c2(6)* 2;
        F2=c2(9);

        syms x y;
        eq1 = A1* x.^2 + B1*x*y + C1*y.^2+D1* x + E1* y +F1;
        eq2 = A2* x.^2 + B2*x*y + C2*y.^2+D2* x + E2* y +F2;
        eqns = [eq1 == 0, eq2 == 0];
        sol = solve(eqns, [x,y], 'IgnoreAnalyticConstraints',true,'Maxdegree',4);
        s1=[double(sol.x(1));double(sol.y(1)); 1];
        s2=[double(sol.x(2));double(sol.y(2)); 1];
        s3=[double(sol.x(3));double(sol.y(3));1 ];
        s4=[double(sol.x(4));double(sol.y(4));1 ];
end