% #################### LAB 9 Question 4 #######################
% The difference in inverse of A and invers of B is due to the rounding error.
% No doubt there is very small difference in matrix values after rounding
% but after each multiplication division and other calculations the
% rounding error becomes so large that it causes large difference in 
% inverse of A and inverse of B.
% The difference is due to rounding error. Each term has very small
% rounding error but more calculations make it large so there is large
% differemce in the answer.
%
% The first answer is so simple because matrix A and the matrix b1 have two
% terms approximately same which make it simple during the division.
% but in b2 there is a slight difference which makes it greater in
% calculation because in inverse there a lot of calculations take place
% which makes a great change in result

A = [1.2969 .8648;
    .2161 .1441];% A matrix
determinent_of_A = det(A)
inverse_of_A = inv(A)

B = [1.297 .865;
    .216 .144]; % B matrix rounded form of A up to three decimal places
determinent_of_B = det(B)
inverse_of_B = inv(B)
b1 = [1.2969; 0.2161];
x = A\b1
b2 = [1.297; 0.216]; % b2 matrix rounded form of b1 up to three decimal places
x = A\b2
