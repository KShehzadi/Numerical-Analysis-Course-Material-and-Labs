%#################### LAB 5 QUESTION 3 ################################
%
% In this lab we have to solve 3 multivariable equations by newton method
% in newton method we make column vector of all equations and a matrix of
% each row differentiated by each variable and we give a point for each
% variable in a vector that would be the starting point of variable and
% then we start evaluating the function with newton method unless until all
% functions gives 0 value at some pair of points 


format long ;
% number of iteration
n=379;
% function vector
f = @(x)[x(1).^2 + x(2).^2 + x(3).^2 - 100; x(1).*x(2).*x(3) - 1; x(1) - x(2) - sin(x(3))]; 
% derivative vector
Df = @(x)[2.*x(1) ,2.*x(2) , 2.*x(3);  x(2).*x(3), x(1).*x(3), x(1).*x(2);  1, -1, -cos(x(3))];
% starting point of all 3 variables
x = [.5 ; .5; .5] 
% loop of newton method
for i = 1 : n
Dx = -Df(x).\f(x) ; 
x = x + Dx ;
f(x)
end