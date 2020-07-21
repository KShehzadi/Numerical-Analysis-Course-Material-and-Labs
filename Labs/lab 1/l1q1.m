% Lab 1 Question no 1
% It plots a graph between all subjects of 3rd semester and their credit hours
% where x axis contains all the subjects name and y axis contains their 
% correspoinding credit hours 
% data is collected from LMS the official website for all matters of students 

x = [1, 2, 3, 4, 5, 6, 7]; % numbering for all subjects

c = [3, 3, 1, 3, 1, 3, 3]; % their corresponding credit hours 

%plots graph between subjects and credit hours
plot(x, c, '*');

% labeling all the entities of x axis with a specific subject 
xticks([1 2 3 4 5 6 7])
xticklabels({'DM', 'OOP(Theory)', 'OOP(Lab)', 'DLD(Theory)', 'DLD(Lab)', 'TW', 'LA'});


title('Graph between all subjects of 3rd semester and their credit hours');%title of graph


xlabel('All Course Subjects'); % x-axis label


ylabel('Credit Hours(in hours)'); % y-axis label

