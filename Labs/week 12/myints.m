function [L, R, T] = myints(f, a, b, n)
x = linspace(a, b, n+1);
y = f(x);


n = length(x);
L = 0;
for i = 1:n-1
% accumulate height times width
L = L + y(i)*(x(i+1)-x(i));
end


n = length(x);
R = 0;
for i = 2:n
% accumulate height times width
R = R + y(i)*(x(i)-x(i-1));
end


n = length(x);
T = 0;
for i = 1:n-1
% accumulate the signed area of the trapezoids
T = T + .5*(y(i)+y(i+1))*(x(i+1)-x(i));
end

end