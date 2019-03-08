fun=@deter;
lb = -10;             % Set a lower bound for the function.
ub = -2;          % Set an upper bound for the function.
x = ones(8001,1);             % Initializes x.
starting_points=linspace(-10,-2,8001);
for i=8000:1
        % Look for the zeros in the function's current window.
        L=[-3,starting_points(i-1)];
        x(i)=fzero(fun,L)
end

rs=fzero(fun,starting_points)

for i=1:8000
  if x(i+1)~=x(i)
    x(i+1)
  end
end

