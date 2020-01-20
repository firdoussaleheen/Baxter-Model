n = 7;
Al = sym('A%d',[n,1]);

for i=1:n
q = ql(i); 
d = dl(i);
a = al(i);
alphad = alphadl(i);
Al(i) = [cos(q)  -sin(q)*cosd(alphad)  sin(q)*sind(alphad) a*cos(q);
       sin(q)   cos(q)*cosd(alphad) -cos(q)*sind(alphad) a*sin(q);
       0         sind(alphad)          cosd(alphad)         d       ;
       0         0                     0                    1        ];
end

% Ar = sym('A%d',[n,1]);
% for i=1:n
% q = qr(i); 
% d = dr(i);
% a = ar(i);
% alphad = alphadr(i);
% Ar(i) = [cos(q)  -sin(q)*cosd(alphad)  sin(q)*sind(alphad) a*cos(q);
%        sin(q)   cos(q)*cosd(alphad) -cos(q)*sind(alphad) a*sin(q);
%        0         sind(alphad)          cosd(alphad)         d       ;
%        0         0                     0                    1        ];
% end

%%
%syms T01 T12 T23 T34 T45 T56 T67;
T01 = Al(1); 
T12 = Al(2); 
T23 = Al(3);
T34 = Al(4); 
T45 = Al(5); 
T56 = Al(6); 
T67 = Al(7);

T02 = T01*T12;
T03 = T01*T12*T23;
T04 = T01*T12*T23*T34;
T05 = T01*T12*T23*T34*T45;
T06 = T01*T12*T23*T34*T45*T56;
T07 = T01*T12*T23*T34*T45*T56*T67;


T13 = T12*T23;
T14 = T12*T23*T34;
T15 = T12*T23*T34*T45;
T16 = T12*T23*T34*T45*T56;
T17 = T12*T23*T34*T45*T56*T67;

 
T24 = T23*T34;
T25 = T23*T34*T45;
T26 = T23*T34*T45*T56;
T27 = T23*T34*T45*T56*T67;



T35 = T34*T45;
T36 = T34*T45*T56;
T37 = T34*T45*T56*T67;


T46 = T45*T56;
T47 = T45*T56*T67;


T57 = T56*T67;

