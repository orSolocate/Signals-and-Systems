%Load h2
load('LPF.mat')

%Plot h2 frequancy response
[h_2,w2] = freqz(h2,1);
plot(w2/pi,abs(h_2))
ax = gca;
ax.YLim = [-1 2];
ax.XTick = 0:.05:2;
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')

