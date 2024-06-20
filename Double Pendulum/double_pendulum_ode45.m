clear all; close all;
## Double pendulum parameters
m1 = 1; m2 = 1; l1 = 1 ; l2 = 1;g=9.8;
theta1i = pi/4; vtheta1i=0.0; atheta1i=0.0;
theta2i = pi/4; vtheta2i=0.0; atheta2i=0.0;

# Linear condiction
y0 = [theta1i,vtheta1i,theta2i,atheta2i]; 
Deltat=0.05;
tspan = 0.0001:Deltat:25;

# functions [v1,a1,v2,a2]
f = @(t,x) [x(2),(-g*(2*m1+m2)*sin(x(1))-m2*g*sin(x(1)-2*x(3))-2*sin(x(1)-x(3))*m2*(x(4)^2*l2+x(2)^2*l1*cos(x(1)-x(3))))/ (l1*(2*m1+m2-m2*cos(2*x(1)-2*x(3)))),x(4),(2*sin(x(1)-x(3))*(x(2)^2*l1*(m1+m2)+g*(m1+m2)*cos(x(1))+x(4)^2*l2*m2*cos(x(1)-x(3))))/(l2*(2*m1+m2-m2*cos(2*x(1)-2*x(3))))];
[t,x] = ode45(f,tspan,y0);# Numerical Solution 

#Energy
for i=1:(size(x(:,1)))
    E(i) = 0.5*m1*l1^2*x(i,2)^2+0.5*m2*(l1^2*x(i,2)^2+l2^2*x(i,4)^2+2*l1*l2*x(i,2)*x(i,4)*cos(x(i,1)-x(i,3)))-(m1+m2)*g*l1*cos(x(i,1))-m2*g*l2*cos(x(i,3));
endfor 

figure(1);clf; 
subplot(2,1,1);plot(t,x(:,1),'r','linewidth',1);xlabel('t');ylabel('\theta_1');set(gca, "linewidth", 2, "fontsize", 12);
subplot(2,1,2);plot(t,x(:,3),'g','linewidth',2);xlabel('t');ylabel('\theta_2');set(gca, "linewidth", 2, "fontsize", 12);
print -djpeg -r100 pd_t1vst_t2vst_euler.jpeg;
figure(2);clf; 
subplot(1,1,1);plot(t,E,'y','linewidth',3);xlabel('t');ylabel('E(t)');set(gca, "linewidth", 2, "fontsize", 12);axis equal; title('Energ�a en Funci�n del Tiempo');#print -djpeg -r100 pd_E_euler.jpeg
figure(3);clf; 
subplot(1,1,1);plot(x(:,1),x(:,3),'k','linewidth',1);xlabel('\omega_1');ylabel('\omega_2');set(gca, "linewidth", 2, "fontsize", 12);#print -djpeg -r100 pd_vt1vsvt2_euler.jpeg
figure(4);clf; 
subplot(1,1,1);plot(x(:,2),x(:,4),'r','linewidth',1);xlabel('\theta_1');ylabel('\theta_2');set(gca, "linewidth", 2, "fontsize", 12);axis equal;#print -djpeg -r100 pd_t1vst2_euler.jpeg




#Animation 
for i=1:length(x(:,1));
  x0 = 0; y0 = 0;
  position1 = x(i,1); x1 = l1*sin(position1); y1 = -l1*cos(position1); 
  position2 = x(i,3); x2 = x1 + l2*sin(position2); y2 = y1-l2*cos(position2); 
  figure(1); 
  plot([x0,x1],[y0,y1],'linewidth',5,[x1,x2],[y1,y2],'linewidth',5);%linea del pendulo 1
  #plot([x1,x2],[y1,y2],'linewidth',5);%linea del pendulo 2
  hold on;
  plot(x1,y1,'marker','.','markersize',40);axis equal; 
  plot(x2,y2,'marker','.','markersize',40);axis equal; 
  plot([-l1,l1],[0,0],'r','linewidth',4);%linea roja de base
  hold off; 
  axis([-2,2,-3,1]);
  grid on;
  pause(0.005); 
  drawnow; 
endfor
 