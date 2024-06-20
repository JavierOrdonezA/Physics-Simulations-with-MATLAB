function dx = fmotionCoupPendula(t,x,m1,m2,l1,l2)
dx = zeros(4,1);
% x, dx
g = 9.81;
dx(1) = x(2);
dx(2) = (-g*(2*m1+m2)*sin(x(1))-m2*g*sin(x(1)-2*x(3))-2*sin(x(1)-x(3))*m2*(x(4)^2*l2+x(2)^2*l1*cos(x(1)-x(3))))/ (l1*(2*m1+m2-m2*cos(2*x(1)-2*x(3))));
% z, dz
dx(3) = x(4);
dx(4) = (2*sin(x(1)-x(3))*(x(2)^2*l1*(m1+m2)+g*(m1+m2)*cos(x(1))+x(4)^2*l2*m2*cos(x(1)-x(3))))/(l2*(2*m1+m2-m2*cos(2*x(1)-2*x(3))));
end