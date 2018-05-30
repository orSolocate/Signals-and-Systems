load LPF.mat

n=-10000:1:10000
x=2*cos((1/10)*pi*n).*cos((3/10)*pi*n);
X=fft(x,20001);

%Plot output spectrum Y2
H2=fft(h2,20001);
Y2=X.*H2;
w =linspace(-pi,pi,20001);
figure
subplot(4,1,1)
plot(w/pi,abs(fftshift(Y2)))
xlabel('w/pi');
ylabel('|Y2(e^j^w)|');

%Plot output spectrum Y3
H3=fft(h3,20001);
Y3=X.*H3;
subplot(4,1,2)
plot(w,abs(fftshift(Y3)))
xlabel('w');
ylabel('|Y3(e^j^w)|');

%Plot output spectrum Y4
H4=fft(h4,20001);
Y4=X.*H4;
subplot(4,1,3)
plot(w,abs(fftshift((Y4))))
xlabel('w');
ylabel('|Y4(e^j^w)|');

%Plot output spectrum Y6
H6=fft(h6,20001);
Y6=X.*H6;
subplot(4,1,4)
plot(w,abs(fftshift(Y6)))
axis([-pi pi 0 10000])
xlabel('w');
ylabel('|Y6(e^j^w)|');

figure %for question 5
y2=ifft(Y2);
subplot(4,1,1)
plot(n,y2,'k',n,x,'r','LineWidth',2)
title('y2[n] and x[n]')
legend('y2[n]','x[n]')
axis([-40 40 -3 3])

y3=ifft(Y3);
subplot(4,1,2)
plot(n,y3,'k',n,x,'r','LineWidth',2)
title('y3[n] and x[n]')
legend('y3[n]','x[n]')
axis([-40 40 -3 3])

y4=ifft(Y4);
subplot(4,1,3)
plot(n,y4,'k',n,x,'r','LineWidth',2)
title('y4[n] and x[n]')
legend('y4[n]','x[n]')
axis([-40 40 -3 3])

y6=ifft(Y6);
subplot(4,1,4)
plot(n,y6,'k',n,x,'r','LineWidth',2)
title('y6[n] and x[n]')
legend('y6[n]','x[n]')
axis([-40 40 -3 3])
