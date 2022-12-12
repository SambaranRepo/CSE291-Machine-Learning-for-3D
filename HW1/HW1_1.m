syms u v;
Dfp = [-sin(u)*sin(v), cos(u)*cos(v) ;
        cos(u)*sin(v), sin(u)*cos(v);
        0            , -sin(v)/2];

N = cross(Dfp(:,1), Dfp(:,2) );

DN = jacobian(N,[u,v]);

DNP = subs(DN, {u, v}, {pi/4, pi/6});

norm_DNP_c1 = norm(DNP(:,1));
norm_DNP_c2 = norm(DNP(:,2));

DNP(:,1) = DNP(:,1)/norm_DNP_c1
DNP(:,2) = DNP(:,2)/norm_DNP_c2
