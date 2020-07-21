function v = forwarddifference(fv)
a = [];
p = size(fv,2);
for i = 1: (p-1)
    a(i) = fv(i + 1) - fv(i);
end
v = a;
end