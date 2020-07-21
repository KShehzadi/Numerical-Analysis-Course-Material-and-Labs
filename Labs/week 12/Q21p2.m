%############## LAB 12 Question 21 problem 2 ############################
% In this lab task we have to implement a function myints which calculates
% integration of a function by left sum integration , right sum integration
% and trapezoid method . this function takes 4 parameters f is a function a
% is a start of interval and b is a end of interval and n are the number of
% pieces on which we have to split the interval from a to b so this
% function outputs 3 things L is for left sum integration result R is for
% right sum integration result and T is for integration approximation for
% trapezoid method
format long
% function whose integration to be calculated
f = @(x) x.^(1/2);
% start of interval
startofinterval = 1;
% end of interval
endofinterval = 2;
% number of slices
slices = 1000;

% function call to calculate L,R and T
[Left_Sum_integration, Right_Sum_Integration, Integration_by_trapezoid_method] = myints(f, startofinterval, endofinterval, slices)

% True value of function integration
Actual_Value = integral(f, 1, 2)

%Percentage Error in Left Sum
PercentageErrorInLeftSum = abs(Actual_Value - Left_Sum_integration)* 100

% Percentage Error in Right Sum
PercentageErrorInRightSum = abs(Actual_Value - Right_Sum_Integration)* 100

%Percentage Error in Trapezoid integration approximation
PercentageErrorInTrapezoidMethodIntegration = abs(Actual_Value - Integration_by_trapezoid_method)*100




% the required function of myints
function [L, R, T] = myints(f, a, b, n)

x = linspace(a, b, n);
y = f(x);
% x - vector from a to b interval splitted in n parts
% y - function values at x 


% Left sum integration Method
n = length(x);
L = 0;
for i = 1:n-1
% accumulate height times width
L = L + y(i)*(x(i+1)-x(i));
end

% Right Sum integration Method
n = length(x);
R = 0;
for i = 2:n
% accumulate height times width
R = R + y(i)*(x(i)-x(i-1));
end

% Integartion Approximation by Trapezoid Method
n = length(x);
T = 0;
for i = 1:n-1
% accumulate the signed area of the trapezoids
T = T + .5*(y(i)+y(i+1))*(x(i+1)-x(i));
end

end