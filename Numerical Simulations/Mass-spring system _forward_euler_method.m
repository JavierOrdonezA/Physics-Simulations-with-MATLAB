clear all; close all;
%% ------------- Parameters-------------
t0=0; tf=20; n=100000; k=2; m=1;
x1=1; x2=6; x3=11; L=12;
v1=0; v2=0; v3=0;
%%--------------------------------------
Ef  = @(vx,vy,vz,x,y,z) (1/2)*m*(vx.^2 + vy.^2 + vz.^2) + (1/2)*k*(x.^2 + (y - x).^2 + (z-y).^2 + (L-z).^2);
af1 = @(vx,vy,vz,x,y,z) (k*(y - 2*x))/m;
af2 = @(vx,vy,vz,x,y,z) (k*(z - 2*y + x))./m;
af3 = @(vx,vy,vz,x,y,z) (k*(L -2*z + y))./m;

[t,x,vx,a1,y,vy,a2,z,vz,a3,E] = Function_Forward_Euler_Method(af1,x1,v1,af2,x2,v2,af3,x3,v3,t0,tf,n,Ef);



figure(1);clf; 
subplot(2,2,1); plot(t,x,t,y,t,z); grid on;
xlabel('Time t'); ylabel('Position x_i'); legend('m_1','m_2','m_3');

subplot(2,2,2); plot(t,vx,t,vy,t,vz); grid on;
xlabel('Time t'); ylabel('Velocity v_i'); legend('V_1','V_2','V_3');

subplot(2,2,3); plot(t,E); grid on;
xlabel('Time t'); ylabel('Energy E'); ylim([0 60]);

axes('Position', [0 0 1 1], 'Visible', 'off');
text(0.5, 0.98, 'Mass-spring system in horizontal plane, Forward Euler', 'HorizontalAlignment', 'center', 'FontSize', 13); 

