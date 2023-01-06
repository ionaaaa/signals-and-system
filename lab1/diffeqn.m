function y = diffeqn(a, x, yn1)
%  DIFFEQN 此函数的简短摘要。
% 
% 此函数的详细说明。
y(1) = a .* yn1 + x(1); %y[0]
for n = 2 : length(x)
    y(n) = a .* y(n - 1) + x(n); %y[n], n > 0
end