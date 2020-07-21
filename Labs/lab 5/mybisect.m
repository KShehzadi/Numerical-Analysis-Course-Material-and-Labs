function [ x , e ] = mybisect ( f , a , b )
c = f(a) ; 
d = f(b) ;
e = 0;
n = 0;
if c * d > 0.0
    error('Function has same sign at both end points.')
end
disp('x y')
while e < 10^-8
% f i n d the middle and e v al u a t e t h e r e
n = n + 1;
x = ( a + b) / 2;
y = f(x) ;
disp([ x y ])
if y == 0.0 % s ol v e d the e q u a ti o n e x a c tl y
e = 0 ;
break % jumps out o f the f o r l o o p
end
% d e ci d e which h a l f t o keep , s o t h a t the s i g n s at the ends d i f f e r

if (c * y < 0)
    b=x ;
else
a=x ;
end
end % s e t the b e s t e s tim a t e f o r x and the e r r o r bound
x= (a+b)/2;
e = (b-a)/2;
n
end
