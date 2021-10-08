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
t = [0:0.01:90];
t0 = 0;
l0 = [0;1;1];
ls = ode(l0,t0,t,f);
title('Auto correlation for lorenz attractor')
[c, ind] = xcorr(ls(2,:), "coeff");
plot(ind, c)
a=get("current_axes")//get the handle of the newly created axes
a.axes_visible="on"; // makes the axes visible
a.font_size=3; //set the tics label font size
//a.x_location="top"; //set the x axis position
a.data_bounds=[0,0,-1;400,1,1]; //set the boundary values for the x, y and z coordinates.
a.sub_tics=[5,0];
a.labels_font_color=5;
//a.grid=[2,2];
a.box="off";
