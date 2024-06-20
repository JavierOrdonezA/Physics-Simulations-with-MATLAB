clear all; close all; 
function [t,v1,x1,v2,x2]=function_modified_euler(a1,a2,tinit,tfinal,vinit1,vinit2,xinit1,xinit2,n)
  h = (tfinal-tinit)/n;
  t = [tinit zeros(1,n)];
  v1 = [vinit1 zeros(1,n)];
  x1 = [xinit1 zeros(1,n)]; 
  v2 = [vinit2 zeros(1,n)];
  x2 = [xinit2 zeros(1,n)];
  E = [0 zeros(1,n)]; 
  for i = 1:n
    t(i+1) = t(i)+ h;
    v1new = v1(i)+h*a1(x1(i),x2(1),v1(i),v2(i));
    v2new = v2(i)+h*a2(x1(i),x2(1),v1(i),v2(i));
    v1(i+1) = v1(i) + h*(a1(x1(i),x2(i),v1new,v2new) + a1(x1(i),x2(i),v1(i),v2(i)))/2;
    v2(i+1) = v2(i) + h*(a2(x1(i),x2(i),v1new,v2new) + a2(x1(i),x2(i),v1(i),v2(i)))/2;
    x1(i+1) = x1(i) + v1(i+1)*h;
    x2(i+1) = x2(i) + v2(i+1)*h; 
  endfor
endfunction
m1 = 1; m2 = 1; l1 = 1 ; l2 = 1;g=9.8;
a1 = @(theta1,theta2,vtheta1,vtheta2)  (-g*(2*m1+m2)*sin(theta1)-m2*g*sin(theta1-2*theta2)-2*sin(theta1-theta2)*m2*(vtheta2^2*l2+vtheta1^2*l1*cos(theta1-theta2)))/ (l1*(2*m1+m2-m2*cos(2*theta1-2*theta2)));
a2 = @(theta1,theta2,vtheta1,vtheta2)   (2*sin(theta1-theta2)*(vtheta1^2*l1*(m1+m2)+g*(m1+m2)*cos(theta1)+vtheta2^2*l2*m2*cos(theta1-theta2)))/(l2*(2*m1+m2-m2*cos(2*theta1-2*theta2)));
theta1i= 1; vtheta1i=0.0; atheta1i=0.0;
theta2i = 0.0; vtheta2i=0.0; atheta2i=0.0;
Deltat=0.05;
tinit=0; tfinal=10;
[t,vtheta1,theta1,vtheta2,theta2]=function_modified_euler(a1,a2,tinit,tfinal,vtheta1i,vtheta2i,theta1i,theta2i,10000);
E=0.5*m1*l1^2*vtheta1.^2+0.5*m2*(l1^2*vtheta1.^2+l2^2*vtheta2.^2+2*l1*l2*vtheta1.*vtheta2.*cos(theta1-theta2))-(m1+m2)*g*l1*cos(theta1)-m2*g*l2*cos(theta2);
l=1;ct=1; 
plot(t,theta1)
xlabel('Time t', 'FontSize', 12); 
ylabel('Angle \theta_1', 'FontSize', 12);

 