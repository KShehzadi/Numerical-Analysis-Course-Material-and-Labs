% ############## LAB 10 QUESTION 15 PART 2###########################
% in this lab task we have to find the frequencies and modes of spring with
% non identical masses there are two parts one is for two masses and the
% other one is for 3 masses we have find the eigen values first and then
% frequency by multiplying it by k/m 




% part (a)
disp('for first part two non identical masses')
k = 3;
matrix_for_two_masses = [2, -1;-1, 2];
[e1, v1] = eig(matrix_for_two_masses);
m1 = 1;
m2 = 2;
frequency_of_first_spring = (k/m1)*e1(1)
modes_of_first_spring = v1(:,1)
frequency_of_second_spring = (k/m2)*e1(2)
modes_of_second_spring = v1(:,2)

% part (b)
disp('for 2nd part three non identical masses')
matrix_for_three_masses = [2, -1, 0;-1, 2, -1; 0, -1, 2];
[e2, v2] = eig(matrix_for_three_masses);
m1 = 1;
m2 = 2;
m3 = 3;

frequency_of_first_spring = (k/m1)*e2(1)
modes_of_first_spring = v2(:,1)
frequency_of_second_spring = (k/m2)*e2(2)
modes_of_second_spring = v2(:,2)
frequency_of_third_spring = (k/m3)*e2(3)
modes_of_third_spring = v2(:,3)



