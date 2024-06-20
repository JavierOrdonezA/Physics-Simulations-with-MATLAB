function dydtPendulo = odePendulo(t,y,g,m1,m2,l1,l2)
dydtPendulo=zeros(4,1);
dydtPendulo(1)=y(2);
dydtPendulo(2)=(-g*(2*m1 + m2)*sin(y(1)) - m2*g*sin(y(1) - 2*y(3)) -2*sin(y(1) - y(3))*m2*((y(4)).^2*l2 + (y(2)).^2*l1*cos(y(1) - y(3))))./(l1*(2*m1 + m2 - m2*cos(2*y(1) - 2*y(3))));
dydtPendulo(3)=y(4);
dydtPendulo(4)=(2*sin(y(1) - y(3))*((y(2)).^2*l1*(m1 + m2) + g*(m1+m2)*cos(y(1)) + (y(4)).^2*l2*m2*cos(y(1) - y(3))))./(l1*(2*m1 + m2 - m2*cos(2*y(1) - 2*y(3))));