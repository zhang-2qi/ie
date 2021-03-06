function plotProgresskMeans(X, centroids, previous, idx, K, ii,max_iters)

%figure

% Plot the examples

 figure
 hold on ;grid on;
 view(30,10);
 plotDataPoints(X, idx, K);
    

% plotDataPoints(X, idx, K);

% Plot the centroids as black x's
% plot3(centroids(:,1), centroids(:,2),centroids(:,3), 'x', ...
%      'MarkerEdgeColor','k', ...
%      'MarkerSize', 10, 'LineWidth', 3);
plot3(centroids(:,1), centroids(:,2),centroids(:,3), 'x', ...
     'MarkerEdgeColor','k', ...
          'MarkerSize', 8, 'LineWidth', 2);
X_mean = mean(X);
plot3(X_mean(1),X_mean(2),X_mean(3),'c*', ...
     'MarkerEdgeColor','k', ...
          'MarkerSize', 8, 'LineWidth', 2);
      str=['(' num2str(X_mean(1),'%.2f\n') ',' num2str(X_mean(2),'%.2f\n') ','  num2str(X_mean(3),'%.2f\n') ')']; 
    t(1)=text(X_mean(1)+0.2,X_mean(2)+1,X_mean(3)+0.2,str);
    %  t.Color = 'black';
    t.FontSize = 10;
% for i=1:K
%     str=['(' num2str(centroids(i,1),'%.2f\n') ',' num2str(centroids(i,2),'%.2f\n') ','  num2str(centroids(i,3),'%.2f\n') ')'];
%     t(1)=text(centroids(i,1)+0.2,centroids(i,2)+1,centroids(i,3)+0.2,str);
%     %  t.Color = 'black';
%     t.FontSize = 10;
% end;
hold off;
%plot3(centroids(1,:), centroids(2,:),centroids(3,:));
% Plot the history of the centroids with lines
% for j=1:size(centroids,1)
% %    drawLine(centroids(j, :), previous(j, :));
% %     line(centroids(j, :), previous(j, :));
%     plot3([centroids(j, 1), previous(j, 1)],[centroids(j, 2), previous(j, 2)],[centroids(j, 3), previous(j, 3)],'b-');
% end


title(sprintf('Iteration number %d', ii))
if (ii==max_iters)
str1 = [num2str(ii) '.png'];
print(gcf,'-dpng',str1);
end;
end

