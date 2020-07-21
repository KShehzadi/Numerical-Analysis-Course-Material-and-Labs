%#################### LAB 9 Question 6 #############################
%
% in this lab task we are comparing Aequilatruss matrix made in lab 6 with
% 1000 random matrix we take mean and median condition number of matrices
% and at the end check the condition number as can be seen Aequilatruss
% matrix is a fixed matrix so its condition number is a fixed value but the
% randomly generated matrices have different conditions number every time
% because they have random entries in it thats why the condition number of
% aequilatruss matrix is less then the median condition number of randomly
% generated matrices.


a = 0;
for i = 1:1000
    p = randn(7, 7);
    a = a + cond(p);
end
mean_of_condition_numbers = a/1000
median_of_condition_numbers = mean_of_condition_numbers/2
condition_number_of_Aequiltruss = cond(A)