%################## LAB 9 QUESTION 8 ###########################
%
%in this lab task we are solving two mtarices of different types by two
%different methods the two matrices of different types are random and
%hilbert matrices and the two methods are Lu decomposition and inverse
%method to check solution and residual by both methods for both matrices we
%have to check how much greater value can be given to both randn and
%hilbert matrices on which they can work smoothly 
% this can be check by plugging different values of n and p ,n for randn
% matrix and p for hilbert matrix and check where the program slow down the
% previous value will be the solution 

format long
n = 1000;
p = 11;
A1 = randn(n,n);
A2 = hilb(p);
b1 = randn(n, 1);
b2 = randn(p,1);
[rx1, rr1, rx2, rr2] = mysolve(A1, b1)
[hx1, hr1, hx2, hr2] = mysolve(A2, b2)

function [x1, r1, x2, r2] = mysolve(A, b)

[L U P] = lu(A);
d = P*b;
y = L\d;
x1 = U\y;
r1 = norm(A*x1-b);
x2 = A\b;
r2 = norm(A*x2 - b);
end
