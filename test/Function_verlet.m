% VERLET %
function [t,x,vx,a1,y,vy,a2,z,vz,a3,E] = function_verlet(af1,d1,v1,af2,d2,v2,af3,d3,v3,t0,tf,n,Ef)
%af_i and Ef refer to the predefined acceleration functions (for each coordinate) 
%and energy defined by the problem, which depend on velocity and distance

%Initial conditions
dt = (tf - t0)/n;
E(1) = Ef(v1,v2,v3,d1,d2,d3);
a1(1) = af1(v1,v2,v3,d1,d2,d3); a2(1) = af2(v1,v2,v3,d1,d2,d3); a3(1) = af3(v1,v2,v3,d1,d2,d3);
%%%%%%%%%%%%%%%%%%%%%%%%

%Dimension
t = [t0 zeros(1,n-1)];
E = [E(1) zeros(1,n-1)];

a1 = [a1(1) zeros(1,n-1)]; vx = [v1 zeros(1,n-1)]; x = [d1 zeros(1,n-1)];
a2 = [a2(1) zeros(1,n-1)]; vy = [v2 zeros(1,n-1)]; y = [d2 zeros(1,n-1)];
a3 = [a3(1) zeros(1,n-1)]; vz = [v3 zeros(1,n-1)]; z = [d3 zeros(1,n-1)];
%%%%%%%%%%%%%%%%%%%%%%%%

%Second initial conditions
x(2) = x(1) + vx(1)*dt + (a1(1)*dt^2)/2; vx(2) = vx(1) + a1(1)*dt; 
y(2) = y(1) + vy(1)*dt + (a2(1)*dt^2)/2; vy(2) = vy(1) + a2(1)*dt; 
z(2) = z(1) + vz(1)*dt + (a3(1)*dt^2)/2; vz(2) = vz(1) + a3(1)*dt; 
a1(2) = af1(vx(2),vy(2),vz(2),x(2),y(2),z(2)); a2(2) = af2(vx(2),vy(2),vz(2),x(2),y(2),z(2)); a3(2) = af3(vx(2),vy(2),vz(2),x(2),y(2),z(2));


E(2) = Ef(vx(2),vy(2),vz(2),x(2),y(2),z(2));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Iterations
    for i=3:n
        t(i) = t(i-1) + dt;
        
        x(i) = 2*x(i-1) - x(i-2) + a1(i-1)*dt^2;
        vx(i) = (x(i-1) - x(i-2))/dt;
        
        y(i) = 2*y(i-1) - y(i-2) + a2(i-1)*dt^2;
        vy(i) = (y(i-1) - y(i-2))/dt;
        
        z(i) = 2*z(i-1) - z(i-2) + a3(i-1)*dt^2;
        vz(i) = (z(i-1) - z(i-2))/dt;
        
        a1(i) = af1(vx(i),vy(i),vz(i),x(i),y(i),z(i));
        a2(i) = af2(vx(i),vy(i),vz(i),x(i),y(i),z(i));
        a3(i) = af3(vx(i),vy(i),vz(i),x(i),y(i),z(i));
        
        E(i) = Ef(vx(i),vy(i),vz(i),x(i),y(i),z(i));
    
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

end