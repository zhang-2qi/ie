function plotDataPoints(X, idx, K)
 palette = hsv(K + 1);
 colors = palette(idx, :);

% Plot the data
scatter3(X(:,1), X(:,2),X(:,3),15, colors);

end
