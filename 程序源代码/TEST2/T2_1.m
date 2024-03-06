%实验1
clear ALL
clc
clf

n=0:1:10;                               % 采样长度为11           
x=cos(0.48*pi*n)+cos(0.52*pi*n);
X=DFT(x,11,251);                        % 普通DFT
X1=fft(x);                              % 快速算法，计算x的11点DFT
X2=fft(x,21);                           % 快速算法，计算x的21点DFT

subplot(1,4,1);
stem(n,x);
title("x(n)图像（采样长度为11）");
subplot(1,4,2);
k=0:1:250;
w=2*pi*k/251;
plot(w/pi,abs(X));
title("DFT后X(K)图像");
k=0:1:10;
subplot(1,4,3);
plot(k,abs(X1));
title("FFT后X1(K)图像（11点）");
k=0:1:20;
subplot(1,4,4);
plot(k,abs(X2));
title("FFT后X2(K)图像（21点）");


n=0:1:100;                              % 采样长度为101
x3=cos(0.48*pi*n)+cos(0.52*pi*n);
X3=fft(x3);

figure;
subplot(1,2,1)
stem(n,x3);
title("x(n)图像（采样长度为101）");
subplot(1,2,2)
k=0:1:100;
plot(k,abs(X3));
title("FFT后X3(K)图像");

