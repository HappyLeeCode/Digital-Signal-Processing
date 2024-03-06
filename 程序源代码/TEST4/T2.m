%实验2
clear ALL
clc
clf

Wp=0.2*pi;
Ws=0.4*pi;
Rs=50; %用来查表的确定N和过度带宽的关系

deltaw=Ws-Wp;
N=ceil(8*pi/deltaw);
Wc=(Wp+Ws)/2;
M=N-1;

wind=hamming(N);
subplot(1,2,1);
stem(wind);
title("哈明窗曲线");
xlabel("归一化频率：w/\pi")
ylabel("w");

b=fir1(M,Wc/pi,'low',wind);
a=1;
[H,w]=freqz(b,a);
subplot(1,2,2);
Hz=20*log10(abs(H));
plot(w/pi,Hz)
title("FIR低通滤波器幅频特性曲线");
xlabel("归一化频率：w/\pi")
ylabel("Hz(dB)")