%实验1
clear ALL
clc
clf

N=11;           %窗宽
M=N-1;          %FIR滤波器阶数
Wc=0.2*pi;      %截止频率

% 矩形窗
wind=boxcar(N);
b=fir1(M,Wc/pi,'low',wind);
a=1;
[H1,w1]=freqz(b,a);

% 哈明窗
wind=hamming(N);
b=fir1(M,Wc/pi,'low',wind);
a=1;
[H2,w2]=freqz(b,a);

%绘制图像
subplot(1,2,1);
Hz1=20*log10(abs(H1));
plot(w1/pi,Hz1);
title("矩形窗设计的FIR低通滤波器");
xlabel("归一化频率：w/\pi")
ylabel("Hz(dB)")
subplot(1,2,2);
Hz2=20*log10(abs(H2));
plot(w2/pi,Hz2);
title("哈明窗设计的FIR低通滤波器");
xlabel("归一化频率：w/\pi")
ylabel("Hz(dB)")