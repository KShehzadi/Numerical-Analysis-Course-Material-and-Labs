% Lab 1 Question 3
% It plots a graph of function (x^2)*(e^(-x^2))
% In range -5 to 5 
% x axis contains the range and y axis contains the values of function 
function y = l3q3()


x = linspace(-5, 5, 1000);%range of x from -5 to 5 points are 1000

y = x.^2 .* exp(-x.^2); % given function 


plot(x, y);

%title of graph
title('graph of (x^2)*(e^(-x^2)) function between -5 to 5 range');


xlabel('-5 < x < 5'); % x label

ylabel('values of function (x^2)*(e^(-x^2))'); % y label

