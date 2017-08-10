%% Cp1 = [dV/dqd] evaluate at q=Q0. This script determines the matrix Cp1mat = [dV/dqd]
% dependencies:
% baxter_parameters_sym.m
% baxter_homogeneous_transform.m
% baxter_Uij.m
% baxter_Uijk.m
% traceM.m
% baxter_V_matrix.m
Cp1mat = jacobian(V,qdl);