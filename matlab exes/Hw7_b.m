T1=3.5;
t = -T1:0.001:T1;
subplot(3,1,1)
x=cos(t*2*pi);
plot(t,x)
title('X(t)')

subplot(3,1,2)
y(t>=0) = 1;
y(t<=0)=-1;
plot(t,y)
title('Y(t)')

subplot(3,1,3)
plot(t,y.*x)
title('S(t)')