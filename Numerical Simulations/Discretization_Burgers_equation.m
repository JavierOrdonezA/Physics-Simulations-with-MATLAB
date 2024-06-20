clear all; close all;
p=i;
D1=-0.00000005*p; b=-0.00000078*p; N=30; D2=-0.00000087*p; a=-0.00000063*p; c=-0.0000257*p;
x_v=linspace(-10,10,N); dx=x_v(2)-x_v(1); dt=0.6*(dx^2)/2;
t_v=-5:dt:5;

R=zeros(length(x_v),length(t_v)); 
T=zeros(length(x_v),length(t_v)); 

%% ----------------- Burgers' equation ---------------------

for i =1:length(x_v)-1
    for j=1: length(t_v)-1
      R(i,j)=(13)*exp((-(i-13.5)^2)/9)*exp((-(i-j)^2)/9);
    endfor
end

for i =1:length(x_v)-1
    for j=1: length(t_v)-1
      T(i,j)=(13)*(i)*exp((-(i-13.5)^2)/9)*sin(0.135*(i-13.5));
    endfor
end

for j=1:length(t_v)-1
  for i=2:length(x_v)-1
    R(i,j+1)=-p*(p*R(i,j)+(D1/dx^2)*dt*(R(i+1,j)-2*R(i,j)+R(i-1,j))+b*(dt/dx)*(R(i+1,j)-R(i,j))+a*dt*R(i,j)*(1-T(i,j)));
    T(i,j+1)=-p*(p*T(i,j)+(D2/dx^2)*dt*(T(i+1,j)-2*T(i,j)+T(i-1,j))+b*(dt/dx)*(T(i+1,j)-T(i,j))+c*dt*T(i,j)*(1-R(i,j)));
  end
end

%figure(1); clf; surf(t_v,x_v,real(R)); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z'); 
%grid on; title('Grafica Cuarto Punto');
figure(1); clf; surf(t_v,x_v,real(R)); xlabel('Time (t)'); ylabel('Space (x)'); zlabel('Concentration R'); 
grid on; title('Graph');