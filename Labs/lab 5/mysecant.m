function x = mysecant(f , x0 , x1 , tol)
y0 = f(x0); 
y1 = f(x1);
k = 0;
while abs(y1 - y0) > tol
    x = x1 - (x1-x0)*y1/(y1-y0);
    y = f(x);
    x0=x1 ;
    y0=y1 ;
    x1=x ;
    y1=y ;
    k = k + 1;
end
k
y0
y1
end