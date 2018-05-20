%Load h2
load('LPF.mat')

% X[n] frequancy response
n=-100:1:100;
x=2*cos((1/10)*pi*n).*cos((3/10)*pi*n);
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


