function P=get_cylinder_pts(center,Radius,H)

% Note here theta goes from 0.15 to pi+0.35, this has been done 
% Because the circle estimation was noise and so it wasn't 
% exactly matching the voult

teta=0.15:0.005:pi+0.35;
Hsr=inv(H);
recon_center=Hsr*center;
recon_center=recon_center./recon_center(3);


x=recon_center(1)+cos(teta)*Radius;
y=recon_center(2)+sin(teta)* Radius;

s=size(x);

P=[x;y;ones(s(2),1).'];

for i = 1:s(2)
A=H*P(:,i);
A=A./A(3);

P(:,i)=A;

end
end
