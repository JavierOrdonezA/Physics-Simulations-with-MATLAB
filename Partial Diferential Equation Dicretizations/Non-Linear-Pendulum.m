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
figure(1);
plot  (t,Angle_1,"color",'r','-');
title ('Time Vs Angle')
xlabel('Time'); ylabel('Angle')
grid on;
figure(2);
plot  (t,VAngularComp,"color",'g','*');
title ('Time Vs  Angular Velocity')
xlabel('Time'); ylabel('Angular Velocity')
grid on;
figure(3);
VAngular=(4*Wo^2*(k^2-(sin(Angle(t)/2)).^2)).^(0.5)
plot  (t,VAngular,"color",'b','-x-')
title ('Time Vs  Angular Velocity (Magnitud)')
xlabel('Time'); ylabel('Angular Velocity Magnitude')
grid on;