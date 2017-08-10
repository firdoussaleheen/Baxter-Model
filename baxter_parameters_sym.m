% i = 7;
% % joint variable
% q = sym('q', [1 i]);
% % joint variable
% m = sym('m', [1 i]);
% % center of gravity
% r = sym('r', [1 i]);
% % moment of inertia
% I = sym('I', [1 i]);


%% DH Parameters
% Define the robot model using standard (not modified) DH parameters. Use
% joint variable symbols

% Left Arm
%             Theta          d        a           alpha r/p  theta offset
Ll(1) = Link ([sym('ql1')    0.27035  0.069      -pi/2  0    0   ], 'standard'); % start at joint s0 and move to joint s1
Ll(2) = Link ([sym('ql2')    0        0           pi/2  0    pi/2], 'standard'); % start at joint s1 and move to joint e0
Ll(3) = Link ([sym('ql3')    0.36435  0.0690     -pi/2  0    0   ], 'standard'); % start at joint e0 and move to joint e1
Ll(4) = Link ([sym('ql4')    0        0           pi/2  0    0   ], 'standard');           % start at joint e1 and move to joint w0
Ll(5) = Link ([sym('ql5')    0.37429  0.010      -pi/2  0    0   ], 'standard');  % start at joint w0 and move to joint w1
Ll(6) = Link ([sym('ql6')    0        0           pi/2  0    0   ], 'standard');           % start at joint w1 and move to joint w2
Ll(7) = Link ([sym('ql7')    0.229525 0           0     0    0   ], 'standard');         % start at joint w2 and move to end-effector

% Right Arm
Lr(1) = Link ([sym('qr1')    0.27035  0.069       -pi/2  0    0   ],'standard');   % start at joint s0 and move to joint s1
Lr(2) = Link ([sym('qr2')    0        0            pi/2  0    pi/2], 'standard');        % start at joint s1 and move to joint e0
Lr(3) = Link ([sym('qr3')    0.36435  0.0690      -pi/2  0    0   ], 'standard'); % start at joint e0 and move to joint e1
Lr(4) = Link ([sym('qr4')    0        0            pi/2  0    0   ], 'standard');           % start at joint e1 and move to joint w0
Lr(5) = Link ([sym('qr5')    0.37429  0.010       -pi/2  0    0   ], 'standard');  % start at joint w0 and move to joint w1
Lr(6) = Link ([sym('qr6')    0        0            pi/2  0    0   ], 'standard');           % start at joint w1 and move to joint w2
Lr(7) = Link ([sym('qr7')    0.229525 0            0     0    0   ], 'standard');         % start at joint w2 and move to end-effector

%% Joint variable q, 
ql = [Ll(1).theta, Ll(2).theta, Ll(3).theta, Ll(4).theta, Ll(5).theta, Ll(6).theta, Ll(7).theta].' ;
qr = [Lr(1).theta, Lr(2).theta, Lr(3).theta, Lr(4).theta, Lr(5).theta, Lr(6).theta, Lr(7).theta].' ;
%% link length a, 
% left arm
al(1) = double(Ll(1).a);
al(2) = double(Ll(2).a);
al(3) = double(Ll(3).a);
al(4) = double(Ll(4).a);
al(5) = double(Ll(5).a);
al(6) = double(Ll(6).a);
al(7) = double(Ll(7).a);

%right arm
ar(1) = double(Lr(1).a);
ar(2) = double(Lr(2).a);
ar(3) = double(Lr(3).a);
ar(4) = double(Lr(4).a);
ar(5) = double(Lr(5).a);
ar(6) = double(Lr(6).a);
ar(7) = double(Lr(7).a);


%% link offset d

%left arm
dl(1) = double(Ll(1).d);
dl(2) = double(Ll(2).d);
dl(3) = double(Ll(3).d);
dl(4) = double(Ll(4).d);
dl(5) = double(Ll(5).d);
dl(6) = double(Ll(6).d);
dl(7) = double(Ll(7).d);

%right arm
dr(1) = double(Lr(1).d);
dr(2) = double(Lr(2).d);
dr(3) = double(Lr(3).d);
dr(4) = double(Lr(4).d);
dr(5) = double(Lr(5).d);
dr(6) = double(Lr(6).d);
dr(7) = double(Lr(7).d);

