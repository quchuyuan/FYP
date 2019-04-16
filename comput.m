function [R,T]=comput(n,A,L)
  Mu=0.5*(L+sqrt(4-L^2)*1i);
  U=zeros(n);
  U(1,1)=Mu;
  U(n,n)=Mu;
  AXX=A-L*eye(n)+U;
  r=zeros(n,1);
  r(1)=Mu-1/Mu; 
  x=AXX\r;
  R=x(1)-1;
  T=x(n)/(Mu^(n-1));
end