b=1/20;
c=15/20;
k=1;
A=[0 0 1 0 0; 0 b c 0 0; 1 c 0 c 1; 0 0 c b 0; 0 0 1 0 0];
[V,D]=comput2(5,A);
sg = diag(D)
 
lamda=sg(3:8)+1./sg(3:8)