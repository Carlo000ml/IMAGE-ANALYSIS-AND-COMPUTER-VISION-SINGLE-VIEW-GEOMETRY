function  fig = plot_lines(img,lines)



fig= figure();
imshow(img);
hold on;

for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:,1),xy(:,2),'r','LineWidth',1);
    text(lines(k).point1(1), lines(k).point1(2), int2str(k),'r' ,  'FontSize',15); 
    title("lines");
end
    
end