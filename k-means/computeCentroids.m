function centroids = computeCentroids(X, idx, K)
% this function compute centroids

[m n] = size(X);


centroids = zeros(K, n);


numbers=zeros(K,1);
for i=1:K
    for j=1:size(X,1)
        if(idx(j)==i)
            centroids(i,:)=centroids(i,:)+X(j,:);
            numbers(i,1)=numbers(i,1)+1;
        end;
    end;
    centroids(i,:)=centroids(i,:)/numbers(i,1);
end;


end

