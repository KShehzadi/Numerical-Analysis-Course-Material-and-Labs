%################ LAB 12 Question 22 problem 2 ###########################
%
% In this lab task we have to implement a function mymidpoint which
% calculates Integration of a function in a certain interval by using
% midpoint rule this function takes 4 parameters f is a function a
% is a start of interval and b is a end of interval and n are the number of
% pieces on which we have to split the interval from a to b so this
% function outputs a M which is approximate Integartion we have to
% calculate the integartion of the function at n = 4 and n = 100 and
% analyse the result with true value

format long
% function whose integration has to be done
f = @(x) x.^(1/2);
% start of interval
startofinterval = 1;
% end of interval
endofinterval = 2;

% for n = 4 
firstSliceOfM = 4;

% for n = 100
secondSliceOfM = 100;

% actual value of function
Actual_Value = integral(f, 1, 2)


% calculating function value at n = 4
disp('My midpoint integration for "4" Slices')

Integration_By_myMidPointMethod = mymidpoint(f, startofinterval, endofinterval, firstSliceOfM)



DifferenceFromTrueValue = Actual_Value - Integration_By_myMidPointMethod
% percentage error
PercentageError = abs(DifferenceFromTrueValue*100)


% Calculating function value at n = 100
disp('My midpoint integration for "100" Slices')

Integration_By_myMidPointMethod = mymidpoint(f, startofinterval, endofinterval, secondSliceOfM)


DifferenceFromTrueValue = Actual_Value - Integration_By_myMidPointMethod

% percentage error
PercentageError = abs(DifferenceFromTrueValue*100)


% the required mid point function
function M = mymidpoint(f, a, b, n)
% x - vector from a to b splitted in n equal parts
% y - function value at x
% M - Approximate Integartion by mid point rule
x = linspace(a, b, n);
y = f(x);
M = 0;
for i = 1:n-1
    k = (x(i) + x(i+1))/2;
M = M + f(k)*((x(i+1)-x(i)));
end
end
