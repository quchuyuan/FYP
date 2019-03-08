b=2;
c=1;
k=1;
A=[0 0 1 0 0; 0 b c 0 0; 1 c 0 c 1; 0 0 c b 0; 0 0 1 0 0];
for L=-8:0.001:-2
 [v,d]=comput2(5,A,L);
 Mu=0.5*(L+sqrt(4-L)*i);
 U=Mu^-1;
 V(k)=v;
 %X(k)=d;
 k=k+1;
end

L=linspace(-8,-2,6001);

plot(L,V,'.');
xlabel('Lamda')
ylabel('eigenvalue')
hold on
plot(L,U,'-')