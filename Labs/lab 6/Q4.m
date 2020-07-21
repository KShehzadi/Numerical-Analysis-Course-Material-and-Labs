 a1 = [1, 1;
      4, 5];
 b1 = [2, 10]';
 solution1= a1\b1
 d1 = a1*solution1-b1;
 norm(d1)

a2 = [1, 2, 3;
     4, 7, 14;
     1, 4, 4];
b2 = [-1, 3, 1]';
solution2 = a2\b2
d2 = a2*solution2-b2;
norm(d2)
