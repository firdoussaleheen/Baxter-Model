%% Coriolis and centripetal vector V
% V is a 7x1 vector
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
% baxter_Uij.m
% baxter_Uijk.m
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
%% Elements of Vijk
V111=traceM(U111*Il1*U11.')+traceM(U211*Il2*U21.')+traceM(U311*Il3*U31.')+traceM(U411*Il4*U41.')+traceM(U511*Il5*U51.')+traceM(U611*Il6*U61.')+traceM(U711*Il7*U71.');
V112=traceM(U212*Il2*U21.')+traceM(U312*Il3*U31.')+traceM(U412*Il4*U41.')+traceM(U512*Il5*U51.')+traceM(U612*Il6*U61.')+traceM(U712*Il7*U71.');
V113=traceM(U313*Il3*U31.')+traceM(U413*Il4*U41.')+traceM(U513*Il5*U51.')+traceM(U613*Il6*U61.')+traceM(U713*Il7*U71.');
V114=traceM(U414*Il4*U41.')+traceM(U514*Il5*U51.')+traceM(U614*Il6*U61.')+traceM(U714*Il7*U71.');
V115=traceM(U515*Il5*U51.')+traceM(U615*Il6*U61.')+traceM(U715*Il7*U71.');
V116=traceM(U616*Il6*U61.')+traceM(U716*Il7*U71.');
V117=traceM(U717*Il7*U71.');


V122=traceM(U222*Il2*U21.')+traceM(U322*Il3*U31.')+traceM(U422*Il4*U41.')+traceM(U522*Il5*U51.')+traceM(U622*Il6*U61.')+traceM(U722*Il7*U71.');
V123=traceM(U323*Il3*U31.')+traceM(U423*Il4*U41.')+traceM(U523*Il5*U51.')+traceM(U623*Il6*U61.')+traceM(U723*Il7*U71.');
V124=traceM(U424*Il4*U41.')+traceM(U524*Il5*U51.')+traceM(U624*Il6*U61.')+traceM(U724*Il7*U71.');
V125=traceM(U525*Il5*U51.')+traceM(U625*Il6*U61.')+traceM(U725*Il7*U71.');
V126=traceM(U626*Il6*U61.')+traceM(U726*Il7*U71.');
V127=traceM(U727*Il7*U71.');


V133=traceM(U333*Il3*U31.')+traceM(U433*Il4*U41.')+traceM(U533*Il5*U51.')+traceM(U633*Il6*U61.')+traceM(U733*Il7*U71.');
V134=traceM(U434*Il4*U41.')+traceM(U534*Il5*U51.')+traceM(U634*Il6*U61.')+traceM(U734*Il7*U71.');
V135=traceM(U535*Il5*U51.')+traceM(U635*Il6*U61.')+traceM(U735*Il7*U71.');
V136=traceM(U636*Il6*U61.')+traceM(U736*Il7*U71.');
V137=traceM(U736*Il7*U71.');


V144=traceM(U444*Il4*U41.')+traceM(U544*Il5*U51.')+traceM(U644*Il6*U61.')+traceM(U744*Il7*U71.');
V145=traceM(U545*Il5*U51.')+traceM(U645*Il6*U61.')+traceM(U745*Il7*U71.');
V146=traceM(U646*Il6*U61.')+traceM(U746*Il7*U71.');
V147=traceM(U747*Il7*U71.');


V155=traceM(U555*Il5*U51.')+traceM(U655*Il6*U61.')+traceM(U755*Il7*U71.');
V156=traceM(U656*Il6*U61.')+traceM(U756*Il7*U71.');
V157=traceM(U757*Il7*U71.');


V166=traceM(U666*Il6*U61.')+traceM(U766*Il7*U71.');
V167=traceM(U767*Il7*U71.');


V177=traceM(U777*Il7*U71.');

%%

V211=traceM(U211*Il2*U22.')+traceM(U311*Il3*U32.')+traceM(U411*Il4*U42.')+traceM(U511*Il5*U52.')+traceM(U611*Il6*U62.')+traceM(U711*Il7*U72.');
V212=traceM(U212*Il2*U22.')+traceM(U312*Il3*U32.')+traceM(U412*Il4*U42.')+traceM(U512*Il5*U52.')+traceM(U612*Il6*U62.')+traceM(U712*Il7*U72.');
V213=traceM(U313*Il3*U32.')+traceM(U413*Il4*U42.')+traceM(U513*Il5*U52.')+traceM(U613*Il6*U62.')+traceM(U713*Il7*U72.');
V214=traceM(U414*Il4*U42.')+traceM(U514*Il5*U52.')+traceM(U614*Il6*U62.')+traceM(U714*Il7*U72.');
V215=traceM(U515*Il5*U52.')+traceM(U615*Il6*U62.')+traceM(U715*Il7*U72.');
V216=traceM(U616*Il6*U62.')+traceM(U716*Il7*U72.');
V217=traceM(U717*Il7*U72.');


V222=traceM(U222*Il2*U22.')+traceM(U322*Il3*U32.')+traceM(U422*Il4*U42.')+traceM(U522*Il5*U21.')+traceM(U622*Il6*U62.')+traceM(U722*Il7*U72.');
V223=traceM(U323*Il3*U32.')+traceM(U423*Il4*U42.')+traceM(U523*Il5*U21.')+traceM(U623*Il6*U62.')+traceM(U723*Il7*U72.');
V224=traceM(U424*Il4*U42.')+traceM(U524*Il5*U21.')+traceM(U624*Il6*U62.')+traceM(U724*Il7*U72.');
V225=traceM(U525*Il5*U21.')+traceM(U625*Il6*U62.')+traceM(U725*Il7*U72.');
V226=traceM(U626*Il6*U62.')+traceM(U726*Il7*U72.');
V227=traceM(U726*Il7*U72.');


V233=traceM(U333*Il3*U32.')+traceM(U433*Il4*U42.')+traceM(U533*Il5*U52.')+traceM(U633*Il6*U62.')+traceM(U733*Il7*U72.');
V234=traceM(U434*Il4*U42.')+traceM(U534*Il5*U52.')+traceM(U634*Il6*U62.')+traceM(U734*Il7*U72.');
V235=traceM(U535*Il5*U52.')+traceM(U635*Il6*U62.')+traceM(U735*Il7*U72.');
V236=traceM(U636*Il6*U62.')+traceM(U736*Il7*U72.');
V237=traceM(U737*Il7*U72.');


V244=traceM(U444*Il4*U44.')+traceM(U544*Il5*U54.')+traceM(U644*Il6*U64.')+traceM(U744*Il7*U74.');
V245=traceM(U545*Il5*U54.')+traceM(U645*Il6*U64.')+traceM(U745*Il7*U74.');
V246=traceM(U646*Il6*U64.')+traceM(U746*Il7*U74.');
V247=traceM(U747*Il7*U74.');


V255=traceM(U555*Il5*U52.')+traceM(U655*Il6*U62.')+traceM(U755*Il7*U72.');
V256=traceM(U656*Il6*U62.')+traceM(U756*Il7*U72.');
V257=traceM(U757*Il7*U72.');


V266=traceM(U666*Il6*U62.')+traceM(U766*Il7*U72.');
V267=traceM(U767*Il7*U72.');


V277=traceM(U777*Il7*U72.');

%%

V311=traceM(U311*Il3*U33.')+traceM(U411*Il4*U43.')+traceM(U511*Il5*U53.')+traceM(U611*Il6*U63.')+traceM(U711*Il7*U73.');
V312=traceM(U312*Il3*U33.')+traceM(U412*Il4*U43.')+traceM(U512*Il5*U53.')+traceM(U612*Il6*U63.')+traceM(U712*Il7*U73.');
V313=traceM(U313*Il3*U33.')+traceM(U413*Il4*U43.')+traceM(U513*Il5*U53.')+traceM(U613*Il6*U63.')+traceM(U713*Il7*U73.');
V314=traceM(U414*Il4*U43.')+traceM(U514*Il5*U53.')+traceM(U614*Il6*U63.')+traceM(U714*Il7*U73.');
V315=traceM(U515*Il5*U53.')+traceM(U615*Il6*U63.')+traceM(U715*Il7*U73.');
V316=traceM(U616*Il6*U63.')+traceM(U716*Il7*U73.');
V317=traceM(U716*Il7*U73.');


V322=traceM(U322*Il3*U33.')+traceM(U422*Il4*U43.')+traceM(U522*Il5*U53.')+traceM(U622*Il6*U63.')+traceM(U722*Il7*U73.');
V323=traceM(U323*Il3*U33.')+traceM(U423*Il4*U43.')+traceM(U523*Il5*U53.')+traceM(U623*Il6*U63.')+traceM(U723*Il7*U73.');
V324=traceM(U424*Il4*U43.')+traceM(U524*Il5*U53.')+traceM(U624*Il6*U63.')+traceM(U724*Il7*U73.');
V325=traceM(U525*Il5*U53.')+traceM(U625*Il6*U63.')+traceM(U725*Il7*U73.');
V326=traceM(U626*Il6*U63.')+traceM(U726*Il7*U73.');
V327=traceM(U726*Il7*U73.');


V333=traceM(U333*Il3*U33.')+traceM(U433*Il4*U43.')+traceM(U533*Il5*U53.')+traceM(U633*Il6*U63.')+traceM(U733*Il7*U73.');
V334=traceM(U434*Il4*U43.')+traceM(U534*Il5*U53.')+traceM(U634*Il6*U63.')+traceM(U734*Il7*U73.');
V335=traceM(U535*Il5*U53.')+traceM(U635*Il6*U63.')+traceM(U735*Il7*U73.');
V336=traceM(U636*Il6*U63.')+traceM(U736*Il7*U73.');
V337=traceM(U737*Il7*U73.');


V344=traceM(U444*Il4*U43.')+traceM(U544*Il5*U53.')+traceM(U644*Il6*U63.')+traceM(U744*Il7*U73.');
V345=traceM(U545*Il5*U53.')+traceM(U645*Il6*U63.')+traceM(U745*Il7*U73.');
V346=traceM(U646*Il6*U63.')+traceM(U746*Il7*U73.');
V347=traceM(U747*Il7*U73.');


V355=traceM(U555*Il5*U53.')+traceM(U655*Il6*U63.')+traceM(U755*Il7*U73.');
V356=traceM(U656*Il6*U63.')+traceM(U756*Il7*U73.');
V357=traceM(U757*Il7*U73.');


V366=traceM(U666*Il6*U63.')+traceM(U766*Il7*U73.');
V367=traceM(U767*Il7*U73.');


V377=traceM(U777*Il7*U73.');

%%

V411=traceM(U411*Il4*U44.')+traceM(U511*Il5*U54.')+traceM(U611*Il6*U64.')+traceM(U711*Il7*U74.');
V412=traceM(U412*Il4*U44.')+traceM(U512*Il5*U54.')+traceM(U612*Il6*U64.')+traceM(U712*Il7*U74.');
V413=traceM(U413*Il4*U44.')+traceM(U513*Il5*U54.')+traceM(U613*Il6*U64.')+traceM(U713*Il7*U74.');
V414=traceM(U414*Il4*U44.')+traceM(U514*Il5*U54.')+traceM(U614*Il6*U64.')+traceM(U714*Il7*U74.');
V415=traceM(U515*Il5*U54.')+traceM(U615*Il6*U64.')+traceM(U715*Il7*U74.');
V416=traceM(U616*Il6*U64.')+traceM(U716*Il7*U74.');
V417=traceM(U717*Il7*U74.');


V422=traceM(U422*Il4*U44.')+traceM(U522*Il5*U54.')+traceM(U622*Il6*U64.')+traceM(U722*Il7*U74.');
V423=traceM(U423*Il4*U44.')+traceM(U523*Il5*U54.')+traceM(U623*Il6*U64.')+traceM(U723*Il7*U74.');
V424=traceM(U424*Il4*U44.')+traceM(U524*Il5*U54.')+traceM(U624*Il6*U64.')+traceM(U724*Il7*U74.');
V425=traceM(U525*Il5*U54.')+traceM(U625*Il6*U64.')+traceM(U725*Il7*U74.');
V426=traceM(U626*Il6*U64.')+traceM(U726*Il7*U74.');
V427=traceM(U727*Il7*U74.');


V433=traceM(U433*Il4*U44.')+traceM(U533*Il5*U54.')+traceM(U633*Il6*U64.')+traceM(U733*Il7*U74.');
V434=traceM(U434*Il4*U44.')+traceM(U534*Il5*U54.')+traceM(U634*Il6*U64.')+traceM(U734*Il7*U74.');
V435=traceM(U535*Il5*U54.')+traceM(U635*Il6*U64.')+traceM(U735*Il7*U74.');
V436=traceM(U636*Il6*U64.')+traceM(U736*Il7*U74.');
V437=traceM(U737*Il7*U74.');


V444=traceM(U444*Il4*U44.')+traceM(U544*Il5*U54.')+traceM(U644*Il6*U64.')+traceM(U744*Il7*U74.');
V445=traceM(U545*Il5*U54.')+traceM(U645*Il6*U64.')+traceM(U745*Il7*U74.');
V446=traceM(U646*Il6*U64.')+traceM(U746*Il7*U74.');
V447=traceM(U747*Il7*U74.');


V455=traceM(U555*Il5*U54.')+traceM(U655*Il6*U64.')+traceM(U755*Il7*U74.');
V456=traceM(U656*Il6*U64.')+traceM(U756*Il7*U74.');
V457=traceM(U757*Il7*U74.');


V466=traceM(U666*Il6*U64.')+traceM(U766*Il7*U74.');
V467=traceM(U767*Il7*U74.');


V477=traceM(U777*Il7*U74.');

%%

V511=traceM(U511*Il5*U55.')+traceM(U611*Il6*U65.')+traceM(U711*Il7*U75.');
V512=traceM(U512*Il5*U55.')+traceM(U612*Il6*U65.')+traceM(U712*Il7*U75.');
V513=traceM(U513*Il5*U55.')+traceM(U613*Il6*U65.')+traceM(U713*Il7*U75.');
V514=traceM(U514*Il5*U55.')+traceM(U614*Il6*U65.')+traceM(U714*Il7*U75.');
V515=traceM(U515*Il5*U55.')+traceM(U615*Il6*U65.')+traceM(U715*Il7*U75.');
V516=traceM(U616*Il6*U65.')+traceM(U715*Il7*U75.');
V517=traceM(U717*Il7*U75.');


V522=traceM(U522*Il5*U55.')+traceM(U622*Il6*U65.')+traceM(U722*Il7*U75.');
V523=traceM(U523*Il5*U55.')+traceM(U623*Il6*U65.')+traceM(U723*Il7*U75.');
V524=traceM(U524*Il5*U55.')+traceM(U624*Il6*U65.')+traceM(U724*Il7*U75.');
V525=traceM(U525*Il5*U55.')+traceM(U625*Il6*U65.')+traceM(U725*Il7*U75.');
V526=traceM(U626*Il6*U65.')+traceM(U725*Il7*U75.');
V527=traceM(U727*Il7*U75.');


V533=traceM(U533*Il5*U55.')+traceM(U633*Il6*U65.')+traceM(U733*Il7*U75.');
V534=traceM(U534*Il5*U55.')+traceM(U634*Il6*U65.')+traceM(U734*Il7*U75.');
V535=traceM(U535*Il5*U55.')+traceM(U635*Il6*U65.')+traceM(U735*Il7*U75.');
V536=traceM(U636*Il6*U65.')+traceM(U735*Il7*U75.');
V537=traceM(U737*Il7*U75.');


V544=traceM(U544*Il5*U55.')+traceM(U644*Il6*U65.')+traceM(U744*Il7*U75.');
V545=traceM(U545*Il5*U55.')+traceM(U645*Il6*U65.')+traceM(U745*Il7*U75.');
V546=traceM(U646*Il6*U65.')+traceM(U745*Il7*U75.');
V547=traceM(U747*Il7*U75.');


V555=traceM(U555*Il5*U55.')+traceM(U655*Il6*U65.')+traceM(U755*Il7*U75.');
V556=traceM(U656*Il6*U65.')+traceM(U755*Il7*U75.');
V557=traceM(U757*Il7*U75.');


V566=traceM(U666*Il6*U65.')+traceM(U765*Il7*U75.');
V567=traceM(U767*Il7*U75.');


V577=traceM(U777*Il7*U75.');

%%

V611=traceM(U611*Il6*U66.')+traceM(U711*Il7*U76.');
V612=traceM(U612*Il6*U66.')+traceM(U712*Il7*U76.');
V613=traceM(U613*Il6*U66.')+traceM(U713*Il7*U76.');
V614=traceM(U614*Il6*U66.')+traceM(U714*Il7*U76.');
V615=traceM(U615*Il6*U66.')+traceM(U715*Il7*U76.');
V616=traceM(U616*Il6*U66.')+traceM(U716*Il7*U76.');
V617=traceM(U717*Il7*U76.');


V622=traceM(U622*Il6*U66.')+traceM(U722*Il7*U76.');
V623=traceM(U623*Il6*U66.')+traceM(U723*Il7*U76.');
V624=traceM(U624*Il6*U66.')+traceM(U724*Il7*U76.');
V625=traceM(U625*Il6*U66.')+traceM(U725*Il7*U76.');
V626=traceM(U626*Il6*U66.')+traceM(U726*Il7*U76.');
V627=traceM(U727*Il7*U76.');


V633=traceM(U633*Il6*U66.')+traceM(U733*Il7*U76.');
V634=traceM(U634*Il6*U66.')+traceM(U734*Il7*U76.');
V635=traceM(U635*Il6*U66.')+traceM(U735*Il7*U76.');
V636=traceM(U636*Il6*U66.')+traceM(U736*Il7*U76.');
V637=traceM(U737*Il7*U76.');


V644=traceM(U644*Il6*U66.')+traceM(U744*Il7*U76.');
V645=traceM(U645*Il6*U66.')+traceM(U745*Il7*U76.');
V646=traceM(U646*Il6*U66.')+traceM(U746*Il7*U76.');
V647=traceM(U747*Il7*U76.');


V655=traceM(U655*Il6*U66.')+traceM(U755*Il7*U76.');
V656=traceM(U656*Il6*U66.')+traceM(U756*Il7*U76.');
V657=traceM(U757*Il7*U76.');


V666=traceM(U666*Il6*U66.')+traceM(U766*Il7*U76.');
V667=traceM(U767*Il7*U76.');


V677=traceM(U777*Il7*U76.');

%%

V711=traceM(U711*Il7*U77.');
V712=traceM(U712*Il7*U77.');
V713=traceM(U713*Il7*U77.');
V714=traceM(U714*Il7*U77.');
V715=traceM(U715*Il7*U77.');
V716=traceM(U716*Il7*U77.');
V717=traceM(U717*Il7*U77.');


V722=traceM(U722*Il7*U77.');
V723=traceM(U723*Il7*U77.');
V724=traceM(U724*Il7*U77.');
V725=traceM(U725*Il7*U77.');
V726=traceM(U726*Il7*U77.');
V727=traceM(U727*Il7*U77.');


V733=traceM(U733*Il7*U77.');
V734=traceM(U734*Il7*U77.');
V735=traceM(U735*Il7*U77.');
V736=traceM(U736*Il7*U77.');
V737=traceM(U737*Il7*U77.');


V744=traceM(U744*Il7*U77.');
V745=traceM(U745*Il7*U77.');
V746=traceM(U746*Il7*U77.');
V747=traceM(U747*Il7*U77.');


V755=traceM(U755*Il7*U77.');
V756=traceM(U756*Il7*U77.');
V757=traceM(U757*Il7*U77.');


V766=traceM(U766*Il7*U77.');
V767=traceM(U767*Il7*U77.');


V777=traceM(U777*Il7*U77.');

%% Construct Vih Matrix
V1h=[V111 , V112 , V113 , V114 , V115 , V116 , V117;  
     V112 , V122 , V123 , V124 , V125 , V126 , V127;  
     V113 , V123 , V133 , V134 , V135 , V136 , V137;  
     V114 , V124 , V134 , V144 , V145 , V146 , V147;  
     V115 , V125 , V135 , V145 , V155 , V156 , V157;  
     V116 , V126 , V136 , V146 , V156 , V166 , V167;  
     V117 , V127 , V137 , V147 , V157 , V167 , V177 ];
 
V2h=[V211 , V212 , V213 , V214 , V215 , V216 , V217;  
     V212 , V222 , V223 , V224 , V225 , V226 , V227;  
     V213 , V223 , V233 , V234 , V235 , V236 , V237;  
     V214 , V224 , V234 , V244 , V245 , V246 , V247;  
     V215 , V225 , V235 , V245 , V255 , V256 , V257;  
     V216 , V226 , V236 , V246 , V256 , V266 , V267;  
     V217 , V227 , V237 , V247 , V257 , V267 , V277 ];
	 

V3h=[V311 , V312 , V313 , V314 , V315 , V316 , V317;  
     V312 , V322 , V323 , V324 , V325 , V326 , V327;  
     V313 , V323 , V333 , V334 , V335 , V336 , V337;  
     V314 , V324 , V334 , V344 , V345 , V346 , V347;  
     V315 , V325 , V335 , V345 , V355 , V356 , V357;  
     V316 , V326 , V336 , V346 , V356 , V366 , V367;  
     V317 , V327 , V337 , V347 , V357 , V367 , V377 ];
	 

V4h=[V411 , V412 , V413 , V414 , V415 , V416 , V417;  
     V412 , V422 , V423 , V424 , V425 , V426 , V427;  
     V413 , V423 , V433 , V434 , V435 , V436 , V437;  
     V414 , V424 , V434 , V444 , V445 , V446 , V447;  
     V415 , V425 , V435 , V445 , V455 , V456 , V457;  
     V416 , V426 , V436 , V446 , V456 , V466 , V467;  
     V417 , V427 , V437 , V447 , V457 , V467 , V477 ];
	 

V5h=[V511 , V512 , V513 , V514 , V515 , V516 , V517;  
     V512 , V522 , V523 , V524 , V525 , V526 , V527;  
     V513 , V523 , V533 , V534 , V535 , V536 , V537;  
     V514 , V524 , V534 , V544 , V545 , V546 , V547;  
     V515 , V525 , V535 , V545 , V555 , V556 , V557;  
     V516 , V526 , V536 , V546 , V556 , V566 , V567;  
     V517 , V527 , V537 , V547 , V557 , V567 , V577 ];
	 

V6h=[V611 , V612 , V613 , V614 , V615 , V616 , V617;  
     V612 , V622 , V623 , V624 , V625 , V626 , V627;  
     V613 , V623 , V633 , V634 , V635 , V636 , V637;  
     V614 , V624 , V634 , V644 , V645 , V646 , V647;  
     V615 , V625 , V635 , V645 , V655 , V656 , V657;  
     V616 , V626 , V636 , V646 , V656 , V666 , V667;  
     V617 , V627 , V637 , V647 , V657 , V667 , V677 ];
	 

V7h=[V711 , V712 , V713 , V714 , V715 , V716 , V717;  
     V712 , V722 , V723 , V724 , V725 , V726 , V727;  
     V713 , V723 , V733 , V734 , V735 , V736 , V737;  
     V714 , V724 , V734 , V744 , V745 , V746 , V747;  
     V715 , V725 , V735 , V745 , V755 , V756 , V757;  
     V716 , V726 , V736 , V746 , V756 , V766 , V767;  
     V717 , V727 , V737 , V747 , V757 , V767 , V777 ];
%% Construct V matrix
V1 = (qdl.')*V1h*qdl;
V2 = (qdl.')*V2h*qdl;
V3 = (qdl.')*V3h*qdl;
V4 = (qdl.')*V4h*qdl;
V5 = (qdl.')*V5h*qdl;
V6 = (qdl.')*V6h*qdl;
V7 = (qdl.')*V7h*qdl;

V = [V1, V2, V3, V4, V5, V6, V7].';
