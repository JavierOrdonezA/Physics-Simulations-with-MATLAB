clear all; close all; 

%%-----------------PARAMETERS----------------------
h = 0.05; tfinal = 25;
N = ceil(tfinal/h);
m1 = 1; m2 = 1; l1 = 1 ; l2 = 1;g=9.8;
theta1i = pi/4; vtheta1i=0.0; atheta1i=0.0;
theta2i = pi/4; vtheta2i=0.0; atheta2i=0.0;
# Initial conditions
y0 = [theta1i,vtheta1i,theta2i,atheta2i]; 
dynamicsCoupPendula = @(t,x) fmotionCoupPendula(t,x,m1,m2,l1,l2);
y_out=zeros(N,4); 
t=zeros(N,1);
y_out(1,:) = y0'; 
x1(1)=theta1i;x2(1)=vtheta1i;x3(1)=theta2i;x4(1)=vtheta2i;
%-----------------------------------------------
#E=0.5*m1*l1^2*vtheta1.^2+0.5*m2*(l1^2*vtheta1.^2+l2^2*vtheta2.^2+2*l1*l2*vtheta1.*vtheta2.*cos(theta1-theta2))-(m1+m2)*g*l1*cos(theta1)-m2*g*l2*cos(theta2);
for i = 1:N
  [t(i+1),y_out(i+1,:)] = int_rk4(h,dynamicsCoupPendula,t(i),y_out(i,:)');
  x1(i+1) = y_out(i+1,1,:);      x3(i+1) = y_out(i+1,3,:);
  x2(i+1) = y_out(i+1,2,:);      x4(i+1) = y_out(i+1,4,:);
endfor
figure(1);clf;
plot(t,x1,'r','linewidth',2);
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel('\theta_{1}');set(gca, "linewidth", 2, "fontsize", 12);
axis([0 20 -1 1])
figure(2);clf;
plot(t,x3,'g','linewidth',2);
xlabel('t(s)');set(gca, "linewidth", 2, "fontsize", 12);
ylabel('\theta_{2}');set(gca, "linewidth", 2, "fontsize", 12);
axis([0 20 -1 1])
figure(3);clf;
plot(x1,x3)
xlabel('\theta_{1}');set(gca, "linewidth", 2, "fontsize", 12);
ylabel('\theta_{2}');set(gca, "linewidth", 2, "fontsize", 12);
theta1 = x1;
theta2 = x3;
ct = 1
for i=1:N;
  x0 = 0; y0 = 0;
  position1 = theta1(i); x1 = l1*sin(position1);      y1 = -l1*cos(position1); 
  position2 = theta2(i); x2 = x1 + l2*sin(position2); y2 = y1-l2*cos(position2); 
  figure(1); 
  plot([x0,x1],[y0,y1],'linewidth',5,[x1,x2],[y1,y2],'linewidth',5);% Pendulum's line 1 
  hold on;
  plot(x1,y1,'marker','.','markersize',40);
  plot(x2,y2,'marker','.','markersize',40);
  plot([-4,4],[0,0],'r','linewidth',4);%Red base line
  hold off; 
  axis([-4,4,-4,4]);
  grid on;
  pause(0.05);
  ct=ct+1; drawnow; 
endfor

