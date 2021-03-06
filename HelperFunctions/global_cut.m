function [S,cond]=global_cut(A)
% approximate the global minimal conductance cut
%
% Input:
%   A: adjacency matrix
%
% Outputs:
%   S: indicates bipartition found (entries are 1 or 2,
%       indicating which part of the partition the corresponding
%       node belongs to)
%   cond: the conductance value of the bipartition
%
% see also InternalConductance

% Version: 2.0
% Date: Mon 25 Jul 2016 17:06:57 BST
% Author: Lucas Jeub
% Email: jeub@maths.ox.ac.uk

[~,v]=laplace_eig(A);

[cond,ind]=sweep_cut(v,A,sum(A,2),inf);

[cond,k]=min(cond);

S=ones(length(A),1)*2;

S(ind(1:k))=1;
end
