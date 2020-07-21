%############## LAB 10 QUESTION 15 part 1 #######################
% here we have to find frequency and modes and frequencies of all springs
% so we make a matrix by newtons formula and then  find its eigen values
% and eigen vectors that would be the frequencies and modes of all springs
% frequencies will be the multiple of k/m
% here matrix is made from equation of spring derived from newtons formula, 
% here we have a
% 4 by 4 matrix because we have 4 springs and the eigen values and eigen
% vector of matrix B will be the frquencies and modes of each spring, where
% frequencies are multiplied by k/m factor where k for these spring is 1 
% and m is same for every spring so we can find frequency by just
% mulpliying eigen values by 1/m and eigen vectors will be the modes of
% springs
B = [ 2, -1, 0, 0; -1, 2, -1, 0; 0, -1, 2, -1; 0, 0, -1, 2]

[eigenvalue_of_B, eigenvector_of_B] = eig(B)