clear all; close all;

%-------------------------------------------------------------
%------------- One-dimensional-diffusion-equation-------------
%-------------------------------------------------------------

% Define parameters
D=0.00005; xmax=101; tmax= 1001; dx=1/(xmax-1); dt= 1.0; x=0:dx:1;
t=zeros(1,tmax); 
% Initialize concentration matrices
C=zeros(xmax,tmax); C(1,1)=0;C(xmax,1)=0;

% Initial conditions for C: Centered rectangular function
for i =2:xmax-1 
  if i < xmax-50
    C(i,1)=0;
  else
    C(i,1)=1.0;
  end
end


% Time evolution using the diffusion equation
for j=1:tmax
  t(j+1)=t(j)+dt;
  for i=2:xmax-1
    C(i,j+1)=C(i,j)+D*(dt/dx^2)*(C(i+1,j)-2*C(i,j)+C(i-1,j));
  endfor
end

% Create time and position meshes for plotting
[T,X]=meshgrid(t,x);
Tr= T(:,1:50:1001);Xr=X(:,1:50:1001);Cr=C(:,1:50:1001);
figure(1); clf; surf(Tr,Xr,Cr); view(110,30); colormap jet;

xlabel('Time'); % X-axis label
ylabel('Position'); % Y-axis label
zlabel('Concentration'); % Z-axis label