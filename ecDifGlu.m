clear all;
close all;

syms t G(t) X(t) I(t) ;

p1 = 0.03082;
p2 = 0.02093;
p3 = 1.062E-5;
p4 = 0.3;
p5 = 89.5;
p6 = 1.062E-5;
Gb = 92;
Ib = 7.3;

ec1 = diff(G) == (-p1 -X)*G + p1*Gb;
ec2 = diff(X) == -p2*X +p3*(I - Ib); 
ec3 = diff(I) == p6*(G - p5)*t - p4*(I - Ib);

cond1 = G(0) == 286;
cond2 = X(0) == 0;
cond3 = I(0) == 403.4;
%cond3 = I(0) == 132.5;

sol1 = dsolve(ec1,cond1);
sol2 = dsolve(ec2,cond2);
sol3 = dsolve(ec3,cond3);

disp('G(t) = ');
pretty(sol1);

disp('X(t) = ');
pretty(sol2);

disp('I(t) = ');
pretty(sol3)
