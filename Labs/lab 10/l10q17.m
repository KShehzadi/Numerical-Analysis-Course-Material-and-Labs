%############### LAB 10 QUESTION 17 #################################
%in this lab task we have to apply myqrmethod function which is modified
%and run till 1000 loop iterations on hilbert matrices of 10 by 10, 50 by
%50 and 100 by 100 which are A, B and C respectively
%and find the eigen values from myqrmethod function and
%from built in eig function in matlab and find the difference between these
%two vectors and examine it in matlab
% as we can see this difference is very low thats why myqrmethod is a
% better method for finding all eigen values 


% testing for A matrix
A = hilb(10);
QR_method_function_eigen_value_of_A = myqrmethod(A);
Built_in_function_eigen_value_of_A = eig(A);
diff_of_function_eigenvalue_and_builtinfunction_eigenvalue_of_A = norm(Built_in_function_eigen_value_of_A - flipud(QR_method_function_eigen_value_of_A))

% testing for B matrix
B = hilb(50);
QR_method_function_eigen_value_of_B = myqrmethod(B);
Built_in_function_eigen_value_of_B  = eig(B);
diff_of_function_eigenvalue_and_builtinfunction_eigenvalue_of_B = norm(Built_in_function_eigen_value_of_B - flipud(QR_method_function_eigen_value_of_B))


% testing for C matrix
C = hilb(100);
QR_method_function_eigen_value_of_C = myqrmethod(C);
Built_in_function_eigen_value_of_C  = eig(C);
diff_of_function_eigenvalue_and_builtinfunction_eigenvalue_of_C = norm(Built_in_function_eigen_value_of_C - flipud(QR_method_function_eigen_value_of_C))

% function myqrmethod
function E = myqrmethod (A)
% Computes all the eigenvalues of a matrix using the QR method .
% Input : A -- square matrix
% Outputs : E -- vector of eigenvalues
[m n] = size (A);
if m ~= n
warning ('The input matrix is not square .')
return
end
% Set up initial estimate
H = hess (A);
E = diag (H);
change = 1;
steps = 0;
% loop while 1000 iterations
for i = 1:1000
Eold = E;
% apply QR method
[Q R] = qr(H);
H = R*Q;
E = diag (H);
% test change
change = norm (E - Eold );
end
end