clear ; close all; clc
fprintf('\nRunning K-Means clustering on example dataset.\n\n');
load('ex7data2.mat');
%K=6;
K=3;
figure
scatter3(X(:,1), X(:,2),X(:,3),15, 'b');
%max_iters = 10;
max_iters = 15;
%initial_centroids = [3 3 3; 6 2 1; 8 5 2;1,4,3;2 5 3; 3 4 3];
initial_centroids = [3 3 3; 6 2 1; 8 5 2];
[centroids, idx] = runkMeans(X, initial_centroids, max_iters, true);
fprintf('\nK-Means Done.\n\n');
fprintf('the centroids are\n');
disp(centroids);
for i=1:K
    A = bsxfun(@minus,X,centroids(i,:));
    distance = sum(A.^2,2);
    distance = sort(distance);
    number = floor(size(X,1)*0.95);
    fprintf('the mean of 5%% longest distance is:  %.6f\n',mean(distance(number:end)));
end;

