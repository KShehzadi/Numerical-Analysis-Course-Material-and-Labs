function mynewton(f, a, tol)
g = diff(f);
x0 = a;
n = 2;
while n > 1
    k = subs(f, x0);
    l = subs(g, x0);
    x1 = double(x0 - (k/l));
    x2 = double(subs(f, x1));
    if x2 < tol
        break
    else
        x0 = x1;
    end
end
x0
x1
end

    