%%
%¼ÆËãÂ·¾¶
function Route = GenerateRoute(V, City, n)
    Route = zeros(n, 2);
    for i = 1:1:n
        [v, id] = max(V(:, i));
        Route(i, :) = City(id, :);
    end
end