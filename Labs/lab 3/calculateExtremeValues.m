%                  Lab 3 question 3
% 
% In this question we will calculate the minimum and maximum value of a
% function by extreme value theorem first we will calculate its critical
% points in a function whose definition is given in lab manual if the
% critical points are in the range of interval we will just put the minimum
% value and find the minimum value of function and vice versa for maximum
% value's case but if it is not in the required range we will just plug the
% values of interval minimum and maximum and find out the minimum and
% maximum values of function respectively 
% the implementation is done symbolically 
% because we have to take derivative for critical point 
% and now we have done.


syms x;  % symbol x

% everyting done for first function given in manual
first_function = sin(x) + cos(x); 
first_interval = [0, 2*pi]; % its interval
[firstmin, firstmax] = calculateExtremeValues(first_function, first_interval)


% everything is done for 2nd function given in maual 
second_function = x^4 - 3*x^3 - 1;
second_interval = [-2, 2]; % its interval
[second_min, second_max] = calculateExtremeValues(second_function, second_interval)


% the function which calculates the extreme values of function
function [maximum, minimum] = calculateExtremeValues(f, interval)

d = diff(f); % differential of function
y = solve(d); % solution of derivative , critical points
m = min(y); % minimum critical point
n = max(y); % maximum critical point

% all computation for extreme values as explained before
if(m >= interval(1) && n <= interval(2))
    maximum = subs(f, n);
    minimum = subs(f, m);
else
    maximum = subs(f, interval(2));
    minimum = subs(f, interval(1));
end
end