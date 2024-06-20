clear all; close all; 
%%-----------------PARAMETERS----------------------
m1 = 1; m2 = 1; l1 = 1 ; l2 = 1;
g=1; 

theta1(1) = pi/4; vtheta1(1)=0.0; atheta1(1)=0.0;
theta2(1) = pi/4; vtheta2(1)=0.0; atheta2(1)=0.0;
Deltat=0.005; 
theta1(2)=theta1(1)+vtheta1(1)*Deltat; 
theta2(2)=theta2(1)+vtheta2(1)*Deltat;
Tfinal=25.0; t=0:Deltat:Tfinal; N=length(t);

%-----------------------------------------------

for j=3:N; 
  theta1(j)=2*theta1(j-1)-theta1(j-2)+Deltat^2*((-g*(2*m1+m2)*sin(theta1(j-1))-m2*g*sin(theta1(j-1)-2*theta2(j-1))-2*sin(theta1(j-1)-theta2(j-1))*m2*(vtheta2(j-2)^2*l2+vtheta1(j-2)^2*l1*cos(theta1(j-1)-theta2(j-1))))/ (l1*(2*m1+m2-m2*cos(2*theta1(j-1)-2*theta2(j-1)))));
  theta2(j)=2*theta2(j-1)-theta2(j-2)+Deltat^2*((2*sin(theta1(j-1)-theta2(j-1))*(vtheta1(j-2)^2*l1*(m1+m2)+g*(m1+m2)*cos(theta1(j-1))+vtheta2(j-2)^2*l2*m2*cos(theta1(j-1)-theta2(j-1))))/(l2*(2*m1+m2-m2*cos(2*theta1(j-1)-2*theta2(j-1)))));
  vtheta1(j-1)=(theta1(j)-theta1(j-2))/(2*Deltat);
  vtheta2(j-1)=(theta2(j)-theta2(j-2))/(2*Deltat);
  atheta1(j-1)=(vtheta1(j-1)-vtheta1(j-2))/Deltat; 
  atheta2(j-1)=(vtheta2(j-1)-vtheta2(j-2))/Deltat;
  E(j)=0.5*m1*l1^2*vtheta1(j-1)^2+0.5*m2*(l1^2*vtheta1(j-1)^2+l2^2*vtheta2(j-1)^2+2*l1*l2*vtheta1(j-1)*vtheta2(j-1)*cos(theta1(j-1)-theta2(j-1)))-(m1+m2)*g*l1*cos(theta1(j-1))-m2*g*l2*cos(theta2(j-1));
endfor
vtheta1(N) = (theta1(N)-theta1(N-1))/Deltat; atheta1(N)=(vtheta1(N)-vtheta1(N-1))/Deltat; 
vtheta2(N) = (theta2(N)-theta2(N-1))/Deltat; atheta2(N)=(vtheta2(N)-vtheta2(N-1))/Deltat; 

#subplot(2,1,1);plot(t,theta1,'r','linewidth',3);xlabel('t');ylabel('\theta_1');

p=0.13*cos(t);
E(1)=E(2)=E(6)
figure(1); clf; 
subplot(2,1,1);plot(t,theta1,'r','linewidth',3);
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( '\theta_{1}(t)');set(gca, "linewidth", 2, "fontsize", 12);
title(' angle vs time')
subplot(2,1,2);plot(t,theta2,'g','linewidth',3);
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( '\theta_{2}(t)');set(gca, "linewidth", 2, "fontsize", 12);
#title(' Angle vs time')
figure(2);clf;
subplot(2,1,1);plot(t,vtheta1,'r','linewidth',3);
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
#title(' Angular Velocity vs time ')
ylabel( '\omega_{1}(t)');set(gca, "linewidth", 2, "fontsize", 12);
subplot(2,1,2);plot(t,vtheta2,'g','linewidth',3);
#title(' Angular Velocity vs time ')
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( '\omega_{2}(t)');set(gca, "linewidth", 2, "fontsize", 12);
figure(3);clf;
#title(' Theta1 vs Theta2')
plot(theta1,theta2,'r','linewidth',0.5);
xlabel('\theta_{1}(t)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel('\theta_{2}(t)');set(gca, "linewidth", 2, "fontsize", 12);
plot(t,E,'g','linewidth',3)
#title(' Energy vs time ')
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( 'E');set(gca, "linewidth", 2, "fontsize", 12);
axis([0 0.1])
figure(4);clf;
plot(vtheta1,vtheta2,'k','linewidth',1)
xlabel( '\omega_{1}(t)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( '\omega_{2}(t)');set(gca, "linewidth", 2, "fontsize", 12);
figure(5); clf;
subplot(3,1,1);plot(t,theta1,'r','linewidth',3)
legend('double pendulum m=2')
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( '\theta_{1}(t)');set(gca, "linewidth", 2, "fontsize", 12);
subplot(3,1,2);plot(t,p,'linewidth',3)
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( '\theta_{1}(t)');set(gca, "linewidth", 2, "fontsize", 12);
legend( 'pendulum simple')
subplot(3,1,3);plot(t,theta1,t,p)
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel( '\theta_{1}(t)');set(gca, "linewidth", 2, "fontsize", 12);
