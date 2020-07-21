x=[0 1 2 3 4 ];  
fx=[0 1 4 9 16 ]; 
Difference=zeros(5,5);  
for a=1:5
Difference(a,1)=x(a); 
Difference(a,2)=fx(a);  
end 
n=4;  
for b=3:5
for a=1:n
Difference(a,b)=Difference(a+1,b-1)-Difference(a,b-1)
end
n=n-1;
end 
