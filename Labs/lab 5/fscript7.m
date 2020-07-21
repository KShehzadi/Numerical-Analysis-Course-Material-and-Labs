% ################ LAB 5 QUESTION 7#########################
% in this question we have to calculate the root of given function by
% nwewton raphson method  the tolerance limit for function is 10.^-5
% it means error after 5 decimal places is acceptable 
% in this question we are using symbolic function and calculating the root
% of f upto 5 decimal places
syms x
f = 4*x^2 - exp(x) - exp(-x);% symbolic function
tolerance = 10^-5; %tolerance
mynewtonmethod(f, 0.3, 10^-5)


% NEWTON RAPHSON METHOD
function mynewtonmethod(f, a, tol)
g = diff(f);
x0 = a;
n = 2;
while n > 1
    k = subs(f, x0);
    l = subs(g, x0);
    x1 = double(x0 - (k/l));
    y = double(subs(f, x1));
    if y < tol
        break
    else
        x0 = x1;
    end
end
x0
x1
end