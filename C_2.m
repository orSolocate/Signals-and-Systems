n = -10000:1:10000;
T = 4;

x1 = linspace(0,0,20001);
x2 = linspace(0,0,20001);
x3 = linspace(0,0,20001);

for n1=-10000:1:10000
    if(abs(n1*T)<=80)
        x1(n1+10001)=1;
        x3(n1+10001)=1;
    end
    
    if(abs(n1*T)<=160)
        x2(n1+10001)=1-(abs(T*n1)/160);
    end
    
    if(abs(n1*T)>80 && abs(n1*T)<=160)
        x3(n1+10001)=2-abs(T*n1)/80;
    end
    
end

subplot(3,1,1);
stem(n,x1);
axis([-50 50 0 2]);
subplot(3,1,2);
stem(n,x2);
axis([-50 50 0 2]);
subplot(3,1,3);
stem(n,x3);
axis([-50 50 0 2]);

figure

w = linspace(-pi,pi,20001);

X1=fft(x1,20001);
subplot(3,1,1)
plot(w,abs(fftshift(X1)));

X2=fft(x2,20001);
subplot(3,1,2)
plot(w,abs(fftshift(X2)));

X3=fft(x3,20001);
subplot(3,1,3)
plot(w,abs(fftshift(X3)));
