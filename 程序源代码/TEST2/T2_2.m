%实验2
clear ALL
clc
clf

x=[2,1,3,1];
x1=[x,zeros(1,2)];
x2=circshift(x1',-1);  %注意将x1转置

n=0:1:5;
stem(n,x2');    %绘图时将x2再转置回来

