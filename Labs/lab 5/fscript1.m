% Lab 5 Question 1
% In this lab i have calculated the value of a functions's root by 3
% methods one is newton method 2nd is regula falsi method and the 3rd one
% is secant method to check which one is more efficient the script of all
% functions is designed for symbolic function manipulation with single 
% variable for a interval a, b in which a is greater than b subscript with
% a b denotes the number of interval for function
syms x
% function
f = 230.*x.^4 + 18.*x.^3 + 9.*x.^2 - 22.*x - 9;

%  first interval 
a1 = 0;
b1 = -1;

% a point in interval for newton method initial approximation
c1 = (a1 + b1)/2;

% tolerance 
tol = 10^-6;


% calculation by newton method in first interval
disp('for value -0.5 the average of interval')
disp('root value by newton method is :')
mynewtonmethod(f, c1, tol)


% calculation by false position method in first interval
disp('first interval is from -1 to 0')
disp(' the root of function in first interval by false position method')
regulafalsi(f, a1, b1, tol)

% calculation by secant method in first interval
disp('first interval is from -1 to 0')
disp('the root of function in this interval by secant method')
mysecant(f, a1, b1, tol)


% 2nd interval
a2 = 1;
b2 = 0;

% a point in between of 2nd interval
c2 = (a2 + b2)/2;

% calculation of function's root in 2nd interval by newton's method
disp('for value 0.5 the average of interval')
disp('root value by newton method is :')
mynewtonmethod(f, c2, tol)


% calculation of function's root in 2nd interval by false position method
disp('first interval is from 0 to 1')
disp(' the root of function in first interval by false position method')
regulafalsi(f, a2, b2, tol)


% calculation of function's root in 2nd interval by secant method
disp('second interval is from 0 to 1')
disp('the root of function in this interval by secant method')
mysecant(f, a2, b2, tol)


% Newton method
function mynewtonmethod(f, a, tol)
g = diff(f);
x0 = a;
n = 2;
p = 0;
while n > 1
    k = double(subs(f, x0));
    l = double(subs(g, x0));
    x1 = double(x0 - (k/l));
    x2 = double(subs(f, x1));
    if(x2 < tol)
        break
    end
    x0 = x1;
    p = p + 1;
end
p
x = double(x1)
end


% method of false position
function x = regulafalsi(f , a , b , tol)
k = 0;
n = 2;
while n > 1
    y0 = subs(f,a);
    y1 = subs(f,b);
    x = double(b - ((b-a)/(y1-y0))*y1);
    y = subs(f,x);
    if y*y0 > 0
        b = x;
    else
        a = x;
    end
    k = k + 1;
    if y < tol || y == 0
        break
    end
    
end
x
k

end


% Secant method 
function x = mysecant(f , x0 , x1 , tol)
y0 = subs(f, x0); 
y1 = subs(f, x1);
k = 0;
n = 2;
while n > 1
    k = k + 1;
    x = double(x1 - (x1-x0)*y1/(y1-y0));
    y = double(subs(f,x));
    if y < tol
        break
    end
    x0=x1 ;
    y0=y1 ;
    x1=x ;
    y1=y ;
end
k
x

end