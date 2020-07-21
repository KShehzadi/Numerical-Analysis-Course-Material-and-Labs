%               Lab 3 question 2
%
% In this lab we will calculate the e^x for x = -20 by taylor series we
% will take value of n where our value of e^(-20) will converge and 
% calculate the exact and calculated value and take the absolute error
% between them 
% here we get a very big absolute error but why? here is the answer of this
% question :
% As we are calculating a infinite series up to a converging point and
% there are so many add and subtract operations whic makes it unstable it
% is a numarical fault in computation 


x = -20; % value of x
n = 94; % number of iterations selected by hit and trial method at that point value converges
calculated_value = 0; % value at start
exact_value = exp(x); % true value


for i = 0:n;% loop for computation of series up to n
    calculated_value = calculated_value + (x^i / factorial(i));
end
n
exact_value
calculated_value
absolute_error = abs(exact_value - calculated_value) % absolute error in computation
