f1 = 1000;
f2 = 5000;

A = [.5, 1, 0, 0, 0, 0, 0;
     .866, 0, 0, 0, 0, 0, 0;
     -.5, 0, .5, 1, 0, 0, 0;
     -.866, 0, .866, 0, 0, 0, 0;
     0, -1, -.5, 0, .5, 1, 0;
     0, 0, .866, 0, .866, 0, 0;
     0, 0, 0, -1, -.5, 0, .5];
 
 b = [f1, (-4.33*f1)-(.5*f2), -f1, 0, 0, f2, 0]';
 X = A\b;
 X
 d = A*X-b;
 norm(d)