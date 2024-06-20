% MODIFIED EULER %
function [t,x,vx,a1,y,vy,a2,z,vz,a3,E] = Function_Modified_Euler_Method(af1,d1,v1,af2,d2,v2,af3,d3,v3,t0,tf,n,Ef)

% af_i and Ef refer to the acceleration functions (for each coordinate) and energy
% predefined by the problem, which depend on the velocity and the
% distance

% Initial conditions

dt = (tf - t0)/n;
E(1) = Ef(v1,v2,v3,d1,d2,d3);
a1(1) = af1(v1,v2,v3,d1,d2,d3); a2(1) = af2(v1,v2,v3,d1,d2,d3); a3(1) = af3(v1,v2,v3,d1,d2,d3);
%%%%%%%%%%%%%%%%%%%%%%%%

%Dimension
t = [t0 zeros(1,n)];
E = [E(1) zeros(1,n)];

a1 = [a1(1) zeros(1,n)]; vx = [v1 zeros(1,n)]; x = [d1 zeros(1,n)];
a2 = [a2(1) zeros(1,n)]; vy = [v2 zeros(1,n)]; y = [d2 zeros(1,n)];
a3 = [a3(1) zeros(1,n)]; vz = [v3 zeros(1,n)]; z = [d3 zeros(1,n)];
%%%%%%%%%%%%%%%%%%%%%%%%

% Iteraciones
for i = 1:n
    t(i+1) = t(i) + dt;
    
    xnew = x(i) + dt*vx(i);
    ynew = y(i) + dt*vy(i);
    znew = z(i) + dt*vz(i);
    
    vxnew = vx(i) + dt*a1(i);
    vynew = vy(i) + dt*a2(i);
    vznew = vz(i) + dt*a3(i);
    
    a1new = af1(vxnew,vynew,vznew,xnew,ynew,znew);
    a2new = af2(vxnew,vynew,vznew,xnew,ynew,znew);
    a3new = af3(vxnew,vynew,vznew,xnew,ynew,znew);
    
    x(i+1) = x(i) + (dt/2)*(vx(i) + vxnew);
    y(i+1) = y(i) + (dt/2)*(vy(i) + vynew);
    z(i+1) = z(i) + (dt/2)*(vz(i) + vznew);
    
    vx(i+1) = vx(i) + (dt/2)*(a1(i) + a1new);
    vy(i+1) = vy(i) + (dt/2)*(a2(i) + a2new);
    vz(i+1) = vz(i) + (dt/2)*(a3(i) + a3new);
    
    a1(i+1) = af1(vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
    a2(i+1) = af2(vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
    a3(i+1) = af3(vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
    
    E(i+1) = Ef(vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end