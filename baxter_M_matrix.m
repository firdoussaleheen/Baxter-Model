%% Generalized Inertia matrix M
% M is 7x7 matrix
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
% baxter_Uij.m
% traceM.m
%% Moment of inertia
% (left arm)
Il1 =I(:,:,1); 
Il2 =I(:,:,2); 
Il3 =I(:,:,3); 
Il4 =I(:,:,4); 
Il5 =I(:,:,5); 
Il6 =I(:,:,6); 
Il7 =I(:,:,7); 

% % (right arm)
% Ir1 = I(:,:,1) ;
% Ir2 = I(:,:,2) ;
% Ir3 = I(:,:,3) ;
% Ir4 = I(:,:,4) ;
% Ir5 = I(:,:,5) ;
% Ir6 = I(:,:,6);
% Ir7 = I(:,:,7);
%%
% Elements of generalized inertia matrix
M11=traceM(U11*Il1*U11.')+traceM(U21*Il2*U21.')+traceM(U31*Il3*U31.')+traceM(U41*Il4*U41.')+traceM(U51*Il5*U51.')+traceM(U61*Il6*U61.')+traceM(U71*Il7*U71.');
M12=traceM(U22*Il2*U21.')+traceM(U32*Il3*U31.')+traceM(U42*Il4*U41.')+traceM(U52*Il5*U51.')+traceM(U62*Il6*U61.')&+traceM(U72*Il7*U71.');
M13=traceM(U33*Il3*U31.')+traceM(U43*Il4*U41.')+traceM(U53*Il5*U51.')+traceM(U63*Il6*U61.')+traceM(U73*Il7*U71.');
M14=traceM(U44*Il4*U41.')+traceM(U54*Il5*U51.')+traceM(U64*Il6*U61.')+traceM(U74*Il7*U71.');
M15=traceM(U55*Il5*U51.')+traceM(U65*Il6*U61.')+traceM(U75*Il7*U71.');
M16=traceM(U66*Il6*U61.')+traceM(U76*Il7*U71.');
M17=traceM(U77*Il7*U71.');

M22=traceM(U22*Il2*U22.')+traceM(U32*Il3*U32.')+traceM(U42*Il4*U42.')+traceM(U52*Il5*U52.')+traceM(U62*Il6*U62.')+traceM(U72*Il7*U72.');
M23=traceM(U33*Il3*U33.')+traceM(U43*Il4*U43.')+traceM(U53*Il5*U53.')+traceM(U63*Il6*U63.')+traceM(U73*Il7*U73.');
M24=traceM(U44*Il4*U42.')+traceM(U54*Il5*U52.')+traceM(U64*Il6*U62.')+traceM(U74*Il7*U72.');
M25=traceM(U55*Il5*U52.')+traceM(U65*Il6*U62.')+traceM(U75*Il7*U72.');
M26=traceM(U66*Il6*U62.')+traceM(U76*Il7*U72.');
M27=traceM(U77*Il7*U72.');

M33=traceM(U33*Il3*U33.')+traceM(U43*Il4*U43.')+traceM(U53*Il5*U53.')+traceM(U63*Il6*U63.')+traceM(U73*Il7*U73.');
M34=traceM(U44*Il4*U43.')+traceM(U54*Il5*U53.')+traceM(U64*Il6*U63.')+traceM(U74*Il7*U73.');
M35=traceM(U55*Il5*U53.')+traceM(U65*Il6*U63.')+traceM(U75*Il7*U73.');
M36=traceM(U66*Il6*U63.')+traceM(U76*Il7*U73.');
M37=traceM(U77*Il7*U73.');

M44=traceM(U44*Il4*U44.')+traceM(U54*Il5*U54.')+traceM(U64*Il6*U64.')+traceM(U74*Il7*U74.');
M45=traceM(U55*Il5*U54.')+traceM(U65*Il6*U64.')+traceM(U75*Il7*U74.');
M46=traceM(U66*Il6*U64.')+traceM(U76*Il7*U74.');
M47=traceM(U77*Il7*U74.');

M55=traceM(U55*Il5*U55.')+traceM(U65*Il6*U65.')+traceM(U75*Il7*U75.');
M56=traceM(U66*Il6*U65.')+traceM(U76*Il7*U75.');
M57=traceM(U77*Il7*U75.');

M66=traceM(U66*Il6*U66.')+traceM(U76*Il7*U76.');
M67=traceM(U77*Il7*U76.');

M77=traceM(U77*Il7*U77.');

%%
M = [M11 , M12 , M13 , M14 , M15 , M16 , M17 ; 
     M12 , M22 , M23 , M24 , M25 , M26 , M27 ; 
     M13 , M23 , M33 , M34 , M35 , M36 , M37 ; 
     M14 , M24 , M34 , M44 , M45 , M46 , M47 ; 
     M15 , M25 , M35 , M45 , M55 , M56 , M57 ; 
     M16 , M26 , M36 , M46 , M56 , M66 , M67 ;
     M17 , M27 , M37 , M47 , M57 , M67 , M77 ];


