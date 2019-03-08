a=1;
b=2;
c=3;
i=1;
for L=1:0.001:10
 K=((L-a)+sqrt((a^2)-2*a*L+(L^2)-4));
 r=[K^2+(a-L)*(K^(-1)); c*K^(-1); 0];
 M=[K^2+(a-L)*K, c, 0; c*K, b-L, c*K; 0, c, a*K+K^2];
 x=r\M;
 D(i)=det(M);
 Real(i)=real(D(i));
 Imag(i)=imag(D(i));
 R(i)=x(1);
 X0(i)=x(2);
 T(i)=x(3);
 i=i+1;
 end
 
subplot(3,2,1)
L=linspace(1,10,9001);
plot(L,real(R),'.');
xlabel('eigenvalue')
ylabel('real Reflection coefficients)')

subplot(3,2,2)
plot(L,imag(R),'.');
xlabel('eigenvalue')
ylabel('imag Reflection coefficients)')

subplot(3,2,3)
plot(L,real(T),'.');
xlabel('eigenvalue')
ylabel('real Transmission coefficients)')

subplot(3,2,4)
plot(L,imag(T),'.');
xlabel('eigenvalue')
ylabel('imag Transmission coefficients)')

subplot(3,2,5)
plot(L,Real,'.');
xlabel('eigenvalue')
ylabel('real(Det(M))')

subplot(3,2,6)
plot(L,Imag,'.');
xlabel('eigenvalue')
ylabel('imag(Det(M))')