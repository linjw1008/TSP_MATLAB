%%
%计算路径长度
function [CityDistance, RouteDistance] = CalRouteDistance(Route)
    
    SIZE = size(Route);
    n = SIZE(1);
    
    RouteDistance = 0;
    for i = 1:1:n-1
        CityDistance(i) = norm(Route(i, :) - Route(i + 1, :));
        RouteDistance = RouteDistance + CityDistance(i);
    end
    CityDistance(n) = norm(Route(1, :) - Route(n, :));
    RouteDistance = RouteDistance + CityDistance(n);
end