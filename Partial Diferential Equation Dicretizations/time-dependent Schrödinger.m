clear all; close all; 

% Define constants and parameters
iimag = sqrt(-1);
N    = 80;        % Number of spatial points
w    = 0.2;       % Angular frequency
L    = 50;        % Length of the spatial domain
h    = L / (N - 1); % Spatial step size
x    = h * (0:N-1) - L / 2; % Spatial grid
hbar = 1;         % Reduced Planck's constant
mas  = 2;         % Mass of the particle
tau  = 0.1;       % Time step size
kk   = 0.0000045; % Quartic potential coefficient

% Initialize the Hamiltonian matrix
H1 = zeros(N); 
coef = -hbar^2 / (2 * mas * h^2); 
H1(1,1)= -2*coef;  H1(1,2)= coef;  H1(N,N-1)= coef;
H1(N,N)= -2*coef;  H1(2,1)= coef;  H1(N-1,N)= coef;

% Fill the Hamiltonian matrix (tridiagonal form)
for i = 2:(N-1)
  H1(i,i-1) = coef;  H1(i,i)= -2*coef;  H1(i,i+1) = coef; %Tridiagonal
end  



% Initialize the potential matrix
dOSCILADOR = zeros (N);
for i = 1:10:N
  dOSCILADOR(i,i) = 0.5*mas*w*w*(x(i)*x(i))+kk*(x(i)*x(i)*x(i)*x(i));
end

% Crank-Nicolson method matrices
dCN1 = inv(eye(N)+0.5*iimag*(tau/hbar)*(H1 + dOSCILADOR));
dCN  = dCN1*(eye(N)- 0.5*iimag*(tau/hbar)*(H1 + dOSCILADOR));

% Initial wave function
x0   = 0; vel = 0.05; k0 = mas*vel/hbar; sigma0 = L/10;  Normpsi = 1/(sqrt(sigma0*sqrt(pi)));
psi  = Normpsi*exp(iimag*k0*x').*exp(-(x' - x0).^2/(2*sigma0^2));


% Plot the initial wave function
figure(1); clf; 
plot(x,real(psi),'r-','LineWidth',2,x,imag(psi),'b-','LineWidth',2);grid on;
title('Initial Wave Function');xlabel('x'); ylabel('\psi(x)'); legend('Real','Imaginary')
maxiter = 10000; l = 0;

c=250
pp=maxiter/c

t=linspace(0,5,pp)
[xx,tt]=meshgrid(x,t)
f=zeros(pp,N)
display(f)
count=0
for i = 1:c:maxiter
  psi = dCN*psi; pFinal = psi.*conj(psi);
  y = pFinal.';
  count=count+1;
  for j=1:N
    f(count,j)=y(j);
  endfor
end 


figure(2); clf;
mesh(xx,tt,f); xlabel('x'); ylabel('t');  zlabel('p(x,t)'); grid on;
title('Probability Density')


