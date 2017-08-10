%% Gravity loading vector G
% G is 7x1 vector
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
% baxter_Uij.m

%%
g =   [0,0,-9.81,0];
r11 = [Ll(1).r, 1].';
r22 = [Ll(2).r, 1].';
r33 = [Ll(3).r, 1].';
r44 = [Ll(4).r, 1].';
r55 = [Ll(5).r, 1].';
r66 = [Ll(6).r, 1].';
r77 = [Ll(7).r, 1].';

G(1)=-(  m(1 )*g* U11 *r11 + m(2 )*g* U21 *r22 + m(3 )*g* U31 *r33 + m(4 )*g* U41 *r44 + m(5 )*g* U51 *r55 + m(6 )*g* U61 *r66 + m(7 )*g* U71 *r77   );
G(2)=-(  m(2 )*g* U22 *r22 + m(3 )*g* U32 *r33 + m(4 )*g* U42 *r44 + m(5 )*g* U52 *r55 + m(6 )*g* U62 *r66 + m(7 )*g* U72 *r77   );
G(3)=-(  m(3 )*g* U32 *r33 + m(4 )*g* U42 *r44 + m(5 )*g* U52 *r55 + m(6 )*g* U62 *r66 + m(7 )*g* U72 *r77   );
G(4)=-(  m(4 )*g* U44 *r44 + m(5 )*g* U54 *r55 + m(6 )*g* U64 *r66 + m(7 )*g* U74 *r77   );
G(5)=-(  m(5 )*g* U55 *r55 + m(6 )*g* U65 *r66 + m(7 )*g* U75 *r77   );
G(6)=-(  m(6 )*g* U66 *r66 + m(7 )*g* U76 *r77   );
G(7)=-   m(7 )*g* U77 *r77;

%%
G = [G(1), G(2), G(3),G(4),G(5),G(6),G(7)].';