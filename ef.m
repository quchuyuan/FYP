function y= ef(l)
 a=0;
 b=2;
 c=1;
 K=((l-a)+sqrt((a^2)-2*a*l+(l^2)-4));
 r=[K^2+(a-l)*(K^(-1)); c*K^(-1); 0];
 M=[K^2+(a-l)*K, c, 0; c*K, b-l, c*K; 0, c, a*K+K^2];
 x=r\M;
 R=x(1);
 X0=x(2);
 T=x(3);
 y=abs(R)^2+abs(T)^2;
 end