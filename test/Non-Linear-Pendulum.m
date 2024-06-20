clear all; close all;
%--------------------------------------------------
%------------- Non-Linear Pendulum-----------------
%--------------------------------------------------

Wo=2; AngInic= 3; k=sin(AngInic/2)
t=-5:0.1:15
Angle_1=2*asin(k*ellipj(Wo*t,k))
Angle = @(T) 2*asin(k*ellipj(Wo*T,k));
b=Angle(6)
a=Angle(5)
for i=1:length(t)
  dt=0.001
  VAngularComp(i)=(Angle(t(i)+dt)-Angle(t(i)))/dt
endfor



figure;

% First subplot
subplot(3, 1, 1);
plot(t, Angle_1, 'r-');
title('Time Vs Angle');
xlabel('Time');
ylabel('Angle');
grid on;

% Second subplot
subplot(3, 1, 2);
plot(t, VAngularComp, 'g*');
title('Time Vs Angular Velocity');
xlabel('Time');
ylabel('Angular Velocity');
grid on;

% Third subplot
VAngular = (4 * Wo^2 * (k^2 - (sin(Angle(t) / 2)).^2)).^(0.5);
subplot(3, 1, 3);
plot(t, VAngular, 'b-x');
title('Time Vs Angular Velocity (Magnitude)');
xlabel('Time');
ylabel('Angular Velocity Magnitude');
grid on;


print -djpeg -r200 non-lienar_pendulum_solution.jpeg
