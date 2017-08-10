%% Bp = [dV/dq] evaluate at q=Q0. This script determines the matrix Bpmat = [dV/dq]
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
% baxter_Uij.m
% baxter_Uijk.m
% traceM.m
% baxter_V_matrix.m
Bpmat = jacobian(V,ql);