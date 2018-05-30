%Load h2
load('LPF.mat')

w=linspace(-pi,pi,20001);

%Plot h2 frequancy response
h_2=fft(h2,20001);
subplot(4,1,1)
plot(w/pi,abs(fftshift(h_2)))
title('H2 frequancy response');
xlabel('w/pi');
ylabel('| H2(e^j^w) |');

%Plot h3 frequancy response
h_3=fft(h3,20001);
subplot(4,1,2)
plot(w/pi,abs(fftshift(h_3)))
title('H3 frequancy response');
xlabel('w/pi');
ylabel('| H3(e^j^w) |');

%Plot h4 frequancy response
h_4=fft(h4,20001);
subplot(4,1,3)
plot(w/pi,abs(fftshift(h_4)))
title('H4 frequancy response');
xlabel('w/pi');
ylabel('| H4(e^j^w) |');

%Plot h6 frequancy response
h_6=fft(h6,20001);
subplot(4,1,4)
plot(w/pi,abs(fftshift(h_6)))
title('H6 frequancy response');
xlabel('w/pi');
ylabel('| H6(e^j^w) |');
