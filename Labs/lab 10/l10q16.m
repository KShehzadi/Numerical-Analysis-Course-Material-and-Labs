% #################3 LAB 10 QUESTION 16 PART 2 ##########################
%
% in this lab task we have to check mypm function which is of power method
% on two matrices A and B and we have done it!



A = [1, 2; 3, 4];
[eigenvalue_of_A, eigen_vector_for_A, number_of_steps_for_A, residual_in_eigen_vector_of_A] = mypm(A, 0.0000001)


B = [-2, 1, 0; 1, -2, 1; 0, 1, -3];
[eigenvalue_of_B, eigen_vector_for_B, number_of_steps_for_B, residual_in_eigen_vector_of_B] = mypm(B, 0.0000001)

% power method function
function [eigenvalue, eigenvector, steps, res] = mypm(A, tol)
i = 0;
x = ones(size(A, 1),1);
v = tol;
m = 0;
while v >= tol
old = x;
x = A*x;
el = max(x);
x = x/el;
i = i + 1;
v = norm(x - old);
end
eigenvalue = el;
eigenvector = x/norm(x);
steps = i;
res = norm(A*eigenvector - el*eigenvector);
end