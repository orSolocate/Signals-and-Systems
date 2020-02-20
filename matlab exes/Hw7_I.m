T1=3.5;
syms k x t
t= -T1:0.01:T1
t1=sin((2*pi/T1)*k*t);
S1 = symsum((8*k)/(pi*(4*k^2)-64)*t1, k, 1, 100);
plot(t,S1)