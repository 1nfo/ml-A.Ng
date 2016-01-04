function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
M = size(X,1);
P = size(centroids,2);
cTMP=centroids';
XDIF = reshape((repmat(cTMP(:)',M,1)-repmat(X,1,K)),M,P,K);
XPER = reshape(permute(XDIF,[1,3,2]),M*K,P);
XRES = reshape(sum(XPER'.^2)',M,K);
[~,idx]=min(XRES,[],2);
% You need to return the following variables correctly.

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

end

