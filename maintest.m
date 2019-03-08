b=2;
c=1;
k=1;
A=[0 0 1 0 0; 0 b c 0 0; 1 c 0 c 1; 0 0 c b 0; 0 0 1 0 0];
for L=-2:0.001:2
 [r,t]=comput(5,A,L);
 R(k)=r;
 T(k)=t;
 k=k+1;
end 

L=linspace(-2,2,4001);

subplot(3,2,1)
plot(L,real(R),'.');
xlabel('eigenvalue')
ylabel('real(Det(M))')

subplot(3,2,2)
plot(L,imag(R),'.');
xlabel('eigenvalue')
ylabel('imag(Det(M))')

subplot(3,2,3)
plot(L,real(T),'.');
xlabel('eigenvalue')
ylabel('real Transmission coefficients)')

subplot(3,2,4)
plot(L,imag(T),'.');
xlabel('eigenvalue')
ylabel('imag Transmission coefficients)')

subplot(3,2,5)
plot(L,abs(R).^2+abs(T).^2,'.');
xlabel('eigenvalue')
ylabel('energy')


 