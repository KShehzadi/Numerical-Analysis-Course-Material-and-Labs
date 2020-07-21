function [eigenvalue, eigenvector, steps, res] = mypm(A, tol)
i = 0;
x = ones(size(A, 1),1);
v = tol;
m = 0;
while v >= tol
old = x;
x = A*x;
el = max(x);
x = x/el;
i = i + 1;
v = norm(x - old);
end
eigenvalue = el;
eigenvector = x/norm(x);
steps = i;
res = norm(A*eigenvector - el*eigenvector);
end