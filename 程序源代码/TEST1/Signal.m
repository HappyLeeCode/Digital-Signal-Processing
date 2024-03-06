%封装题目中的信号x(t)，为Signal(n,A,a,w0,f)
function x=Signal(n,A,a,w0,f)
T=1/f;
x=A*exp(-a*n*T).*sin(w0*n*T);
end