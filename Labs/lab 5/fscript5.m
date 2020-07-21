%################# LAB 5 QUESTION 5 ###########################
% in this question we have to calculate the cube of 25 precise upto 10
% decimal places by bisection method first i have written it in function form
% x = 25^3 then i have calculated the root of function in interval 15000 
% to 16000 because at these intervals the value of function changes its sign 
% i have used anonymous function for this  and x is the root of function


% anonymous function
f = @(x) x.^(1/3) - 25;

%interval
a = 15000;
b = 16000;
tol = 10.^-10; % tolerance


% function for bisection method
x = mybisect(f, a, b, tol)
function x  = mybisect ( f , a , b, tol )
c = f(a) ; 
d = f(b) ;
x = a+b/2;
y = f(x);
n = 0;
if c * d > 0.0
    error('Function has same sign at both end points.')
end
while 1<2 
n = n + 1;
x = (a + b) / 2;
y = f(x) ;
if abs(y) < tol
    break
end
if (c*y < 0)
    b=x;
else
    a=x;
end

end
end
