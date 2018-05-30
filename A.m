%Part A

x1 = cos(0.03*pi*n);
subplot(2,1,1)
plot(n,x1)
title('x1 is a bounded input');

y1 = linspace(0,0,100);
%Inital assignmets
y1(1) = 0;
y1(2)=0

for n = 3:1:100
   y1(n) = 4*y1(n-1)-4*y1(n-2)+20*x1(n)+10*x1(n-1); 
end

n1 = 1:1:100;
subplot(2,1,2)
plot(n1,y1)
axis([0 100 0 10^32])
title('y1 is not bounded');