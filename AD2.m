b=2;
c=1;
k=1;
A=[0 c 1 0 0 0; c b 0 0 0 0; 1 0 0 1 0 0; 0 0 1 0 0 1; 0 0 0 0 b c; 0 0 0 1 c 0];
[V,D]=comput2(6,A);
sg = diag(D)

lamda=sg(3:10)+1./sg(3:10)

subplot(2,2,1)
plot((1:6),V(7:12,3),'ro');

subplot(2,2,2)
plot((1:6),V(7:12,4),'ro');

subplot(2,2,3)
plot((1:6),V(7:12,5),'ro');

subplot(2,2,4)
plot((1:6),V(7:12,10),'ro');