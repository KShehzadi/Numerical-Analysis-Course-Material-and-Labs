    % Lab 1 Question 2
% it plots a graph of function x^2 + 3 in domain -3 to +3
% since it is defined in every domain of numbers so we selected this
% the values of function are same for negative ande positive integers
% that can be seen in graph 
% x axis shows the domainn of numbers from -3 to + 3
% y axis contains the values of function in domain 
% collected this function from a website of independent variable x and
% ploting of y
function y = l2q2()

% divides -3 to +3 in 100 equal parts
x = linspace(-3, 3, 100);

y = x.^2 + 3; %function
plot(x, y);

%title of graph
title('graph of function x^2 + 3 in domain -3 to  +3');

xlabel('-3< x < +3');% x label


ylabel('values of function  x^2 + 3')% y label
