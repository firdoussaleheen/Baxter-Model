% Uijk = del Uij / del qk

% Derivative operator. 
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
%%
W=  [0 -1 0 0;
     1  0 0 0;
     0  0 0 0;
     0  0 0 0];
W1=W; W2=W; W3=W;W4=W;W5=W;W6=W; W7=W;
%%
U111 =     W1*W1*T01;

U211 =     W1*W1*T02;
U221 = W1*T01*W2*T12;
U222 = T01*W2*W2*T12;
U212 = U221;

U311 =         W1*W1*T03;
U321 = T01*W1*T01*W2*T13;
U322 = T01*W2*T01*W2*T13;
U331 =     W1*T02*W3*T23;
U332 = T01*W2*T02*W3*T23;
U333  = T02*W3*W3*T23;
U312 = U321;
U313 = U331;
U323 = U332;

U411 =     W1*W1*T04;
U421 = W1*T01*W2*T14;
U422 = T01*W2*W2*T14;
U431 = W1*T02*W3*T24;
U432 = T01*W2*T12*W3*T24;
U433 = T02*W3*W3*T24;
U441 = W1*T03*W4*T34;
U442 = T01*W2*T13*W4*T34;
U443 = T02*W3*T23*W4*T34;
U444 = T03*W4*W4*T34;
U412 = U421;
U413 = U431;
U414 = U441;
U423 = U432;
U424 = U442;
U434 = U443;

U511 =     W1*W1*T05;
U521 = W1*T01*W2*T15;
U522 = T01*W2*W2*T15;
U531 = W1*T02*W3*T25;
U532 = T01*W2*T12*W3*T25;
U533 = T02*W3*W3*T25;
U541 = W1*T03*W4*T35;
U542 = W1*T03*W4*T35;
U543 = W1*T03*W4*T35;
U544 = W1*T03*W4*T35;
U551 = T04*W5*T45;
U552 = T01*W2*T14*W5*T45;
U553 = T02*W3*T24*W5*T45;
U554 = T03*W4*T34*W5*T45;
U555 = T04*W5*W5*T45;
U512 = U521;
U513 = U531;
U514 = U541;
U515 = U551;
U525 = U552;
U523 = U532;
U524 = U542;
U534 = U543;
U535 = U553;
U545 = U554;

U611 =     W1*W1*T06;
U621 = W1*T01*W2*T16;
U622 = T01*W1*W2*T16;
U631 = W1*T02*W3*T26;
U632 = T01*W2*T12*W3*T26;
U633 = T02*W3*W3*T26;
U641 =     W1*T03*W4*T36;
U642 = T01*W2*T13*W4*T36;
U643 = T02*W3*T23*W4*T36;
U644 = T03*W4*W4*T36;
U651 = W1*T04*W5*T46;
U652 = T01*W1*T14*W5*T46;
U653 = T02*W2*T24*W5*T46;
U654 = T03*W3*T34*W5*T46;
U655 = T04*W4*W5*T46;
U661 = W1*T05*W6*T56;
U662 = T01*W1*T15*W6*T56;
U663 = T02*W2*T25*W6*T56;
U664 = T03*W3*T35*W6*T56;
U665 = T04*W4*T45*W6*T56;
U666 = T05*W5*W6*T56;
U612 = U621;
U613 = U631;
U614 = U641;
U615 = U651;
U616 = U661;
U623 = U632;
U624 = U642;
U625 = U652;
U626 = U662;
U634 = U643;
U635 = U653;
U636 = U663;
U645 = U654;
U646 = U664;
U656 = U665;




U711 =     W1*W1*T07;
U721 = W1*T01*W2*T17;
U722 = T01*W2*W2*T17;
U731 = W1*T02*W3*T27;
U732 = T01*W2*T12*W3*T27;
U733 = T02*W3*W3*T27;
U741 = W1*T03*W4*T37;
U742 = T01*W2*T13*W4*T37;
U743 = T02*W3*T23*W4*T37;
U744 = T03*W4*W4*T37;
U751 =    W1*T04*W5*T47;
U752 = T01*W2*T14*W5*T47;
U753 = T02*W3*T24*W5*T47;
U754 = T03*W4*T34*W5*T47;
U755 = T04*W5*W5*T47;
U761 = W1*T05*W6*T57;
U762 = T01*W2*T15*W6*T57;
U763 = T02*W3*T25*W6*T57;
U764 = T03*W4*T35*W6*T57;
U765 = T04*W5*T45*W6*T57;
U766 = T05*W6*W6*T57;
U771 = W1*T06*W7*T67;
U772 = T01*W2*T16*W7*T67;
U773 = T02*W3*T26*W7*T67;
U774 = T03*W4*T36*W7*T67;
U775 = T04*W5*T46*W7*T67;
U776 = T05*W6*T56*W7*T67;
U777 = T06*W7*W7*T67;
U712 = U721;
U713 = U731;
U714 = U741;
U715 = U751;
U716 = U761;
U717 = U771;
U723 = U732;
U724 = U742;
U725 = U752;
U726 = U762;
U727 = U772;
U734 = U743;
U735 = U753;
U736 = U763;
U737 = U773;
U745 = U754;
U746 = U764;
U747 = U774;
U756 = U765;
U757 = U775;
U767 = U776;




