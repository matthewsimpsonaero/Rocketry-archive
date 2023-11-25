filename = 'VariableWindData.csv';

% Use the readtable() function to read the CSV file
data = csvread(filename)';
% Display the contents of the table

lower_button = data(:,1);
upper_button = data(:,2);
variance = data(:,3);

fig = figure();
fig.Position = [100 100 740 600];

scatter3(lower_button,upper_button,variance,[],variance,'filled');
xlabel('Aft Rail Button Position (m)')
ylabel('Wind Speed (m/s)')
zlabel('Damping Ratio')
title('Brute Force Variable Wind Speed Aft Rail Button Optimization')

