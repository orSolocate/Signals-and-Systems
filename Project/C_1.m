
T1=4;
n = -10000:1:10000;
w = linspace(-pi,pi,20001);

x1=sinc(n*4/6);
X1=fft(x1,20001);
subplot(4,1,1)
plot(w,abs(fftshift(X1)))
title('| X1(e^j^w) |')
xlabel('w')
ylabel('| X1(e^j^w) |');


x2=(sinc(n*T1/12)).^2;
X2=fft(x2,20001);
subplot(4,1,2)
plot(w,abs(fftshift(X2)))
title('| X2(e^j^w) |')
xlabel('w')
ylabel('| X2(e^j^w) |');

x3=cos(pi*n*T1/12);
X3=fft(x3,20001);
subplot(4,1,3)
plot(w,abs(fftshift(X3)))
title('| X3(e^j^w) |')
xlabel('w')
ylabel('| X3(e^j^w) |');

x4=cos(pi*n*T1/12)+sin(pi*n*T1/6);
X4=fft(x4,20001);
subplot(4,1,4)
plot(w,abs(fftshift(X4)))
title('| X4(e^j^w) |')
xlabel('w')
ylabel('| X4(e^j^w) |');



