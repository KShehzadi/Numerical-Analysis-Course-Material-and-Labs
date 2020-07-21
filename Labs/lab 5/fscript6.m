%############## LAB 5 QUESTION 6 ###################################
%
% in this lab we have to calculate the root of function in 10 iterations of
% 3 methods one is bisect 2nd one is regula falsi and third one is secant
% method and check the root of functions and compare it with the true value
% given and obtain the most good method for function to find the root in
% minimum number of iterations



% anonymous function
f = @(x)tan(pi*x) - 6;

%interval 
a1 = 0;
b1 = 0.48;

%true value
true_value = 0.447431543;
% number of iterations
n = 10;

% calculation by newton method in first interval
disp('for value of interval')
disp('root value by bisection method is :')
x1 = mybisect(f, a1, b1 , n)


% calculation by false position method in first interval
disp('first interval is from 0 to 0.48')
disp(' the root of function in first interval by false position method')
x2 = regulafalsi(f, a1, b1, n)

% calculation by secant method in first interval
disp('first interval is from 0 to 0.48')
disp('the root of function in this interval by secant method')
x3 = mysecant(f, a1, b1, n)

disp('the most close root is obtained by bisection method ')
disp('which is:')
x1
disp('difference from true value is')
x = abs(x1 - true_value)


% bisection method
function x  = mybisect ( f , a , b, n )
c = f(a) ; 
d = f(b) ;
e = 0;
if c * d > 0.0
    error('Function has same sign at both end points.')
end
for e = 1 : n
    x = ( a + b) / 2;
    y = f(x) ;
if y == 0.0
    break % jumps out o f the f o r l o o p
end
% d e ci d e which h a l f t o keep , s o t h a t the s i g n s at the ends d i f f e r

if (c * y < 0)
    b=x ;
else
    a=x ;
end

end
x = a+b/2;
end



% method of false position
function x = regulafalsi(f , a , b , n)
for i= 1:n
    y0 = f(a);
    y1 = f(b);
    x = (b - ((b-a)/(y1-y0))*y1);
    y = f(x);
    if y*y0 > 0
        b = x;
    else
        a = x;
    end
end

end


% Secant method 
function x = mysecant(f , x0 , x1 , n)
y0 = f(x0); 
y1 = f(x1);
for i = 1 : n
    x = (x1 - (x1-x0)*y1/(y1-y0));
    y = f(x);
    x0=x1 ;
    y0=y1 ;
    x1=x ;
    y1=y ;
end

end