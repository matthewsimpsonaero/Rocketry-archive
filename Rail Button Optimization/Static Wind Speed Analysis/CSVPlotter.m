filename = 'AmplitudeIntegral.csv';

% Use the readtable() function to read the CSV file
data = csvread(filename)';
% Display the contents of the table

lower_button = data(:,1);
upper_button = data(:,2);
variance = data(:,3);

scatter3(lower_button,upper_button,variance,[],variance,'filled');
xlabel('Lower Rail Button Position (m)')
ylabel('Upper Rail Button Position (m)')
zlabel('∫(abs(attitudeAngle)dt)')
title('Brute Force Rail Button Optimization')
