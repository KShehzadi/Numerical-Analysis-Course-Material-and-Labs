function x = myregulafalsi(f , a , b , tol)
y0 = f(a); 
y1 = f(b);
k = 0;
while abs(y1 - y0) > tol
    x = b - ((b-a)/(y1-y0))*y1;
    y= f(x);
    if f(x)*f(a) < 0
        b = x;
        y0 = y1;
        y1 = y;
    else
        a = b;
        b = x;
        y0 = y;
    end
    k = k + 1;
end
abs(y0 - y1)
k

end