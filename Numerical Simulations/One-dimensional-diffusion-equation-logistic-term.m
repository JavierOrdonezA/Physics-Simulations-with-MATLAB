clear all; close all;

% Define parameters
r=0.0001;D=0.00005; xmax=101; tmax= 1001; dx=1/(xmax-1); dt= 1.0; x=0:dx:1;
t=zeros(1,tmax); 

% Initialize concentration matrices
C=zeros(xmax,tmax); C(1,1)=0;C(xmax,1)=0;
C2=zeros(xmax,tmax); C2(1,1)=0;C2(xmax,1)=0;
C3=zeros(xmax,tmax); C3(1,1)=0;C3(xmax,1)=0;


% Initial conditions for C: Centered rectangular function
for i =2:xmax-1 
  if 20<i<30;
    C(i,1)=1.0;
  else 
    C(i,1)=0;
  end
end

% Initial conditions for C2: Step function
for i =2:xmax-1
  C2(i,1)=2*i;  
    if i<25;
    C2(i,1)=0;
  else 
    C2(i,1)=2.5;
  end
end

% Initial conditions for C3: Symmetrical linear function
for i =2:xmax-1
  if i<(xmax-1)/2;
    C3(i,1)=2*i;
  else
    C3(i,1)=-2*i+2*C3(((xmax-1)/2)-1,1);
  end
end

% Time evolution using the modified diffusion equation
for j=1:tmax
  t(j+1)=t(j)+dt;
  for i=2:xmax-1
    C(i,j+1)=C(i,j)+D*dt/(dx^2)*(C(i+1,j)-2*C(i,j)+C(i-1,j))+r*C(i,j)*(1-C(i,j));
    C2(i,j+1)=C2(i,j)+D*dt/(dx^2)*(C2(i+1,j)-2*C2(i,j)+C2(i-1,j))+r*C2(i,j)*(1-C2(i,j));
    C3(i,j+1)=C3(i,j)+D*dt/(dx^2)*(C3(i+1,j)-2*C3(i,j)+C3(i-1,j))+r*C3(i,j)*(1-C3(i,j));
    end
end

% Create time and position meshes for plotting
[T,X] = meshgrid(t,x);
Tr    = T(:,1:50:1001);Xr=X(:,1:50:1001);Cr=C(:,1:50:1001); Cr2=C2(:,1:50:1001); Cr3=C3(:,1:50:1001);
figure(1); clf; surf(Tr,Xr,Cr); view(110,30); colormap jet ; xlabel('Time'); ylabel('Position');  zlabel('Concentration');
print -djpeg -r200 diffusion_logict_equation_solution_1.jpeg

figure(2); clf; surf(Tr,Xr,Cr2); view(110,30); colormap jet; xlabel('Time'); ylabel('Position');  zlabel('Concentration');
print -djpeg -r200 diffusion_logict_equation_solution_2.jpeg

figure(3); clf; surf(Tr,Xr,Cr3); view(110,30); colormap jet; xlabel('Time'); ylabel('Position');  zlabel('Concentration');
print -djpeg -r200 diffusion_logict_equation_solution_3.jpeg


