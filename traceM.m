function t = traceM(A)
%traceM  Sum of diagonal elements.
%   traceM(A) is the sum of the diagonal elements of square matrix A
%
% workaround for matlab native trace function which gives error 
% for symbolic operation
t = sum(diag(A));