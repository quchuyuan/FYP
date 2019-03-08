function y=deter(l,b)
 a=0;
 c=1;
 K=((l-a)+sqrt((a^2)-2*a*l+(l^2)-4));
 r=[K^2+(a-l)*(K^(-1)); c*K^(-1); 0];
 M=[K^2+(a-l)*K, c, 0; c*K, b-l, c*K; 0, c, a*K+K^2];
 y=det(M);
end
