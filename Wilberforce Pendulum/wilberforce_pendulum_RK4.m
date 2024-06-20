clear all; close all;tic

kx=1.5; ktheta=1.2; m=1; epsilon=0.5; I=5; t0=0; tf=100; n=100000;
x0=6.2; theta0=pi/4; v10=4.8; w0=0.1; 

Ef = @(t,v1,w,v3,x,theta,d) m*v1.^2/2 + I*w.^2/2 + kx*x.^2/2 + ktheta*theta.^2/2 + epsilon*x.*theta/2;
af1 = @(t,v1,w,v3,x,theta,d) -(kx*x/m + epsilon*theta/(2*m));
af2 = @(t,v1,w,v3,x,theta,d) -(ktheta*theta/I + epsilon*x/(2*I));
af3 = @(t,v1,w,v3,x,theta,d) 0;

[t,x,v1,a1,theta,w,a2,d,v3,a3,E] = FunctionRungeKuttaG(af1,x0,v10,af2,theta0,w0,af3,0,0,t0,tf,n,Ef);

FontSize =12


%DISTANCES
figure(1);clf; 
subplot(1,3,1); plot(t,x); grid on;
xlabel('Time t', 'FontSize', FontSize); ylabel('Distance x', 'FontSize', FontSize);
set(gca, 'FontSize', FontSize-2);

subplot(1,3,2); plot(t,theta); grid on;
xlabel('Time t', 'FontSize', FontSize); ylabel('Angle \theta', 'FontSize', FontSize); 
set(gca, 'FontSize', FontSize-2);

subplot(1,3,3); plot(x,theta); grid on;
xlabel('Distance x', 'FontSize', FontSize); ylabel('Angle \theta', 'FontSize', FontSize);
set(gca, 'FontSize', FontSize-2);

axes('Position', [0 0 1 1], 'Visible', 'off');
text(0.5, 0.98, 'Wilberforce pendulum, distances RK4', 'HorizontalAlignment', 'center', 'FontSize', 18);

%ENERGY
figure(2);clf; 
subplot(2,3,1); plot(t,kx*x.^2/2); grid on;
xlabel('Time t', 'FontSize', FontSize); ylabel('Potential energy in x', 'FontSize', FontSize); set(gca, 'FontSize', FontSize-2);
subplot(2,3,2); plot(t,m*v1.^2/2); grid on;
xlabel('Time t', 'FontSize', FontSize); ylabel('Kinetic energy in x', 'FontSize', FontSize); 
subplot(2,3,3); plot(t,E); grid on; set(gca, 'FontSize', FontSize-2);
xlabel('Time t', 'FontSize', FontSize); ylabel('Total mechanical energy', 'FontSize', FontSize); ylim([0 50]);
subplot(2,3,4); plot(t,ktheta*theta.^2/2); grid on;set(gca, 'FontSize', FontSize-2);
xlabel('Time t', 'FontSize', FontSize); ylabel('Potential energy in \theta', 'FontSize', FontSize); 
subplot(2,3,5); plot(t,m*w.^2/2); grid on; set(gca, 'FontSize', FontSize-2);
xlabel('Time t', 'FontSize', FontSize); ylabel('Kinetic Energy cinetica en \theta', 'FontSize', FontSize); 
subplot(2,3,6); plot(t,epsilon*x.*theta/2); grid on; set(gca, 'FontSize', FontSize-2);
xlabel('Time t', 'FontSize', FontSize); ylabel('Docked mode', 'FontSize', FontSize);
set(gca, 'FontSize', FontSize-2);

axes('Position', [0 0 1 1], 'Visible', 'off');
text(0.5, 0.98, 'Wilberforce pendulum, RK4', 'HorizontalAlignment', 'center', 'FontSize', 18);
%print('wilberforce_pendulum_distances', '-dpng', '-r100');