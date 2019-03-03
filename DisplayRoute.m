%%
%Â·¾¶¿ÉÊÓ»¯
function DisplayRoute(V, City, n)
    clf;
    set(gca,'box','on')
    hold on;
    xlim([0, 100]);
    ylim([0, 100]);
    xlabel('x/cm');
    ylabel('y/cm');
    tmp = zeros(n, 2);
    for i = 1:1:n
        [v, id] = max(V(:, i));
        tmp(i, :) = City(id, :);
    end
    
    plot(tmp(:, 1), tmp(:, 2), '-r');
    plot([tmp(1, 1), tmp(n, 1)], [tmp(1, 2), tmp(n, 2)], '-r');
    plot(City(:, 1), City(:, 2), 'b.', 'MarkerSize',15);
    hold off
end
