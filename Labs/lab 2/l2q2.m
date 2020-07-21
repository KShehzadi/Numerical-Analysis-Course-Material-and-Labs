% Lab 2 Question 2
% in this question we will calculate the distance travelled by a ball whos
% coefficient of compensation is 0.9 and dropped from a height of 2m we
% calculated its distance till the height stops changing in calculation
% here c is coefficient of compensation like how much a ball can retain its 
% state.
% height is height of ball after it hits the ground 
% distance is total distance traversed by it
% i is calculated by hit and trial method and 168 is the precise answer
format compact
format long% format is long 
height = 2;
c = 0.9; % coeff. of compensation
distance = 0; %total distance
i = 0; % # of iterations


while i < 168 %loop condition is designed that for how much this machine can give the answer precisely
    distance = distance + height;
    height = height*c^2; % retained height after everytime it hits the ground
    i = i + 1;
end


i
distance
height