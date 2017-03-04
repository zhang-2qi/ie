clear ; close all; clc
fprintf('\nRunning K-Means clustering on example dataset.\n\n');
load('ex7data2.mat');
K=3;
max_iters = 30;
initial_centroids = [3 3 3; 6 2 1; 8 5 2];
[centroids, idx] = runkMeans(X, initial_centroids, max_iters, true);
fprintf('\nK-Means Done.\n\n');
