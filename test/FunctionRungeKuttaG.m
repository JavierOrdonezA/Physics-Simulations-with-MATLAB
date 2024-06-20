function [t,x,vx,a1,y,vy,a2,z,vz,a3,E] = FunctionRungeKuttaG(af1,d1,v1,af2,d2,v2,af3,d3,v3,t0,tf,n,Ef)
%Initial conditions
dt = (tf - t0)/n;
E(1) = Ef(t0,v1,v2,v3,d1,d2,d3);
a1(1) = af1(t0,v1,v2,v3,d1,d2,d3); a2(1) = af2(t0,v1,v2,v3,d1,d2,d3); a3(1) = af3(t0,v1,v2,v3,d1,d2,d3);
%%%%%%%%%%%%%%%%%%%%%%%%

%Dimension
t = [t0 zeros(1,n-1)];
E = [E(1) zeros(1,n-1)];

a1 = [a1(1) zeros(1,n-1)]; vx = [v1 zeros(1,n-1)]; x = [d1 zeros(1,n-1)];
a2 = [a2(1) zeros(1,n-1)]; vy = [v2 zeros(1,n-1)]; y = [d2 zeros(1,n-1)];
a3 = [a3(1) zeros(1,n-1)]; vz = [v3 zeros(1,n-1)]; z = [d3 zeros(1,n-1)];
%%%%%%%%%%%%%%%%%%%%%%%%

%Iterations
    for i=1:n
        t(i+1) = t(i) + dt;
        
        kvx1 = dt*af1(t(i),vx(i),vy(i),vz(i),x(i),y(i),z(i));
        kvy1 = dt*af2(t(i),vx(i),vy(i),vz(i),x(i),y(i),z(i));
        kvz1 = dt*af3(t(i),vx(i),vy(i),vz(i),x(i),y(i),z(i));
        
        kx1 = dt*(vx(i) + (dt/2)*af1(t,vx(i),vy(i),vz(i),x(i),y(i),z(i)));
        ky1 = dt*(vy(i) + (dt/2)*af2(t,vx(i),vy(i),vz(i),x(i),y(i),z(i)));
        kz1 = dt*(vz(i) + (dt/2)*af3(t,vx(i),vy(i),vz(i),x(i),y(i),z(i)));
        
        
        kvx2 = dt*af1(t(i) + dt/2,vx(i) + kvx1/2,vy(i) + kvy1/2,vz(i) + kvz1/2,x(i) + kx1/2,y(i) + ky1/2,z(i) + kz1/2);
        kvy2 = dt*af2(t(i) + dt/2,vx(i) + kvx1/2,vy(i) + kvy1/2,vz(i) + kvz1/2,x(i) + kx1/2,y(i) + ky1/2,z(i) + kz1/2);
        kvz2 = dt*af3(t(i) + dt/2,vx(i) + kvx1/2,vy(i) + kvy1/2,vz(i) + kvz1/2,x(i) + kx1/2,y(i) + ky1/2,z(i) + kz1/2);
        
        kx2 = dt*(vx(i) + (dt/2)*af1(t(i) + dt/2,vx(i) + kvx1/2,vy(i) + kvy1/2,vz(i) + kvz1/2,x(i) + kx1/2,y(i) + ky1/2,z(i) + kz1/2));
        ky2 = dt*(vy(i) + (dt/2)*af2(t(i) + dt/2,vx(i) + kvx1/2,vy(i) + kvy1/2,vz(i) + kvz1/2,x(i) + kx1/2,y(i) + ky1/2,z(i) + kz1/2));
        kz2 = dt*(vz(i) + (dt/2)*af3(t(i) + dt/2,vx(i) + kvx1/2,vy(i) + kvy1/2,vz(i) + kvz1/2,x(i) + kx1/2,y(i) + ky1/2,z(i) + kz1/2));
        
        
        kvx3 = dt*af1(t(i) + dt/2,vx(i) + kvx2/2,vy(i) + kvy2/2,vz(i) + kvz2/2,x(i) + kx2/2,y(i) + ky2/2,z(i) + kz2/2);
        kvy3 = dt*af2(t(i) + dt/2,vx(i) + kvx2/2,vy(i) + kvy2/2,vz(i) + kvz2/2,x(i) + kx2/2,y(i) + ky2/2,z(i) + kz2/2);
        kvz3 = dt*af3(t(i) + dt/2,vx(i) + kvx2/2,vy(i) + kvy2/2,vz(i) + kvz2/2,x(i) + kx2/2,y(i) + ky2/2,z(i) + kz2/2);
        
        kx3 = dt*(vx(i) + (dt/2)*af1(t(i) + dt/2,vx(i) + kvx2/2,vy(i) + kvy2/2,vz(i) + kvz2/2,x(i) + kx2/2,y(i) + ky2/2,z(i) + kz2/2));
        ky3 = dt*(vy(i) + (dt/2)*af2(t(i) + dt/2,vx(i) + kvx2/2,vy(i) + kvy2/2,vz(i) + kvz2/2,x(i) + kx2/2,y(i) + ky2/2,z(i) + kz2/2));
        kz3 = dt*(vz(i) + (dt/2)*af3(t(i) + dt/2,vx(i) + kvx2/2,vy(i) + kvy2/2,vz(i) + kvz2/2,x(i) + kx2/2,y(i) + ky2/2,z(i) + kz2/2));
        
        
        kvx4 = dt*af1(t(i) + dt,vx(i) + kvx3,vy(i) + kvy3,vz(i) + kvz3,x(i) + kx3,y(i) + ky3,z(i) + kz3);
        kvy4 = dt*af2(t(i) + dt,vx(i) + kvx3,vy(i) + kvy3,vz(i) + kvz3,x(i) + kx3,y(i) + ky3,z(i) + kz3);
        kvz4 = dt*af3(t(i) + dt,vx(i) + kvx3,vy(i) + kvy3,vz(i) + kvz3,x(i) + kx3,y(i) + ky3,z(i) + kz3);
        
        kx4 = dt*(vx(i) + (dt/2)*af1(t(i) + dt,vx(i) + kvx3,vy(i) + kvy3,vz(i) + kvz3,x(i) + kx3,y(i) + ky3,z(i) + kz3));
        ky4 = dt*(vy(i) + (dt/2)*af2(t(i) + dt,vx(i) + kvx3,vy(i) + kvy3,vz(i) + kvz3,x(i) + kx3,y(i) + ky3,z(i) + kz3));
        kz4 = dt*(vz(i) + (dt/2)*af3(t(i) + dt,vx(i) + kvx3,vy(i) + kvy3,vz(i) + kvz3,x(i) + kx3,y(i) + ky3,z(i) + kz3));
        
        
        x(i+1) = x(i) + (kx1 + kx2 + kx3 + kx4)/6;
        y(i+1) = y(i) + (ky1 + ky2 + ky3 + ky4)/6;
        z(i+1) = z(i) + (kz1 + kz2 + kz3 + kz4)/6;
        
        vx(i+1) = vx(i) + (kvx1 + kvx2 + kvx3 + kvx4)/6;
        vy(i+1) = vy(i) + (kvy1 + kvy2 + kvy3 + kvy4)/6;
        vz(i+1) = vz(i) + (kvz1 + kvz2 + kvz3 + kvz4)/6;      
        
        a1(i+1) = af1(t(i+1),vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
        a2(i+1) = af2(t(i+1),vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
        a3(i+1) = af3(t(i+1),vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
        
        E(i+1) = Ef(t(i+1),vx(i+1),vy(i+1),vz(i+1),x(i+1),y(i+1),z(i+1));
        
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

end