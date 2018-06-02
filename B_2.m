
n=-10000:1:10000;
x=2*cos((1/10)*pi*n).*cos((3/10)*pi*n);

%DTFT of x[n]
w =linspace(-pi,pi,20001);
X=fft(x,20001);
plot(w/pi,abs(fftshift(X)))
xlabel('w/pi');
ylabel('| X(e^j^w) |');
