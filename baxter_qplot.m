%QPLOT Plot Baxter robot joint angles
%
% QPLOT(Q) is a convenience function to plot joint angle trajectories (Mx7) for 
% a 7-axis robot, where each row represents one time step.
%
% The first four joints are shown as solid lines, the last three joints (wrist)
% are shown as dashed lines.  A legend is also displayed.
%
% QPLOT(T, Q) as above but displays the joint angle trajectory versus time
% given the time vector T (Mx1).

% The function is modified from qplot of 
% The Robotics Toolbox for MATLAB (RTB).
% RTB is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 

function baxter_qplot(t, q)
    if nargin < 2
        q = t;
        t = (1:numrows(q))';
    end
    %clf
    
    % Create basic plot
    figure
    hold on
    hData1 = plot(t, q(:,1));hold on;
    hData2 = plot(t, q(:,2));hold on;
    hData3 = plot(t, q(:,3));hold on;
    hData4 = plot(t, q(:,4));hold on;
    hData5 = plot(t, q(:,5));hold on;
    hData6 = plot(t, q(:,6));hold on;
    hData7 = plot(t, q(:,7));hold on;
    
    
    % Adjust line properties (functional and aesthetics)
%     set(hData1, 'LineStyle', '-',   'LineWidth', 1.5);
%     set(hData2, 'LineStyle', '-',   'LineWidth', 1.5);
%     set(hData3, 'LineStyle', '-',  'LineWidth',  1.5);
%     set(hData4, 'LineStyle', '-',  'LineWidth',  1.5);
%     set(hData5, 'LineStyle', '--',  'LineWidth', 1.5);
%     set(hData6, 'LineStyle', '--',  'LineWidth', 1.5);
%     set(hData7, 'LineStyle', '--',  'LineWidth', 1.5);
    
    set(hData1, 'LineStyle', '-', 'Color',  'r', 'LineWidth', 2);
    set(hData2, 'LineStyle', '-', 'Color',  [0 0.5 0], 'LineWidth', 2);
    set(hData3, 'LineStyle', '-', 'Color',  'b', 'LineWidth', 2);
    set(hData4, 'LineStyle', '-', 'Color',  'm', 'LineWidth', 2);
    set(hData5, 'LineStyle', '--', 'Color', 'r', 'LineWidth', 2);
    set(hData6, 'LineStyle', '--', 'Color', [0 0.5 0], 'LineWidth', 2);
    set(hData7, 'LineStyle', '--', 'Color', 'b', 'LineWidth', 2);
%     % Add labels
%     %hTitle = title('');
    hXLabel = xlabel('Time (s)');
    hYLabel = ylabel('Joint Angle (rad)');
%     
    
    % Add legend
    hLegend = legend([hData1, hData2, hData3, hData4, hData5, hData6, hData7], ...
        'q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7');
%     
%     % Adjust font
%     %set(gca, 'FontName', 'Times New Roman')
%     %set([hXLabel, hYLabel], 'FontName', 'Times New Roman')
%     
    set([hLegend, gca], 'FontSize',12)
    set([hXLabel, hYLabel], 'FontSize', 12)



%     hold on
%     h1=plot(t, q(:,1:4));
%     h2=plot(t, q(:,5:7), '--');
%     set(h1, 'LineWidth', 2);
%     set(h2, 'LineWidth', 3);
%     grid on
%     xlabel('Time (s) ')
%     ylabel('Joint Angle (rad)')
%     legend('q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7');
%     hold off

% Adjust axes properties
    grid on
    set(gca, 'Box', 'on', 'TickDir', 'out', 'TickLength', [.02 .02], ...
    'XMinorTick', 'on', 'YMinorTick', 'on', 'YGrid', 'on', ...
    'XColor', [.3 .3 .3], 'YColor', [.3 .3 .3], ...
    'LineWidth', 1)

    xlim([t(1), t(end)]);