%% link twist alpha, convert to degree unit
% left arm
alphadl(1) = rad2deg(double(Ll(1).alpha));
alphadl(2) = rad2deg(double(Ll(2).alpha));
alphadl(3) = rad2deg(double(Ll(3).alpha));
alphadl(4) = rad2deg(double(Ll(4).alpha));
alphadl(5) = rad2deg(double(Ll(5).alpha));
alphadl(6) = rad2deg(double(Ll(6).alpha));
alphadl(7) = rad2deg(double(Ll(7).alpha));
%right arm
alphadr(1) = rad2deg(double(Lr(1).alpha));
alphadr(2) = rad2deg(double(Lr(2).alpha));
alphadr(3) = rad2deg(double(Lr(3).alpha));
alphadr(4) = rad2deg(double(Lr(4).alpha));
alphadr(5) = rad2deg(double(Lr(5).alpha));
alphadr(6) = rad2deg(double(Lr(6).alpha));
alphadr(7) = rad2deg(double(Lr(7).alpha));
%% Dynamic parameters (from CSNAP baxter urdf)

m(1) = 5.700440;
m(2) = 3.226980;
m(3) = 4.312720;
m(4) = 2.072060;
m(5) = 2.246650;
m(6) = 1.609790;
m(7) = 0.350930 + 0.191250;


% Mass (left arm)
Ll(1).m = m(1);
Ll(2).m = m(2);
Ll(3).m = m(3);
Ll(4).m = m(4);
Ll(5).m = m(5);
Ll(6).m = m(6);
Ll(7).m = m(7);

% Mass (right arm)
Lr(1).m = m(1);
Lr(2).m = m(2);
Lr(3).m = m(3);
Lr(4).m = m(4);
Lr(5).m = m(5);
Lr(6).m = m(6);
Lr(7).m = m(7);
%% Center of gravity
r = NaN(1,3,7);
% r(:,:,1) = [ -0.05117000000000000,     0.079080000000000000,       0.000859999999999956];
% r(:,:,2) = [  0.00269000000000000,    -0.005290000000000030,       0.068449999999999900];
% r(:,:,3) = [ -0.07176000000000000,     0.081490000000000100,       0.001319999999999940];
% r(:,:,4) = [  0.00159000000000006,    -0.011170000000000000,       0.026179999999999900];
% r(:,:,5) = [ -0.01167999999999990,     0.131110000000000000,       0.004599999999999920];
% r(:,:,6) = [  0.00697000000000011,     0.005999999999999810,       0.060480000000000000];
% r(:,:,7) = [  0.00513704655280540,     0.000957223615773138,      -0.066823467114242500];

% inertial xyz from csnap baxter urdf (check whether they r center of gravity)
r(:,:,1) = [ 0.01783 0.00086  0.19127];
r(:,:,2) = [ 0.06845 0.00269 -0.00529];
r(:,:,3) = [-0.00276 0.00132  0.18086];
r(:,:,4) = [ 0.02611 0.00159 -0.01117];
r(:,:,5) = [-0.00168 0.0046   0.13952];
r(:,:,6) = [ 0.06041 0.00697  0.006];
r(:,:,7) = [ 0.00198 0.00125  0.01855];

% cog (left arm)
Ll(1).r = r(:,:,1);
Ll(2).r = r(:,:,2);
Ll(3).r = r(:,:,3);
Ll(4).r = r(:,:,4);
Ll(5).r = r(:,:,5);
Ll(6).r = r(:,:,6);
Ll(7).r = r(:,:,7);

% cog (right arm)
Lr(1).r = r(:,:,1);
Lr(2).r = r(:,:,2);
Lr(3).r = r(:,:,3);
Lr(4).r = r(:,:,4);
Lr(5).r = r(:,:,5);
Lr(6).r = r(:,:,6);
Lr(7).r = r(:,:,7);

