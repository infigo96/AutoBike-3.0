%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\hampu\Downloads\bikeRuns\bikeRuns\logData57.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2020/01/15 13:38:06
clear;
clc;
close all;
%% Initialize variables.
%filename = 'C:\Users\hampu\Downloads\bikeRuns\bikeRuns\logData57.csv';
filename = 'D:\Logfile\logData192.csv';
delimiter = ',';

%% Format for each line of text: (1 indexed, labview is 0 indexed)
%   c1: Time
%	c2: Odrive propulsion motor velocity km/h
%   c3: Roll
%	c4: Yaw Filtered
%   c5: Steering setpoint (Output Balance PID)
%	c6: Lean Setpoint (input to balance PID)
%   c7: Remote Setpoint
%	c8: Bike X
%   c9: Bike Y
%	c10: Path Yaw
%   c11: Path X 
%	c12: Path Y
%   c13: Lateral error
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%*s%*s%*s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN,  'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Create output variable
maxLen = length(dataArray{1});
for i=2:length(dataArray)
    if(length(dataArray{i}) < maxLen)
       dataArray{i}(maxLen) = NaN; 
    end
end
data = [dataArray{1:end-1}];
%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dtaArray ans;

%%
%data(:,14) = -data(:,14);
%data(:,7) = -data(:,7);
data(:,10) = -data(:,10);
data(:,4) = -data(:,4);
data(:,11) = -data(:,11);


data(:,1) = data(:,1)/1000;
data(:,1) = data(:,1) -data(1,1);
%% Filter spikes
j = 9;
for i = 2:length(data(:,j))
    if(abs(data(i,j) - data(i-1,j)) > 2)
        data(i,j) = data(i-1,j);
    end
end
% j = 7;
% for i = 2:length(data(:,j))
%     if(abs(data(i,j) - data(i-1,j)) > 2)
%         data(i,j) = data(i-1,j);
%     end
% end
for j = 17:18
    for i = 2:length(data(:,j))
        if(abs(data(i,j) - data(i-1,j)) > 2)
            data(i,j) = data(i-1,j);
        end
    end
end
%%
plot(data(:,1),data(:,[6 9 10 11 13 14 21]),'DisplayName','data')
legend('velocity (km/h)','lean angle (degrees)','steering setpoint (degrees)','lean setpoint (degrees)','nav mode on', 'yaw angle mod', 'lateral error')
% subplot(3,1,1);
% plot(data(:,1),data(:,9),'DisplayName','data')
% legend('Lean angle');%,'lean setpoint (degrees)')
% xlabel('Time (s)')
% ylabel('Degrees')
% ylim([-4 4]);
% set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18
% subplot(3,1,2);
% plot(data(:,1),data(:,4)*12*360/(4096*44),'DisplayName','data')
% legend('Steering angle')
% xlabel('Time (s)')
% ylabel('Degrees')
% ylim([0 20]);
% set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18
% subplot(3,1,3);
% plot(data(:,1),data(:,11),'DisplayName','data')
% legend('Lean setpoint');%,'lean setpoint (degrees)')
% xlabel('Time (s)')
% ylabel('Degrees')
% title('Input setpoint using frequency, 1Hz to 250Hz');
% ylim([-4 4]);
% set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18

%%
% figure;
% data(:,7) = data(:,7)-15;
% plot(data(:,1),data(:,[9 12 14]),'DisplayName','data')
% set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18
% legend('Lean angle', 'Remote setpoint', 'Yaw angle');%,' 7 Yaw angle')
% %9 10 11 'lean angle (degrees)', 'steering setpoint (degrees)','lean setpoint (degrees)',
% xlabel('Time (s)');
% ylabel('Degrees');
% 
% ylim([-10 10]);
%%
% data(:,7) = data(:,7)-15;
% data = data(84000:85500,:);
% 
% subplot(1,2,2)
% plot(data(:,1),data(:,[9 11]),'DisplayName','data')
% set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18
% legend('Lean angle', 'Lean setpoint');%,' 7 Yaw angle')
% %9 10 11 'lean angle (degrees)', 'steering setpoint (degrees)','lean setpoint (degrees)',
% xlabel('Time (s)');
% ylabel('Angle (degree)');
% 
% subplot(1,2,1);
% plot(data(:,1),data(:,[14 15]),'DisplayName','data')
% set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18
% legend('Yaw angle','Target heading');%,' 7 Yaw angle')
% %9 10 11 'lean angle (degrees)', 'steering setpoint (degrees)','lean setpoint (degrees)',
% xlabel('Time (s)');
% ylabel('Angle (degree)');
% 
% ylim([-50 50]);

%%
% data(:,14) = data(:,14) + -20;
% data(47599:50000,6) = 7;
% df = diff(data(:,1));
% 
% Delta_mdh = data(5:end,10).*atan2(cos(deg2rad(24)),cos(deg2rad(data(5:end,9))));
% heading_mdh = cumtrapz(data(5:end,1),(data(5:end,6)./3.6).*tan(Delta_mdh)/1.115);
% heading_mdh = unwrap(heading_mdh);
% 
% 
% 
% kineAngl = data(22:end,10).*atan2(cos(deg2rad(24)),cos(deg2rad(data(22:end,9))));
% heading = wrapTo360(cumtrapz(data(22:end,1),(data(22:end,6)/3.6).*(tan(kineAngl/1.115)))-130);
% plot(data(:,1),data(:,14))
% hold on
% plot(data(22:end,1),rad2deg(heading))
% figure;
% yh = cumtrapz(data(22:end,1),data(22:end,6).*cos(deg2rad(heading)))/3.6;
% xh = cumtrapz(data(22:end,1),data(22:end,6).*sin(deg2rad(heading)))/3.6;
% 
% y = cumtrapz(data(22:end,1),data(22:end,6).*cos(deg2rad(data(22:end,14))))/3.6;
% x = cumtrapz(data(22:end,1),data(22:end,6).*sin(deg2rad(data(22:end,14))))/3.6;
% 
%  hold on
%  plot(data(:,17),data(:,18))
%  hold on
%  plot(data(:,19),data(:,20))
%  legend('travel','path');
%  xlim([-75 75])
%  ylim([0 150])
% plot(x,y)
% plot(xh,yh);
% xlabel('X (m)')
% ylabel('Y (m)')
% title('Comparison of positioning methods');
% legend('GPS position', 'Yaw angle integrated position','Kinematic integrated position');
% set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18
