function R=get_radius(ax_pt , V_h, l1 , Hsr)

cross_line=line_through_two_pts(ax_pt,V_h,false,false);
pt=cross(cross_line , l1);
ax_pt_recon=Hsr*ax_pt;
ax_pt_recon=ax_pt_recon./ax_pt_recon(3);
pt_recon=Hsr*pt;
pt_recon=pt_recon./pt_recon(3);
R=norm(pt_recon-ax_pt_recon);
end