%% Inertia tensor
%Inertia (BYU, too much discrepency)
%    Ixx              Ixy               Ixz             Iyy                 Iyz               Izz
% I1 = [0.04709102262	 -0.00614870039     0.00012787556	0.0359598847	   -0.00078086899	  0.03766976455];
% I2 = [0.0278859752	 -0.00018821993    -0.000300963979	0.0207874929	    0.00207675762     0.01175209419];
% I3 = [0.02661733557	 -0.00392189887     0.00029270634	0.0124800832	   -0.0010838933	  0.02844355207];
% I4 = [0.01318227876	 -0.00019663418     0.00036036173	0.0092685206	    0.0007459496	  0.00711582686];
% I5 = [0.01667742825	 -0.00018657629     0.00018403705	0.0037463115	    0.00064732352	  0.01675457264];
% I6 = [0.00700537914	  0.00015348067    -0.00044384784	0.0055275524	   -0.00021115038	  0.00387607152];
% I7 = [0.00081621358	  0.00012844010     0.000189698911  0.00087350127       0.00010577265	  0.00054941487];

% FROM CSNAP BAXTER URDF
%    Ixx              Ixy               Ixz             Iyy                 Iyz               Izz
I1 = [0.04709102262   0.00012787556     0.00614870039   0.03766976455       0.00078086899     0.03595988478];
I2 = [0.01175209419  -0.00030096398     0.00207675762   0.0278859752       -0.00018821993     0.02078749298];
I3 = [0.02661733557   0.00029270634     0.00392189887   0.02844355207       0.0010838933      0.01248008322];
I4 = [0.00711582686   0.00036036173     0.0007459496    0.01318227876      -0.00019663418     0.00926852064];
I5 = [0.01667742825   0.00018403705     0.00018657629   0.01675457264      -0.00064732352     0.0037463115];
I6 = [0.00387607152  -0.00044384784    -0.00021115038   0.00700537914       0.00015348067     0.0055275524];
I7 = [0.00025289155   0.00000575311    -0.00000159345   0.0002688601       -0.00000519818     0.0003074118];
% Construct pseudo inertia matrices

I = NaN(4,4,7);

I(:,:,1) = [(-I1(1)+I1(4)+I1(6))/2,         I1(2),            I1(3),           m(1)*r(1,1,1);
                   I1(2),           (I1(1)-I1(4)+I1(6))/2,      I1(5),           m(1)*r(1,2,1);
                   I1(3),                   I1(5),       (I1(1)+I1(4)-I1(6))/2, m(1)*r(1,3,1);
              m(1)*r(1,1,1),            m(1)*r(1,2,1)         m(1)*r(1,3,1)         m(1)      ];
          
I(:,:,2) = [(-I2(1)+I2(4)+I2(6))/2,         I2(2),            I2(3),           m(2)*r(1,1,2);
                   I2(2),           (I2(1)-I2(4)+I2(6))/2,      I2(5),           m(2)*r(1,2,2);
                   I2(3),                   I2(5),       (I2(1)+I2(4)-I2(6))/2, m(2)*r(1,3,2);
              m(2)*r(1,1,2),            m(2)*r(1,2,2)         m(2)*r(1,3,2)         m(2)      ];
          
I(:,:,3) = [(-I3(1)+I3(4)+I3(6))/2,         I3(2),            I3(3),           m(3)*r(1,1,3);
                   I3(2),           (I3(1)-I3(4)+I3(6))/2,      I3(5),           m(3)*r(1,2,3);
                   I3(3),                   I3(5),       (I3(1)+I3(4)-I3(6))/2, m(3)*r(1,3,3);
              m(3)*r(1,1,3),            m(3)*r(1,2,3)         m(3)*r(1,3,3)         m(3)      ];
 
I(:,:,4) = [(-I4(1)+I4(4)+I4(6))/2,         I4(2),            I4(3),           m(4)*r(1,1,4);
                   I4(2),           (I4(1)-I4(4)+I4(6))/2,      I4(5),           m(4)*r(1,2,4);
                   I4(3),                   I4(5),       (I4(1)+I4(4)-I4(6))/2, m(4)*r(1,3,4);
              m(4)*r(1,1,4),            m(4)*r(1,2,4)         m(4)*r(1,3,4)         m(4)      ];

I(:,:,5) = [(-I5(1)+I5(4)+I5(6))/2,         I5(2),            I5(3),            m(5)*r(1,1,5);
                   I5(2),           (I5(1)-I5(4)+I5(6))/2,      I5(5),           m(5)*r(1,2,5);
                   I5(3),                   I5(5),       (I5(1)+I5(4)-I5(6))/2, m(5)*r(1,3,5);
              m(5)*r(1,1,5),            m(5)*r(1,2,5)         m(5)*r(1,3,5)         m(5)      ];
          
