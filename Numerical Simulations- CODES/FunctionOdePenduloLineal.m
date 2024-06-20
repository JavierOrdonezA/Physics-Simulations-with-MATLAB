function dydtPenduloLineal = FunctionOdePenduloLineal(t,y,g,m1,m2,l1,l2)
dydtPenduloLineal=zeros(4,1);
dydtPenduloLineal(1)=y(2);
dydtPenduloLineal(2)=(-g*(2*m1 + m2)*(y(1)) - m2*g*(y(1) - 2*y(3)) -2*(y(1) - y(3))*m2*((y(4)).^2*l2 + (y(2)).^2*l1))./(l1*(2*m1 + m2 - m2));
dydtPenduloLineal(3)=y(4);
dydtPenduloLineal(4)=(2*(y(1) - y(3))*((y(2)).^2*l1*(m1 + m2) + g*(m1+m2) + (y(4)).^2*l2*m2))./(l1*(2*m1 + m2 - m2));