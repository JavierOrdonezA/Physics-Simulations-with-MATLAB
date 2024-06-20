clear all; close all;tic

kx=1.5; ktheta=1.2; m=1; epsilon=0.5; I=5; n=100000;
x0=6.2; theta0=pi/4; v10=4.8; w0=0.1; 
tspan=[0 100]; y0=[4.8 6.2 0.1 pi/4];


[t,y]=ode45(@(t,y) FunctionOdePenduloWilberforce(t,y,kx,ktheta,m,epsilon,I), tspan, y0);

%DISTANCE

FontSize =15
figure(1);clf; 
subplot(1,3,1); plot(t,y(:,1)); grid on;
xlabel('Time t', 'FontSize', FontSize); ylabel('Distance x', 'FontSize', FontSize);
set(gca, 'FontSize', FontSize-2);
%--------------------------------------------------------------------------
subplot(1,3,2); plot(t,y(:,3)); grid on;
xlabel('Time t','FontSize', FontSize); ylabel('Angle \theta','FontSize', FontSize); 
set(gca, 'FontSize', FontSize-2);
%--------------------------------------------------------------------------
subplot(1,3,3); plot(y(:,1),y(:,3)); grid on;
set(gca, 'FontSize', FontSize-2);
xlabel('Distance x', 'FontSize', FontSize); ylabel('Angle \theta', 'FontSize', FontSize);

axes('Position', [0 0 1 1], 'Visible', 'off');
text(0.5, 0.98, 'Wilberforce pendulum, distances ODE45', 'HorizontalAlignment', 'center', 'FontSize', 18);
%print('wilberforce_pendulum_distances', '-dpng', '-r100');


