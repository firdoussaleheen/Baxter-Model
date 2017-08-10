% Uij = del T0i/ del qj
% write matrix expression here
% Derivative operator. Verify value of Wi
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
W=  [0 -1 0 0;
     1  0 0 0;
     0  0 0 0;
     0  0 0 0];
W1=W; W2=W; W3=W;W4=W;W5=W;W6=W; W7=W;
%% 
U11 =     W1*T01;

U21 =     W1*T02;
U22 = T01*W2*T12;

U31 =     W1*T03;
U32 = T02*W2*T23;
U33 = T02*W3*T23;
% for verification. W value is correct
% U11d = diff(T01,'ql1');
% U21d = diff(T02,'ql1');
% U22d = T01*diff(T12,'ql2');
% U31d = diff(T03,'ql1');
% U32d = T02*diff(T23,'ql2');
% U33d = T02*diff(T23,'ql3');
U41 =     W1*T04;
U42 = T01*W2*T14;
U43 = T02*W3*T24;
U44 = T03*W4*T34;

U51 =     W1*T05;
U52 = T01*W2*T15;
U53 = T02*W3*T25;
U54 = T03*W4*T35;
U55 = T04*W5*T45;

U61 =     W1*T06;
U62 = T01*W2*T16;
U63 = T02*W3*T26;
U64 = T03*W4*T36;
U65 = T04*W5*T46;
U66 = T05*W6*T56;

U71 =     W1*T07;
U72 = T01*W2*T17;
U73 = T02*W3*T27;
U74 = T03*W4*T37;
U75 = T04*W5*T47;
U76 = T05*W6*T57;
U77 = T06*W7*T67;
%% Uij = 0 when i<j
Uijzero = zeros(4,4);
U12 = Uijzero; U13 = Uijzero; U14 = Uijzero; U15 = Uijzero; U16 = Uijzero; U17 = Uijzero;
U23 = Uijzero; U24 = Uijzero; U25 = Uijzero; U26 = Uijzero; U27 = Uijzero;
U34 = Uijzero; U35 = Uijzero; U36 = Uijzero; U37 = Uijzero;
U45 = Uijzero; U46 = Uijzero; U47 = Uijzero;
U56 = Uijzero; U57 = Uijzero;
U67 = Uijzero;
