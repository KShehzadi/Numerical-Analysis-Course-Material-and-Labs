% Lab 2 Question 4
% in this question we will calculate the distance travelled by a ball whos
% coefficient of compensation is 0.9 and dropped from a height of 2m we
% calculated its distance till the height becomes 1mm or less than 1mm
% here c is coefficient of compensation like how much a ball can retain its 
% state.
% height is height of ball after it hits the ground 
% distance is total distance traversed by it
% format is long 
format long
height = 2;
c = 0.9; % coeff. of compensation
distance = 0; %total distance
i = 0; % # of iterations
while height > 0.001 %loop condition is designed till the height is greater than 1mm
    distance = distance + height;
    height = height*c^2; % retained height after everytime it hits the ground
    i = i + 1;
end
i
distance
height