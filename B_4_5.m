load LPF.mat

n=-40:1:39;
x=2*cos((1/10)*pi*n).*cos((3/10)*pi*n);
X=fft(x);
H2=fft(h2);
Y2=X.*H2;
N=80;
w = 2*pi * (0:(N-1)) / N;
w2 = fftshift(w);
w3 = unwrap(w2 - 2*pi);
figure
subplot(4,1,1)
%Plot output spectrum Y2
plot(w3/pi,fftshift(abs(Y2)))
xlabel('w [rad]');
ylabel('|Y2(e^jw)|');

%Plot output spectrum Y3
H3=fft(h3);
Y3=X.*H3;
subplot(4,1,2)
plot(w3/pi,fftshift(abs(Y3)))
xlabel('w/pi');
ylabel('|Y3(e^jw)|');

%Plot output spectrum Y4
H4=abs(fft(h4));
Y4=X.*H4;
subplot(4,1,3)
plot(w3/pi,fftshift(abs(Y4)))
xlabel('w/pi');
ylabel('|Y4(e^jw)|');

%Plot output spectrum Y6
H6=abs(fft(h6));
Y6=X.*H6;
subplot(4,1,4)
plot(w3/pi,fftshift(abs(Y6)))
xlabel('w/pi');
ylabel('|Y6(e^jw)|');

figure %for question 5
y2=ifft(Y2);
subplot(4,1,1)
plot(n,abs(y2))

y3=ifft(Y3);
subplot(4,1,2)
plot(n,y3)

y4=ifft(Y4);
subplot(4,1,3)
plot(n,y4)

y6=ifft(Y6);
subplot(4,1,4)
plot(n,y6)