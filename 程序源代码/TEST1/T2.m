%实验2
clear ALL
clc
clf

n=0:50;
A=444.128;
a=50*2*0.5*pi;
w0=50*2*0.5*pi;

x1=Signal(n,A,a,w0,1000);   %采样频率为1kHz
x2=Signal(n,A,a,w0,300);    %采样频率为300Hz
x3=Signal(n,A,a,w0,200);    %采样频率为200Hz

X1=DFT(x1,51,251);
X2=DFT(x2,51,251);
X3=DFT(x3,51,251);

k=0:1:250;
w=2*pi*k/251;

%绘制图像
subplot(3,2,1);
stem(n,x1);
title("采样频率为1kHz的x1(n)图像");
subplot(3,2,2)
plot(w/pi,abs(X1));
title("X1的幅频特性曲线");
subplot(3,2,3);
stem(n,x2);
title("采样频率为300Hz的x2(n)图像");
subplot(3,2,4);
plot(w/pi,abs(X2));
title("X2的幅频特性曲线");
subplot(3,2,5)
stem(n,x3);
title("采样频率为200kHz的x3(n)图像");
subplot(3,2,6);
plot(w/pi,abs(X3));
title("X3的幅频特性曲线");

