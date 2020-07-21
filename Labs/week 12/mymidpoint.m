function M = mymidpoint(f, a, b, n)
x = linspace(a, b, n);
y = f(x);
M = 0;
for i = 1:n-1
    k = (x(i) + x(i+1))/2;
M = M + f(k)*((x(i+1)-x(i)));
end
end