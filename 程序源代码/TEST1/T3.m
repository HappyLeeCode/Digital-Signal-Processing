%实验3
clear ALL
clc
clf

n=0:50;
f=1000;
T=1/f;
A=444.128;
a=50*2*0.5*pi;
w0=50*2*0.5*pi;

x=A*exp(-a*n*T).*sin(w0*n*T);   % x(n)长度为51
h=[1 2.5 2.5 1];                % h(n)长度为4
y=conv(x,h);                    % y(n)为x(n)与h(n)卷积结果，长度为51+4-1=54

X=DFT(x,51,251);                % X=DFT(X)
H=DFT(h,4,251);                 % H=DFT(h)
Y=DFT(y,51+4-1,251);            % Y=DFT(y)

XH=X.*H;                        % 频域中，X和H相乘


subplot(1,3,1);                 % 画x(n)、h(n)、y(n)图像
n1=(0:50);
stem(n1,x);
title("x(n)图像");
subplot(1,3,2);
n2=(0:3);
stem(n2,h);
title("h(n)图像");
subplot(1,3,3);
n3=(0:53);
stem(n3,y);
title("y(n)图像");

figure;                         % 画Y(jw)、X(jw)*H(jw)的幅频特性曲线
subplot(1,2,1);
k=0:1:250;
w=2*pi*k/251;
plot(w/pi,abs(Y));
title("Y(jw)的幅频特性曲线");
subplot(1,2,2);
k=0:1:250;
w=2*pi*k/251;
plot(w/pi,abs(XH));
title("X(jw)*H(jw)的幅频特性曲线");

figure;                         % 画Y(jw)、X(jw)*H(jw)的相频特性曲线
subplot(1,2,1);
k=0:1:250;
w=2*pi*k/251;
plot(w/pi,angle(Y));
title("Y(jw)的相频特性曲线");
subplot(1,2,2);
k=0:1:250;
w=2*pi*k/251;
plot(w/pi,angle(XH));
title("X(jw)*H(jw)的相频特性曲线");


