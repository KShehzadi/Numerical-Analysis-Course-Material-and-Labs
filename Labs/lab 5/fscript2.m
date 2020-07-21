% Lab 5 question 2
% in this question i have calculated the square root of 3 by newton raphson
% method as described in book the formula for square root of a value say
% 'a' is given in book and i have used that formula here 
% the precision of function is up to its tolerance which is 10.^-10 means
% the function is accurate up to 10 digit of value of square root of a
% a number 

newtonraphsonsquaremethod(3, 10.^-10)

% function for square root calculation 
function newtonraphsonsquaremethod(a, tol)
k = 0;
x0 = 1.5;
n = 2;
while n > 1
    x1 = (1/2).*(x0 + (a / x0)); % given formula in book
    k  = k + 1; % number of iterations
    if abs(x1 - x0) < tol
        break
    end
    x0 = x1;
end
k
x0
end