% ############## Lab 9 Question 5 ##########################
% in this lab we are using '\' operator to implement A\b very quickly which
% is (A^-1)*b with symbolic and Numerical form of matrix C where Cs is
% Symbolic and Cn is numerical version of C here we use two matrices d1 and
% d2 to measure d1\Cs,d1\Cn, d2\Cs and d2\Cn and analysing which method is
% better to calculate all the systems given
% Both notations are good but when we are concerned with result then
% numerical method is much better then the symbolic because it gives result
% but as far as we are concerned with the symbolic representation of how
% the things are going to be done then symbolic notation is good.

% task for practice
B = [sin(sym(1)) ,sin(sym(2)); sin(sym(3)) ,sin(sym(4))]; % B symbolic vector
c = [1; 2];
x = B\c;
pretty(x)
 
% Main Task of Question
Cs = [sin(sym(1)) ,sin(sym(2)); sin(sym(2)) ,sin(sym(4))]; % Cs symbolic vector
Cn = double(Cs); % numarical version of vector
d1 = [4; 8];
d2 = [1; 1];
 
 x = d1\Cs % calculating Cs*x = d1 system
 
 
 x = d1\Cn % calculating Cn*x = d1 system

 
 x = d2\Cs % calculating Cs*x = d2 system
 
 
 x = d2\Cn % calculating Cn*x = d1 system

 
 
 
 