I(:,:,6) = [(-I6(1)+I6(4)+I6(6))/2,         I6(2),             I6(3),            m(6)*r(1,1,6);
                   I6(2),           (I6(1)-I6(4)+I6(6))/2,      I6(5),           m(6)*r(1,2,6);
                   I6(3),                   I6(5),       (I6(1)+I6(4)-I6(6))/2, m(6)*r(1,3,6);
              m(6)*r(1,1,6),            m(6)*r(1,2,6)         m(6)*r(1,3,6)         m(6)      ];
          
I(:,:,7) = [(-I7(1)+I7(4)+I7(6))/2,         I7(2),              I7(3),            m(7)*r(1,1,7);
                   I7(2),           (I7(1)-I7(4)+I7(6))/2,      I7(5),           m(7)*r(1,2,7);
                   I7(3),                   I7(5),       (I7(1)+I7(4)-I7(6))/2, m(7)*r(1,3,7);
              m(7)*r(1,1,7),            m(7)*r(1,2,7)         m(7)*r(1,3,7)         m(7)      ];

% Put the I values into a matrix
% I(:,:,1) = [ I1(1), -I1(4), -I1(5);
%             -I1(4),  I1(2), -I1(6);
%             -I1(5), -I1(6),  I1(3)];
%               
% I(:,:,2) = [ I2(1), -I2(4), -I2(5);
%             -I2(4),  I2(2), -I2(6);
%             -I2(5), -I2(6),  I2(3)];
% 
% I(:,:,3) = [ I3(1), -I3(4), -I3(5);
%             -I3(4),  I3(2), -I3(6);
%             -I3(5), -I3(6),  I3(3)];
%               
% I(:,:,4) = [ I4(1), -I4(4), -I4(5);
%             -I4(4),  I4(2), -I4(6);
%             -I4(5), -I4(6),  I4(3)];
%               
% I(:,:,5) = [ I5(1), -I5(4), -I5(5);
%             -I5(4),  I5(2), -I5(6);
%             -I5(5), -I5(6),  I5(3)];
%               
% I(:,:,6) = [ I6(1), -I6(4), -I6(5);
%             -I6(4),  I6(2), -I6(6);
%             -I6(5), -I6(6),  I6(3)];              
% 
% I(:,:,7) = [ I7(1), -I7(4), -I7(5);
%             -I7(4),  I7(2), -I7(6);
%             -I7(5), -I7(6),  I7(3)];   

% % (left arm)
% Ll(1).I = I(:,:,1);
% Ll(2).I = I(:,:,2);
% Ll(3).I = I(:,:,3);
% Ll(4).I = I(:,:,4);
% Ll(5).I = I(:,:,5);
% Ll(6).I = I(:,:,6);
% Ll(7).I = I(:,:,7);
% 
% % (right arm)
% Lr(1).I = I(:,:,1);
% Lr(2).I = I(:,:,2);
% Lr(3).I = I(:,:,3);
% Lr(4).I = I(:,:,4);
% Lr(5).I = I(:,:,5);
% Lr(6).I = I(:,:,6);
% Lr(7).I = I(:,:,7);
%% Declare joint rate and accelaration in symbols
syms qdl1 qdl2 qdl3 qdl4 qdl5 qdl6 qdl7;
syms qddl1 qddl2 qddl3 qddl4 qddl5 qddl6 qddl7;
syms qdr1 qdr2 qdr3 qdr4 qdr5 qdr6 qdr7;
syms qddr1 qddr2 qddr3 qddr4 qddr5 qddr6 qddr7;

qdl = [qdl1, qdl2, qdl3, qdl4, qdl5, qdl6, qdl7].';
qdr = [qdr1, qdr2, qdr3, qdr4, qdr5, qdr6, qdr7].';

qddl = [qddl1, qddl2, qddl3, qddl4, qddl5, qddl6, qddl7].';
qddr = [qddr1, qddr2, qddr3, qddr4, qddr5, qddr6, qddr7].';


