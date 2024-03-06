%实验一、模拟滤波器的设计
clear ALL
clc
clf

%第一小问
Wp=2*pi*5;
Ws=2*pi*12;
Rp=3;
Rs=30;
[N,Wn]=buttord(Wp,Ws,Rp,Rs,'s');
[B,A]=butter(N,Wn,"low",'s');
w=0:100;
H1=freqs(B,A,w);
Hs1=20*log10(abs(H1));

%第二小问
Wp=2*pi*20;
Ws=2*pi*10;
Rp=3;
Rs=30;
[N,Wn]=buttord(Wp,Ws,Rp,Rs,'s');
[B,A]=butter(N,Wn,"high",'s');
w=0:100;
H2=freqs(B,A,w);
Hs2=20*log10(abs(H2));

%第三小问
Wp=[2*pi*10,2*pi*25];
Ws=[2*pi*5,2*pi*30];
Rp=3;
Rs=30;
[N,Wn]=buttord(Wp,Ws,Rp,Rs,'s');
[B,A]=butter(N,Wn,"bandpass",'s');
w=0:1000;
H3=freqs(B,A,w);
Hs3=20*log10(abs(H3));

%第四小问
Wp=[2*pi*10,2*pi*35];
Ws=[2*pi*15,2*pi*30];
Rp=3;
Rs=30;
[N,Wn]=buttord(Wp,Ws,Rp,Rs,'s');
[B,A]=butter(N,Wn,"stop",'s');
w=0:1000;
H4=freqs(B,A,w);
Hs4=20*log10(abs(H4));

%绘制图像
subplot(2,2,1);
w1=0:100;
plot(w1/pi,Hs1);
title("低通滤波器的幅频特性");
xlabel("频率：Hz")
ylabel("Hs1(dB)")

subplot(2,2,2);
w2=0:100;
plot(w2/pi,Hs2);
title("高通滤波器的幅频特性");
xlabel("频率：Hz")
ylabel("Hs2(dB)")

subplot(2,2,3);
w3=0:1000;
plot(w3/pi,Hs3);
title("带通滤波器的幅频特性");
xlabel("频率：Hz")
ylabel("Hs3(dB)")

subplot(2,2,4);
w4=0:1000;
plot(w4/pi,Hs4);
title("带阻滤波器的幅频特性");
xlabel("频率：Hz")
ylabel("Hs4(dB)")

