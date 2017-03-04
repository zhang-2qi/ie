function plotProgresskMeans(X, centroids, previous, idx, K, i)


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


title(sprintf('Iteration number %d', i))

end

