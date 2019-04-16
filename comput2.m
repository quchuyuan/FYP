function [V,D]=comput2(n,A)
J=ones(1,n);
 J(1)=0;
 J(n)=0;
 J=diag(J);
 M=[A -J; eye(n) zeros(n)];
 [V,D]=eig(M);
end