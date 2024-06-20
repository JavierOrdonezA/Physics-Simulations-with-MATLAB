clear all; close all;
%-------------- 3D Parabolic Shot---------------------------------
t0= 0; tf=5.1; N=100; v0x=10; v0y=10; v0z=v0x; g=9.81; c=0.04; m=2;
dt= (tf-t0)/N; t(1)=t0; x(1)=0; y(1)=0; z(1)=0;
dx= @(t,x) v0x*exp(-(c/m)*t);
dy= @(t,y) v0y*exp(-(c/m)*t);
dz= @(t,z) -m*g/c + (m*g/c + v0z)*exp(-(c/m)*t);
for n=1:N
  t(n+1)=t(n)+dt;
  xnew=x(n)+dt*dx(t(n),x(n));
  x(n+1)= x(n) + (dt/2)*((dx(t(n),x(n)))+dx(t(n+1),xnew));
  ynew=y(n)+dt*dy(t(n),y(n));
  y(n+1)= y(n) + (dt/2)*((dy(t(n),y(n)))+dy(t(n+1),ynew));
  znew=z(n)+dt*dz(t(n),z(n));
  z(n+1)= z(n) + (dt/2)*((dz(t(n),z(n)))+dz(t(n+1),znew));
  if z(n)<0;
    T=t(n);
    break
  endif
end

t1=t0:0.05:T;
xt=(m/c)*v0x*(1-exp(-(c/m)*t1));
yt=(m/c)*v0y*(1-exp(-(c/m)*t1));
zt=(m/c)*(m*g/c + v0z)*(1-exp(-(c/m)*t1))-(m*g/c)*t1;
figure(1); clf;
plot3(x,y,z,'*',xt,yt,zt,'-'); grid on;
title('Comparison between numerical and analytical methods'); legend('Numerical','Analytical')
xlabel('Distance (m)'); ylabel('Distance (m)'); zlabel('Distance (m)'); 