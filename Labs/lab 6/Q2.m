itreation = 6;
n = [];
myerror = [];
for i = 1:itreation
    n(i) = (2^(i-1))*10;
end

for i = 1:itreation
    myerror(i) = myinvchk(n(i));
end

loglog(n, myerror);
function y = myinvchk(n)
         A = randn(n, n);
         B = inv(A);
         C = A*B;
         Residual = C - eye(n);
         y = norm(Residual);
end