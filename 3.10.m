clc; clear; close all;
%Define the variables x and y
% grid on

load 'wordVecV.mat'. 
M = zeros(1651,10);
M(V<1) = 0;
M(V>=1) =1;
Mtild = zeros(1651,10);
for i = 1:10
    Mtild(:,i) = M(:,i)/(norm(M(:,i)));
end

% part c find the SVD
[U,S,V] = svd(Mtild);
SingVal = sort(diag(S), 'descend');

% find the euclidean dist of vector1 and finds its respective dist with the
% other n-1 vectors in the array, when its done with Vector1 it displays   
% eudclidean dist of Vector 2 from the other n-2 vectors left on the next
% just at the consectutive row index





% D = pdist(transpose(V));
% Z = squareform(D);
% minDist = min(D(D>0))
% i = 1;
% for c = 1:(size(Z) - 1)
%     for r = c + 1:size(Z)
%         if Z(c, r) == minDist
%             P1 = c;
%             P2 = r;
%         end
%     end
% end
