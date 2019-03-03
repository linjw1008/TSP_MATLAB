%%
%计算城市间的距离
function Distance = CalDistance(City)
    Z = pdist(City);
    Distance = squareform(Z);
end