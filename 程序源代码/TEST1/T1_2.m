%实验1.2
clear ALL
clc
clf

n=0:1:10;
x=(0.5).^n;
stem(n,x);
E=sum(x.^2);
xlabel("n");
ylabel("x(n)");
title("x(n)=(0.5)^n图像");