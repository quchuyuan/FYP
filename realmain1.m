b=20;
c=15;
A=[0 0 20 0 0; 0 b c 0 0; 20 c 0 c 20; 0 0 c b 0; 0 0 20 0 0];
n = 1000;
L = linspace(-1.95,1.95,n);
for j=1:n
 [r,t]=comput(5,A,L(j));
 R(j)=r;
 T(j)=t;
end 

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

