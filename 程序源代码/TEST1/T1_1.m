%实验1.1
clear ALL
clc
clf

n=-10:1:10;
sigma=[zeros(1,10) 1 zeros(1,10)];
stem(n,sigma);
xlabel("n");
ylabel("x(n)");
title("δ(n)图像");