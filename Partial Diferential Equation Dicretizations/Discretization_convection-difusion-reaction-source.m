clear all; close all;
D=5; k=5; V=5; N=25
x_v=linspace(-10,2,N); dx=x_v(2)-x_v(1); dt=0.6*(dx^2)/2;
t_v=-5:dt:0;

%% Scientific Reports | (2020) 10:8040 | https://doi.org/10.1038/s41598-020-63982-w



C=zeros(length(x_v),length(t_v)); C(1,1)=0;

for i =2:length(x_v)-1
    for j=2: length(t_v)-1
      C(i,j)=(13)*exp((-(i-18)^2)/9)*exp((-(j-18)^2)/9)*cos(0.25*(i-18));
    endfor
end

for j=1:length(x_v)-1
  for i=2;length(t_v)-1
    C(i,j+1)=C(i,j)-dt*k*C(i,j)+(D/dx^2)*dt*(C(i+1,j)-2*C(i,j)+C(i-1,j))-V*(dt/dx)*(C(i+1,j)-C(i,j));
  end
end

figure(1); clf; surf(t_v,x_v,C); xlabel('Time (t)'); ylabel('Space (x)'); zlabel('CDRS (C)'); 
grid on; title('Graph');