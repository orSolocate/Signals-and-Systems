import functions.*

N=10000
x=create_x(N)
plot_x(x)


function x=create_x(N)
n=-N:1:N;
x=2*cos((1/10)*pi*n).*cos((3/10)*pi*n);
end

function plot_x(x)
%DTFT of x[n]
w =linspace(-pi,pi,20001);
X=fft(x,20001);
plot(w/pi,abs(fftshift(X)))
xlabel('w/pi');
ylabel('| X(e^j^w) |');
end