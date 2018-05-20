%Load h2
load('LPF.mat')

%Plot h2 frequancy response
[h_2,w2] = freqz(h2,1);
figure
subplot (4,1,1)
plot(w2/pi,abs(h_2))
ax = gca;
ax.YLim = [-0.1 1.1];
ax.XTick = 0:.05:2;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude h2(jw)'); hold on;


%Plot h3 frequancy response
[h_3,w3] = freqz(h3,2);
subplot(4,1,2)
plot(w3/pi,abs(h_3))
ax = gca;
ax.YLim = [min(abs(h_3)) max(abs(h_3))];
ax.XTick = 0:.05:0.6;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude h3(jw)')

%Plot h4 frequancy response
[h_4,w4] = freqz(h4,3);
subplot(4,1,3)
plot(w3/pi,abs(h_4))
ax = gca;
ax.YLim = [min(abs(h_4)) max(abs(h_4))];
ax.XTick = 0:.05:5;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude h4(jw)')

%Plot h6 frequancy response
[h_6,w6] = freqz(h6,4);
subplot(4,1,4)
plot(w3/pi,abs(h_6))
ax = gca;
ax.YLim = [min(abs(h_6)) max(abs(h_6))];
ax.XTick = 0:.05:5;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude h6(jw)')


% X[n] frequancy response
n=-100:1:100;
x=2*cos((1/10)*pi*n).*cos((3/10)*pi*n);
figure
subplot(2,1,1)
plot(n,abs(x))
ax=gca;
ax.YLim= [-0.1,2.1];

[h,w] = freqz(x,1);
subplot(2,1,2)
plot(w/pi,abs(h))
ax = gca;
ax.YLim = [0 100];
ax.XTick = 0:.05:2;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')


figure
y2j=h*.*h_2
