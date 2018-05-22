% X[n] frequancy response
n=-40:1:39;
x=2*cos((1/10)*pi*n).*cos((3/10)*pi*n);
figure
subplot(2,1,1)
plot(n,abs(x))
xlabel('n [discrete time]');
ylabel('x[n]');

%DTFT of x[n]
subplot(2,1,2)
N=80
w = 2*pi * (0:(N-1)) / N;
w2 = fftshift(w);
w3 = unwrap(w2 - 2*pi);
X=fft(x);
plot(w3/pi,fftshift(abs(X)))
xlabel('w [rad]');
ylabel('|X(e^jw)|');