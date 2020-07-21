function v = backwarddifference(fv)
p = size(fv,2);
a = rand(1,p-1);
for i = 1:(p-1)
    j = p - i;
    a(j) = fv(j + 1) - fv(j);
end
v = a;
end