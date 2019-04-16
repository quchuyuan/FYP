b=20;
c=15;
A=[0 0 20 0 0; 0 b c 0 0; 20 c 0 c 20; 0 0 c b 0; 0 0 20 0 0];
[V,D]=comput2(5,A);
sg = diag(D)

lamda=sg(3:8)+1./sg(3:8);