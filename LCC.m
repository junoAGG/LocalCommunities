function [ A_c,ind] = LCC(A )
%[A_c,ind]=LCC(A)
%
% LCC: find the largest weakly connected component of a network
%
%   Input:
%       A: adjacency matrix
%
%   Outputs:
%       A_c: adjacency matrix of largest connected component
%       ind: node indeces of nodes in the largest connected component, i.e.
%           A(ind,ind)=A_c
%
% This function relies on the MatlabBgl library:
%   http://www.mathworks.co.uk/matlabcentral/fileexchange/10922-matlabbgl
%
% see also components

% Version: 1.02
% Date: Fri 18 Jul 2014 13:16:55 BST
% Author: Lucas G. S. Jeub
% Email: jeub@maths.ox.ac.uk

[C,sizes]=components(max(A,A'));

[~,k]=max(sizes);
ind=find(C==k);

A_c=A(ind,ind);

end

