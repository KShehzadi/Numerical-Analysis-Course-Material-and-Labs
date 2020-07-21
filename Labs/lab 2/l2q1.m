% Lab 2 Question 1
% in this lab we are calculating geometric series of a number upto some extent 
% the given values are r1, r2,...r6 on which we have to calculate geometric
% series.
% we calculate it untill it seems to converge 
% we have corrected the code given in manual 
% and now it is working perfectly fine
% at the end of the execution program displays a table of required values
% and the calculated results which we have to know
% it takes a few seconds to run,
% and after that the following table will be displayed 
% value_no     values     Calculated_values      Exact_values      No_Of_Iterations       Relative_Error   
%  ________    ________    _________________    ________________    ________________    ____________________
%    1                0.9    9.99999999999999                   10         330            8.88178419700126e-16
%    2               0.99    99.9999999999992     99.9999999999999        3243            6.67910171614499e-15
%    3              0.999    999.999999999951     999.999999999999       30485            4.85442797071324e-14
%    4             0.9999    9999.99999999471     10000.0000000011      277247            6.38829078525643e-13
%    5            0.99999     99999.999999947     100000.000000455     2564633            5.08065568283469e-12
%    6           0.999999    999999.999930857     999999.999971244    23566994            4.03871526969582e-11
%format is long and compact
format long
format compact


% starting calculation for first value
r1 = .9;
snew1 = 0;% start will be from 0
sold = -1;%sold will be set to trick to start the loop 
i1 = 0; % count for iterations
while snew1 > sold %if the sum still changing
    sold = snew1; %save the previous value to compare
    snew1 = snew1 + r1^i1;
    i1 = i1 + 1;
end
snew1; % the final value for r1
i1; % # of iterations
p1 = GS(r1);
error1 = p1 - snew1;
relativeerror1 = error1 / snew1;



% now doing same procedure for next alue which is r2
r2 = .99;
snew2 = 0;
sold = -1;
i2 = 0;
while snew2 > sold
    sold = snew2;
    snew2 = snew2 + r2^i2;
    i2 = i2 + 1;
end
snew2;
i2;
p2 = GS(r2);
error2 = p2 - snew2;
relativeerror2 = error2 / snew2;

% Now doing the same procedure for value r3
r3 = .999;
start3 = 0;
sold = -1;
i3 = 0;
while start3 > sold
    sold = start3;
    start3 = start3 + r3^i3;
    i3 = i3+1;
end
start3;
i3;
p3 = GS(r3);
error3 = p3 - start3;
relativeerror3 = error3 / start3;



% Now doing the same procedure for value r4
r4 = .9999;
start4 = 0;
sold = -1;
i4 = 0;
while start4 > sold
    sold = start4;
    start4 = start4 + r4^i4;
    i4 = i4+1;
end
start4;
i4;
p4 = GS(r4);
error4 = p4 - start4;
relativeerror4 = error4 / start4;



% Now doing the same procedure for value r5
r5 = .99999;
start5 = 0;
sold = -1;
i5 = 0;
while start5 > sold
    sold = start5;
    start5 = start5 + r5^i5;
    i5 = i5 + 1;
end
start5;
i5;
p5 = GS(r5);
error5 = p5 - start5;
relativeerror5 = error5 / start5;


% Now doing the same procedure for value r6 the final value given
r6 = .999999;
start6 = 0;
sold = -1;
i6 = 0;
while start6 > sold
    sold = start6;
    start6 = start6 + r6^i6;
    i6 = i6 +1;
end
start6;
i6;
p6 = GS(r6);
error6 = p6 - start6;
relativeerror6 = error6 / start6;



% making vectors of all the required fields
value_no = [1, 2, 3, 4, 5, 6];
r = [r1, r2, r3, r4, r5, r6];
i = [i1, i2, i3, i4, i5, i6];
relativeerror = [relativeerror1, relativeerror2, relativeerror3, relativeerror4, relativeerror5, relativeerror6];
p = [p1, p2, p3, p4, p5, p6];
snew = [snew1, snew2, start3, start4, start5, start6];


% Drawing a table for all values this will be displayed on command window
T = table;
T.value_no = value_no';
T.values = r';
T.Calculated_values = snew';
T.Exact_values = p';
T.No_Of_Iterations = i';
T.Relative_Error = relativeerror'


% this is the function for exact value of geometric progression
function y = GS(x)
         y = 1/(1 - x);
end