function [handA] = plotDataPoints(X, idx, K)
 palette = hsv(K + 1);
 colors = palette(idx, :);

% Plot the data
handA = scatter3(X(:,1), X(:,2),X(:,3),15, colors);
%saveas(handA);
end
