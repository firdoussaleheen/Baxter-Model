function [eigen,Co, unco,Ob,unob]= chksys(A,B,C) 
%Eigenvalues of the system
%disp('Eigenvalues are')
eigen = eig(A);
%disp(eigen)

%Controllability Matrix
Co=ctrb(A,B);
% Number of uncontrollable states
%disp('Number of uncontrollable states')
unco=length(A)-rank(Co);
%disp(unco)
% Observability Matrix
Ob = obsv(A,C);
% Number of unobservable states
%disp('Number of unobservable states')
unob = length(A)-rank(Ob);
%disp(unob)

%disp('Eigenvalues are'); 
disp(eigen);
if(real(eigen)<0), disp('System stable, real part of all eigenvalues are negative');
else disp('System not stable, real part of not all eigenvalues are negative');
disp('Number of uncontrollable states');disp(unco);
disp('Number of unobservable states');disp(unob);
end