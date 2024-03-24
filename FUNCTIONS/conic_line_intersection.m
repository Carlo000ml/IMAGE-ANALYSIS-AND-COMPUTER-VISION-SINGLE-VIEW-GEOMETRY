function [point1 , point2]=conic_line_intersection(conic,line, img,plot)

c1=conic(:);
A1=c1(1) ;
B1=c1(2)* 2;
D1=c1(3)* 2;
C1=c1(5) ;
E1=c1(6)* 2;
F1=c1(9);

A=line(1);
B=line(2);
C=line(3);

 syms x y;
eq1 = A1* x.^2 + B1*x*y + C1*y.^2+D1* x + E1* y +F1;
eq2 = A*x + B*y+C;
eqns = [eq1 == 0, eq2 == 0];
sol = solve(eqns, [x,y], 'IgnoreAnalyticConstraints',true,'Maxdegree',4);
point1=[double(sol.x(1));double(sol.y(1)); 1];
point2=[double(sol.x(2));double(sol.y(2)); 1];

if plot
  plot_two_intersections(point1,point2,img)
end

end