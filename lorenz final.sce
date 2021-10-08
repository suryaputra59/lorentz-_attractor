function ldot = f(t,l)
    ldot = [sigma*(l(2,1)-l(1,1)); 
    (r-l(3,1))*l(1,1)-l(2,1);
    l(1,1)*l(2,1)-b*l(3,1)];
endfunction
/*x = l(1,1);
y = l(2,1);
z = l(3,1);*/
sigma = 10;
r = 28;
b = 2.66;
t = [0:0.001:20];
t0 = 0;
l0 = [0;1;1];
ls = ode(l0,t0,t,f);
param3d1(ls(1,:),ls(2,:),ls(3,:),90,80);
title('Lorenz attractor')
da=gda()
da.title.foreground = 12;
da.title.font_size = 5;
a = get("current_axes")
a.axes_visible = "off";
b = gca()
a.box = "off"
e=gce()
e.foreground=color('cyan');
