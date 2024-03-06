%实验3
clear ALL
clc
clf

x1=[1,2,2,1];
x2=[1,-1,1,-1];
y1=conv(x1,x2);
subplot(4,1,1);
n1=0:1:6;
stem(n1,y1);
title('线性卷积')

for N=6:1:8
x11=[x1,zeros(1,N-4)];
x21=[x2,zeros(1,N-4)];
X1=fft(x11,N);
X2=fft(x21,N);
Y=X1.*X2;
y=ifft(Y,N);
subplot(4,1,N-4)
n2=0:1:N-1;
stem(n2,y);
title('循环卷积点数：',N)
end