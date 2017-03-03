function plotProgresskMeans(X, centroids, previous, idx, K, i)
%PLOTPROGRESSKMEANS is a helper function that displays the progress of 
%k-Means as it is running. It is intended for use only with 2D data.
%   PLOTPROGRESSKMEANS(X, centroids, previous, idx, K, i) plots the data
%   points with colors assigned to each centroid. With the previous
%   centroids, it also plots a line between the previous locations and
%   current locations of the centroids.
%
hold on;
% Plot the examples
plotDataPoints(X, idx, K);

% Plot the centroids as black x's
% plot3(centroids(:,1), centroids(:,2),centroids(:,3), 'x', ...
%      'MarkerEdgeColor','k', ...
%      'MarkerSize', 10, 'LineWidth', 3);
plot3(centroids(:,1), centroids(:,2),centroids(:,3), 'x', ...
     'MarkerEdgeColor','k', ...
     'MarkerSize', 8, 'LineWidth', 2);
%plot3(centroids(1,:), centroids(2,:),centroids(3,:));
% Plot the history of the centroids with lines
for j=1:size(centroids,1)
%    drawLine(centroids(j, :), previous(j, :));
%     line(centroids(j, :), previous(j, :));
    plot3([centroids(j, 1), previous(j, 1)],[centroids(j, 2), previous(j, 2)],[centroids(j, 3), previous(j, 3)],'b-');
end
% plot3([centroids(1, 1), previous(1, 1)],[centroids(1, 2), previous(1, 2)],[centroids(1, 3), previous(1, 3)],'b-');
% plot3([centroids(2, 1), previous(2, 1)],[centroids(2, 2), previous(2, 2)],[centroids(2, 3), previous(2, 3)],'r-');
% plot3([centroids(3, 1), previous(3, 1)],[centroids(3, 2), previous(3, 2)],[centroids(3, 3), previous(3, 3)],'m-');
% Title
title(sprintf('Iteration number %d', i))

end

