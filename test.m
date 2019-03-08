a=0;
b=2;
c=1;
i=1;
for L=-2:0.001:2
 K=((L-a)+sqrt((a^2)-2*a*L+(L^2)-4));
 r=[-K^2+(L-a)*K; -c*K; 0];
 M=[K^(-2)+(a-L)*K^(-1), c, 0; c*K^(-1), b-L, c*K; 0, c, (a-L)*K+K^2];
 x=r\M;
 D(i)=det(M);
 Real(i)=real(D(i));
 Imag(i)=imag(D(i));
 R(i)=x(1);
 X0(i)=x(2);
 T(i)=x(3);
 i=i+1;
end

abs(T(1500))^2+abs(R(1500))^2
abs(T(2000))^2+abs(R(2000))^2

subplot(2,2,1)
L=linspace(-2,2,4001);
plot(L,real(R),'.');
xlabel('eigenvalue')
ylabel('real Reflection coefficients)')

subplot(2,2,2)
plot(L,imag(R),'.');
xlabel('eigenvalue')
ylabel('imag Reflection coefficients)')

subplot(2,2,3)
plot(L,real(T),'.');
xlabel('eigenvalue')
ylabel('real Transmission coefficients)')

subplot(2,2,4)
plot(L,imag(T),'.');
xlabel('eigenvalue')
ylabel('imag Transmission coefficients)')

