function [centroids, idx] = runkMeans(X, initial_centroids, ...
                                      max_iters, plot_progress)

if ~exist('plot_progress', 'var') || isempty(plot_progress)
    plot_progress = false;
end

% Plot the data if we are plotting progress
if plot_progress
    figure;
    hold on;
end

% Initialize values
[m n] = size(X);
K = size(initial_centroids, 1);%K是数量
centroids = initial_centroids;
previous_centroids = centroids;
idx = zeros(m, 1);

view(30,10)


% Run K-Means
for i=1:max_iters
    
    % Output progress
    fprintf('K-Means iteration %d/%d...\n', i, max_iters);
    if exist('OCTAVE_VERSION')
        fflush(stdout);
    end
    
    % For each example in X, assign it to the closest centroid
    idx = findClosestCentroids(X, centroids);
    %加一个计算代价函数的
    cost = sum(sum((X-centroids(idx,:)).^2));
    fprintf('total cost is %f\n',cost);
    % Optionally, plot progress here
    if plot_progress
        plotProgresskMeans(X, centroids, previous_centroids, idx, K, i);
        previous_centroids = centroids;
       % fprintf('Press enter to continue.\n');
       % pause;
    end
    
    % Given the memberships, compute new centroids
    centroids = computeCentroids(X, idx, K);
end


if plot_progress
    hold off;
end

end

