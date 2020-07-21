% #################### LAB 12 Question 23 Problem 3 ######################
%
% In this lab task we have to implement a function mysimpson which
% calculates Integration of a function in a certain interval by using
% simpson's method this function takes 4 parameters f is a function a
% is a start of interval and b is a end of interval and n are the number of
% pieces on which we have to split the interval from a to b 
% in this function we have to use mysimpweights function to get the
% coefficients of all function values at all x from a to b interval
% so this function outputs a S which is approximate Integartion we have to
% calculate the integartion of the function at n = 4 and n = 100 and
% analyse the result with true value
format long 

% function whose integartion is to be calculated
f = @(x)x.^(1/2);

% Actual Value of integartion
ActualValue = integral(f, 1, 2)

% simpsons integration at n = 4
Simpsons_Integration_at_4_slices = mysimpson(f, 1, 2,4)

% Percentage Error in n = 4 
PercentageErrorInThis = (ActualValue - Simpsons_Integration_at_4_slices )* 100

% simpson's integration at n = 100
Simpsons_Integration_at_100_slices = mysimpson(f, 1, 2,100)

% Percenatge Error in n = 100
PercentageErrorInThis = (ActualValue - Simpsons_Integration_at_100_slices )* 100





% mysimpson the required function 
function S = mysimpson(f, a, b, n)
% w - coefficient vector for n
% x - vector from a to b interval divided in n+1 equal parts
% y - function value at x
% S - Approximate Integration by Simpsons method
% z - difference in each interval in x which is equal
w = mysimpweights(n);
x = linspace(a, b, length(w));
y = f(x);
p = length(x);
S = 0;

z = (x(2) - x(1))/3;
for i = 1:p
% Calculating simpsons integration by this formula
S= S + w(i)*y(i)*z;
end
end


function w = mysimpweights(n)
% Computes the weights for Simpson ’s rule
% Input : n -- the number of intervals , must be even
% Output : w -- a ( column ) vector with the weights , length n+1
if rem(n, 2) ~= 0
error('n must be even for Simpsons rule')
end
w = ones(n+1 ,1); % column vector , starts all 1
for i = 2:n
% loop except for first and last , which stay 1
if rem(i,2)==0
w(i)=4; % even index values set to 4
else
w(i)=2; % odd index values set to 4
end
end
end
