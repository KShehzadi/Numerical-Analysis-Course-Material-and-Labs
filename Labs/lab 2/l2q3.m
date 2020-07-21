% Lab 2 Question 3
% in this question we will calculate the values of a function x.^3-4 by
% newton method upto 3 iterations starting from xo = 2 and calculating the 
% percentage error in each value of x , x = xo, x1, x2, x3.
% The exact value x* of function is given where it starts converging
% By this wo are calculating absolute error and relative error and then
% percentage error as required

format long

% given function and its derivative
f = @(x)x.^3-4;
f1 = @(x)3*x.^2;

% number of iterations for all values of x
n = 3;

% true value of function
ExactValue = 4.^(1/3)

% starting value of x
xo = 2;

% function call for newton method
Calculated = newton(f, f1, xo, n);

% names of values
p = ["xo", "x1", "x2", "x3"];

% formulae for absolute error , relative error and percentage error respectively 
AbsoluteError = abs(ExactValue - Calculated);
RelativeError = AbsoluteError/ExactValue;
PercentageError = RelativeError .* 100;


% Now drawing a table for every required field
T = table;
T.valuename = p';
T.calculated_values = Calculated';
T.absolute_error = AbsoluteError';
T.Relative_error = RelativeError';
T.Percentage_error = PercentageError'


% function to calculate the convergence of a function by newton method
function m = newton(f, f1, xo, n)
x = xo;
m = [];
m = [m, x];
for i = 1:n
    x = x - (f(x)/f1(x));
    m = [m, x];
end
end
