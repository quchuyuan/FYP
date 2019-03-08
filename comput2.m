function [V,D]=comput2(n,A,L)
 Mu=0.5*(L+sqrt(4-L)*i);
 J=ones(1,n);
 J(1)=0;
 J(n)=0;
 J=diag(J);
 M=[A -J; eye(n) zeros(n)]
 [v,d]=eig(M);
 V=v;
 D=d;
end