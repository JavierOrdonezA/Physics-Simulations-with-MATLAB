clear all; close all;

m=1; g=9.81; b=0.0025; t0=0; tf=10; n=10000;
x1=0; vx1=60/sqrt(2); y1=0; vy1=60/sqrt(2); z1=0; vz1=0;

Ef = @(vx,vy,vz,x,y,z) 0;
af1 = @(vx,vy,vz,x,y,z) -(b*vx.*sqrt(vx.^2 + vy.^2))/m;
af2 = @(vx,vy,vz,x,y,z) -(m*g + b*vy.*sqrt(vx.^2 + vy.^2))/m;
af3 = @(vx,vy,vz,x,y,z) 0;

[t,x,vx,a1,y,vy,a2,z,vz,a3,E] = Function_Modified_Euler_Method(af1,x1,vx1,af2,y1,vy1,af3,z1,vz1,t0,tf,n,Ef);

figure(1);clf; 
subplot(3,3,1); plot(t,x); grid on;
xlabel('Time t'); ylabel('Position x');

subplot(3,3,3); plot(t,y); grid on;
xlabel('Time t'); ylabel('Position y');

subplot(3,3,4); plot(t,vx); grid on;
xlabel('Time t'); ylabel('Velocity v_x');

subplot(3,3,6); plot(t,vy); grid on;
xlabel('Time t'); ylabel('Velocity v_y');

subplot(3,3,7); plot(t,a1); grid on;
xlabel('Time t'); ylabel('Aceleration a_x');

subplot(3,3,9); plot(t,a2); grid on;
xlabel('Time t'); ylabel('Aceleration a_y');

subplot(3,3,5); plot(x,y); grid on;
xlabel('Position x'); ylabel('Position y');




axes('Position', [0 0 1 1], 'Visible', 'off');
text(0.5, 0.98, 'Motion of a projectile with quadratic resistance, EulerM', 'HorizontalAlignment', 'center', 'FontSize', 13); 

print -djpeg -r200 MotionProjectileEulerM.jpeg
