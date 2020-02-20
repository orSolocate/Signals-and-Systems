clear; close all; clc;
t = -2 : 0.002  :2;  % time axis
x = [zeros(1,500),ones(1,1000),zeros(1,501)]; % square wave 
figure
plot(t,x); hold on;
N=[1,3,7,19,79];
m = 1:N(1);
an = sinc(m/2); % Fourier coefficients for x(t)
fN =0.5+sum(diag(an)*cos(m'*pi*t/2),1); % Truncated Fourier series
plot(t,fN);hold on;
m = 1:N(2);
an = sinc(m/2); % Fourier coefficients for x(t)
fN =0.5+ sum(diag(an)*cos(m'*pi*t/2),1); % Truncated Fourier series
plot(t,fN);hold on;
m = 1:N(3);
an = sinc(m/2); % Fourier coefficients for x(t)
fN =0.5+ sum(diag(an)*cos(m'*pi*t/2),1); % Truncated Fourier series
plot(t,fN);hold on;
m = 1:N(4);
an = sinc(m/2); % Fourier coefficients for x(t)
fN =0.5+ sum(diag(an)*cos(m'*pi*t/2),1); % Truncated Fourier series
plot(t,fN);hold on;
m = 1:N(5);
an = sinc(m/2); % Fourier coefficients for x(t)
fN = 0.5+ sum(diag(an)*cos(m'*pi*t/2),1); % Truncated Fourier series
plot(t,fN);hold off;
legend('x(t)',int2str(N(1)),int2str(N(2)),int2str(N(3)),int2str(N(4)),int2str(N(5)));
xlabel('Time'), ylabel('x_N(t)');