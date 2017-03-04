function idx = findClosestCentroids(X, centroids)

K = size(centroids, 1);

idx = zeros(size(X,1), 1);

format long;
for i=1:size(X,1)
    distance=zeros(K,1);
    for j=1:K
        a=(norm(X(i,:)-centroids(j,:)))^2;
        distance(j)=a;
    end;
    c=find(distance==min(distance));
    idx(i)=c(1);
end;


end

