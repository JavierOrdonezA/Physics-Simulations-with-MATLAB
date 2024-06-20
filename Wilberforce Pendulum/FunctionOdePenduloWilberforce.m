function dydtPenduloWilberforce = FunctionOdePenduloWilberforce(t,y,kx,ktheta,m,epsilon,I)
dydtPenduloWilberforce=zeros(4,1);
dydtPenduloWilberforce(1)=y(2);
dydtPenduloWilberforce(2)=-(kx*(y(1))/m + epsilon*(y(3))/(2*m));
dydtPenduloWilberforce(3)=y(4);
dydtPenduloWilberforce(4)=-(ktheta*y(3)/I + epsilon*y(1)/(2*I));