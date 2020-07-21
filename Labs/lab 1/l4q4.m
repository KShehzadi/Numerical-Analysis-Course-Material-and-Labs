% Lab 1 question 4
% it displays a graph of sinx, sin2x, sin3x, sin4x, sin5x and sin6x between
% a interval of 0 to 2pi (6.28)
% angle is in radian
% and x axis contains interval of 0 to 2pi and y axis contains the values of sin
% functions

x = linspace(0, 2*pi, 1000);%interval of 0 to 2pi divided in 1000 parts

% all functions given
x1 = sin(x);

x2 = sin(2.*x);

x3 = sin(3.*x);

x4 = sin(4.*x);

x5 = sin(5.*x);

x6 = sin(6.*x);

% all the required sin functions plotted in one graph
plot(x, x1, x, x2, x, x3, x, x4, x, x5, x, x6);

% title of graph
title('graph of sinx, sin2x, sin3x, sin4x, sin5x and sin6x between the interval 0 to 2pi');

xlabel('0 < x < 2pi');% x axis labeled
ylabel('values of sinx, sin2x, sin3x, sin4x, sin5x and sin6x');% y axis labeled

% a box to display the line in graph corresponds to which function 
legend('for sinx', 'for sin2x', 'for sin3x', 'for sin4x', 'for sin5x', 'for sin6x');