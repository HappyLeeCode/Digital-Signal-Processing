%封装DFT变换的实现代码
function X=DFT(x,M,N)
n=0:M-1;
k=0:N-1;
WN=exp(-j*2*pi/N);
kn=n'*k;
WNkn=WN.^kn;
X=x*WNkn;
end