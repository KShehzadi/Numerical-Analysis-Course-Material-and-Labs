function w = mysimpweights(n)
% Computes the weights for Simpson ’s rule
% Input : n -- the number of intervals , must be even
% Output : w -- a ( column ) vector with the weights , length n+1
if rem(n, 2) ~= 0
error('n must be even for Simpsons rule')
end
w = ones(n+1 ,1); % column vector , starts all 1
for i = 2:n
% loop except for first and last , which stay 1
if rem(i,2)==0
w(i)=4; % even index values set to 4
else
w(i)=2; % odd index values set to 4
end
end
end