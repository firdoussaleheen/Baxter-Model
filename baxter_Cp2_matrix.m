%% Cp2 = [dG/dq] evaluate at q=Q0. This script determines the matrix Cp2mat = [dG/dq]
% G is 7x1 vector, q is 7x1 vector, Cp2 is 7x7 matrix
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
% baxter_Uijk.m
%%
g =   [0,0,-9.81,0];
r11 = [Ll(1).r, 1].';
r22 = [Ll(2).r, 1].';
r33 = [Ll(3).r, 1].';
r44 = [Ll(4).r, 1].';
r55 = [Ll(5).r, 1].';
r66 = [Ll(6).r, 1].';
r77 = [Ll(7).r, 1].';
%%
dG1qd1= -(m(1)*g* U111*r11 + m(2)*g* U211*r22 + m(3)*g* U311*r33 + m(4)*g* U411*r44 + m(5)*g* U511*r55 + m(6)*g* U611*r66 + m(7)*g* U711*r77);
dG1qd2= -(m(2)*g* U212*r22 + m(3)*g* U312*r33 + m(4)*g* U412*r44 + m(5)*g* U512*r55 + m(6)*g* U612*r66 + m(7)*g* U712*r77);
dG1qd3= -(m(3)*g* U313*r33 + m(4)*g* U413*r44 + m(5)*g* U513*r55 + m(6)*g* U613*r66 + m(7)*g* U713*r77);
dG1qd4= -(m(4)*g* U414*r44 + m(5)*g* U514*r55 + m(6)*g* U614*r66 + m(7)*g* U714*r77);
dG1qd5= -(m(5)*g* U515*r55 + m(6)*g* U615*r66 + m(7)*g* U715*r77);
dG1qd6= -(m(6)*g* U616*r66 + m(7)*g* U716*r77);
dG1qd7= - m(7)*g* U717*r77;



dG2qd1= -(m(2)*g* U221*r22 + m(3)*g* U321*r33 + m(4)*g* U421*r44 + m(5)*g* U521*r55 + m(6)*g* U621*r66 + m(7)*g* U721*r77);
dG2qd2= -(m(2)*g* U222*r22 + m(3)*g* U322*r33 + m(4)*g* U422*r44 + m(5)*g* U522*r55 + m(6)*g* U622*r66 + m(7)*g* U722*r77);
dG2qd3= -(m(3)*g* U323*r33 + m(4)*g* U423*r44 + m(5)*g* U523*r55 + m(6)*g* U623*r66 + m(7)*g* U723*r77);
dG2qd4= -(m(4)*g* U424*r44 + m(5)*g* U524*r55 + m(6)*g* U624*r66 + m(7)*g* U724*r77);
dG2qd5= -( m(5)*g* U525*r55 + m(6)*g* U626*r66 + m(7)*g* U726*r77);
dG2qd6= -(m(6)*g* U626*r66 + m(7)*g* U726*r77);
dG2qd7= -(m(7)*g* U721*r77);




dG3qd1= -( m(3)*g* U321*r33 + m(4)*g* U421*r44 + m(5)*g* U521*r55 + m(6)*g* U621*r66 + m(7)*g* U721*r77); 
dG3qd2= -( m(3)*g* U322*r33 + m(4)*g* U422*r44 + m(5)*g* U522*r55 + m(6)*g* U622*r66 + m(7)*g* U722*r77); 
dG3qd3= -( m(3)*g* U323*r33 + m(4)*g* U423*r44 + m(5)*g* U523*r55 + m(6)*g* U623*r66 + m(7)*g* U723*r77);
dG3qd4= -( m(4)*g* U424*r44 + m(5)*g* U524*r55 + m(6)*g* U624*r66 + m(7)*g* U724*r77);
dG3qd5= -( m(5)*g* U525*r55 + m(6)*g* U625*r66 + m(7)*g* U725*r77);
dG3qd6= -( m(6)*g* U626*r66 + m(7)*g* U726*r77);
dG3qd7= - m(7)*g* U727*r77;



dG4qd1= -( m(4)*g* U441*r44 + m(5)*g* U541*r55 + m(6)*g* U641*r66 + m(7)*g* U741*r77);
dG4qd2= -( m(4)*g* U442*r44 + m(5)*g* U542*r55 + m(6)*g* U642*r66 + m(7)*g* U742*r77);
dG4qd3= -( m(4)*g* U443*r44 + m(5)*g* U543*r55 + m(6)*g* U643*r66 + m(7)*g* U743*r77);
dG4qd4= -( m(4)*g* U444*r44 + m(5)*g* U544*r55 + m(6)*g* U644*r66 + m(7)*g* U744*r77);
dG4qd5= -(  m(5)*g* U545*r55 + m(6)*g* U645*r66 + m(7)*g* U745*r77);
dG4qd6= -(  m(6)*g* U646*r66 + m(7)*g* U746*r77);
dG4qd7= -m(7)*g* U747*r77;



dG5qd1= -( m(5)*g* U551*r55 + m(6)*g* U651*r66 + m(7)*g* U751*r77);
dG5qd2= -( m(5)*g* U552*r55 + m(6)*g* U652*r66 + m(7)*g* U752*r77);
dG5qd3= -( m(5)*g* U553*r55 + m(6)*g* U653*r66 + m(7)*g* U753*r77);
dG5qd4= -( m(5)*g* U554*r55 + m(6)*g* U654*r66 + m(7)*g* U754*r77);
dG5qd5= -( m(5)*g* U555*r55 + m(6)*g* U655*r66 + m(7)*g* U755*r77);
dG5qd6= -( m(6)*g* U656*r66 + m(7)*g* U756*r77);
dG5qd7= -m(7)*g* U757*r77;



dG6qd1= -( m(6)*g* U661*r66 + m(7)*g* U761*r77);
dG6qd2= -( m(6)*g* U662*r66 + m(7)*g* U762*r77);
dG6qd3= -( m(6)*g* U663*r66 + m(7)*g* U763*r77);
dG6qd4= -( m(6)*g* U664*r66 + m(7)*g* U764*r77);
dG6qd5= -( m(6)*g* U665*r66 + m(7)*g* U765*r77);
dG6qd6= -( m(6)*g* U666*r66 + m(7)*g* U766*r77);
dG6qd7= -  m(7)*g* U767*r77 ;


dG7qd1= - m(7)*g* U771*r77; 
dG7qd2= - m(7)*g* U772*r77; 
dG7qd3= - m(7)*g* U773*r77; 
dG7qd4= - m(7)*g* U774*r77; 
dG7qd5= - m(7)*g* U775*r77; 
dG7qd6= - m(7)*g* U776*r77; 
dG7qd7= - m(7)*g* U777*r77; 

%%
Cp2mat = [dG1qd1, dG1qd2, dG1qd3, dG1qd4, dG1qd5, dG1qd6, dG1qd7;
          dG2qd1, dG2qd2, dG2qd3, dG2qd4, dG2qd5, dG2qd6, dG2qd7;
          dG3qd1, dG3qd2, dG3qd3, dG3qd4, dG3qd5, dG3qd6, dG3qd7;
          dG4qd1, dG4qd2, dG4qd3, dG4qd4, dG4qd5, dG4qd6, dG4qd7;
          dG5qd1, dG5qd2, dG5qd3, dG5qd4, dG5qd5, dG5qd6, dG5qd7;
          dG6qd1, dG6qd2, dG6qd3, dG6qd4, dG6qd5, dG6qd6, dG6qd7;
          dG7qd1, dG7qd2, dG7qd3, dG7qd4, dG7qd5, dG7qd6, dG7qd7];


