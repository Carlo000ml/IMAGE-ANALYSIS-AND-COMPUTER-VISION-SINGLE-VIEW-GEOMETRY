function plot_two_intersections(point1,point2,img)
figure;
imshow(img);
hold on;
plot(point1(1),point1(2),'g+', 'LineWidth', 1)
text(point1(1),point1(2) , 'point1' )
hold on;
plot(point2(1),point2(2),'g+', 'LineWidth', 1)
text(point2(1),point2(2) , 'point1' )
hold off;
end