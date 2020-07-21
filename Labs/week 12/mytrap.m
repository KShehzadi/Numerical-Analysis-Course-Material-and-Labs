function T = mytrap(x, y)
% Calculates the Trapezoid rule approximation of the integral from data
% Inputs : y -- vector of the y coordinates of the partitian
% x -- vector of the corresponding x coordinates
% Output : returns the approximate integral
n = length(x);
T = 0;
for i = 1:n-1
% accumulate the signed area of the trapezoids
T = T + .5*(y(i)+y(i+1))*(x(i+1)-x(i));
end
end