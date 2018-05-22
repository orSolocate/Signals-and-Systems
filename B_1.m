%Load h2
load('LPF.mat')

%Plot h2 frequancy response
N=80;
w = 2*pi * (0:(N-1)) / N;
w2 = fftshift(w);
w3 = unwrap(w2 - 2*pi);
h_2=fft(h2);
subplot(4,1,1)
plot(w3/pi,fftshift(abs(h_2)))
xlabel('w/pi');
ylabel('|h2(e^jw)|');

%Plot h3 frequancy response
h_3=abs(fft(h3));
subplot(4,1,2)
plot(w3/pi,fftshift(abs(h_3)))
xlabel('w/pi');
ylabel('|h3(e^jw)|');

%Plot h4 frequancy response
h_4=abs(fft(h4));
subplot(4,1,3)
plot(w3/pi,fftshift(abs(h_4)))
xlabel('w/pi');
ylabel('|h4(e^jw)|');

%Plot h6 frequancy response
h_6=abs(fft(h6));
subplot(4,1,4)
plot(w3/pi,fftshift(abs(h_6)))
xlabel('w/pi');
ylabel('|h6(e^jw)|');
