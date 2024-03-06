%实验二、用脉冲响应不变法和双线性变换法设计IIR数字滤波器
clear ALL
clc
clf

Wp=0.2*pi;
Ws=0.3*pi;
Rp=1;
Rs=15;
T=1;
Fs=1;
omegap=2*tan(Wp/2);
omegas=2*tan(Ws/2);

%脉冲响应不变法
[N,Wn]=buttord(Wp,Ws,Rp,Rs,'s');
[B,A]=butter(N,Wn,"low",'s');

[Bz1,Az1]=impinvar(B,A,Fs);
[H1,w1]=freqz(Bz1,Az1);
Hs1=20*log10(abs(H1));

subplot(1,2,1);
plot(w1/pi,Hs1)
axis([0 1.5 -75 10]);
title("脉冲响应不变法设计的IIR");
xlabel("归一化频率：w/\pi")
ylabel("Hz(dB)")

%双线性变换法
[N,Wn]=buttord(omegap,omegas,Rp,Rs,'s');
[B,A]=butter(N,Wn,"low",'s');

[Bz2,Az2]=bilinear(B,A,Fs);
[H2,w2]=freqz(Bz2,Az2);
Hs2=20*log10(abs(H2));

subplot(1,2,2);
plot(w2/pi,Hs2)
axis([0 1.5 -75 10]);
title("双线性变换法设计的IIR");
xlabel("归一化频率：w/\pi")
ylabel("Hz(dB)")