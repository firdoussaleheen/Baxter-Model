%% Baxter Parameters

%% DH Parameters
% Define the robot model using standard (not modified) DH parameters.

% Left Arm
%             Theta d        a           alpha r/p  theta offset
Ll(1) = Link ([0    0.27035  0.069      -pi/2  0    0], 'standard'); % start at joint s0 and move to joint s1
Ll(2) = Link ([0    0        0           pi/2  0    pi/2], 'standard'); % start at joint s1 and move to joint e0
Ll(3) = Link ([0    0.36435  0.0690     -pi/2  0    0], 'standard'); % start at joint e0 and move to joint e1
Ll(4) = Link ([0    0        0           pi/2  0    0], 'standard');           % start at joint e1 and move to joint w0
Ll(5) = Link ([0    0.37429  0.010      -pi/2  0    0], 'standard');  % start at joint w0 and move to joint w1
Ll(6) = Link ([0    0        0           pi/2  0    0], 'standard');           % start at joint w1 and move to joint w2
Ll(7) = Link ([0    0.229525 0           0     0    0], 'standard');         % start at joint w2 and move to end-effector

% Right Arm
Lr(1) = Link ([0 0.27035  0.069         -pi/2  0     0],'standard');   % start at joint s0 and move to joint s1
Lr(2) = Link ([0 0        0              pi/2  0     pi/2], 'standard');        % start at joint s1 and move to joint e0
Lr(3) = Link ([0 0.36435  0.0690        -pi/2  0     0], 'standard'); % start at joint e0 and move to joint e1
Lr(4) = Link ([0 0        0              pi/2  0     0], 'standard');           % start at joint e1 and move to joint w0
Lr(5) = Link ([0 0.37429  0.010         -pi/2  0     0], 'standard');  % start at joint w0 and move to joint w1
Lr(6) = Link ([0 0        0              pi/2  0     0], 'standard');           % start at joint w1 and move to joint w2
Lr(7) = Link ([0 0.229525 0              0     0     0], 'standard');         % start at joint w2 and move to end-effector

%%
% Dynamic Parameters
% These parameters lump the hand with the wrist 
% 
% Mass
m(1) = 5.700440;
m(2) = 3.226980;
m(3) = 4.312720;
m(4) = 2.072060;
m(5) = 2.246650;
m(6) = 1.609790;
m(7) = 0.350930 + 0.191250;

%Center of Gravity
r(1) = [ -0.05117000000000000,     0.079080000000000000,       0.000859999999999956];
r(2) = [  0.00269000000000000,    -0.005290000000000030,       0.068449999999999900];
r(3) = [ -0.07176000000000000,     0.081490000000000100,       0.001319999999999940];
r(4) = [  0.00159000000000006,    -0.011170000000000000,       0.026179999999999900];
r(5) = [ -0.01167999999999990,     0.131110000000000000,       0.004599999999999920];
r(6) = [  0.00697000000000011,     0.005999999999999810,       0.060480000000000000];
r(7) = [  0.00513704655280540,     0.000957223615773138,      -0.066823467114242500];


%Inertia
%    Ixx              Ixy               Ixz             Iyy                 Iyz               Izz
I1 = [0.04709102262	 -0.00614870039     0.00012787556	0.0359598847	   -0.00078086899	  0.03766976455];
I2 = [0.0278859752	 -0.00018821993    -0.000300963979	0.0207874929	    0.00207675762     0.01175209419];
I3 = [0.02661733557	 -0.00392189887     0.00029270634	0.0124800832	   -0.0010838933	  0.02844355207];
I4 = [0.01318227876	 -0.00019663418     0.00036036173	0.0092685206	    0.0007459496	  0.00711582686];
I5 = [0.01667742825	 -0.00018657629     0.00018403705	0.0037463115	    0.00064732352	  0.01675457264];
I6 = [0.00700537914	  0.00015348067    -0.00044384784	0.0055275524	   -0.00021115038	  0.00387607152];
I7 = [0.00081621358	  0.00012844010     0.000189698911  0.00087350127       0.00010577265	  0.00054941487];