%实验3
clear ALL
clc
clf

[x,fs]=audioread('xiaocheng_noise.wav');       %打开语音信号
N=length(x); %长度
n=0:N-1;  
Wx=2*n*pi/N;
X=fft(x); %对原始信号做FFT变换

a=[1 3.47913978e+04 1.87590501e+09 4.03313474e+13 7.97671668e+17 7.71381999e+21];
b=[1.53116389e+03 -1.29990890e-09 7.32176217e+12 -2.03715033 7.71381999e+21];
[Hs,Ws]=freqs(b,a);

[bz,az]=bilinear(b,a,fs);
[Hz,Wh]=freqz(bz,az);

x1=filter(bz,az,x);
X1=fft(x1);

%sound(x,fs);              % 播放语音信号xiaocheng_noise.wav滤波之前的响应
sound(x1,fs);             % 播放语音信号xiaocheng_noise.wav滤波之后的响应

subplot(4,1,1);           % 做原始语音信号的频谱图
plot(Wx/pi,abs(X)); 
title('原始语音信号的幅度谱')
xlabel('归一化频率：w/\pi');
ylabel('幅度');

subplot(4,1,2)
plot(Ws,abs(Hs));
title('FIR滤波器的幅度谱(模拟)')
xlabel('频率：Hz');
ylabel('幅度');

subplot(4,1,3)
plot(Wh/pi,abs(Hz));
title('FIR滤波器的幅度谱(数字)')
xlabel('归一化频率：w/\pi');
ylabel('幅度');

subplot(4,1,4)
plot(Wx/pi,abs(X1));
title('滤波后的幅度谱')
xlabel('归一化频率：w/\pi');
ylabel('幅度');

