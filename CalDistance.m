%%
%������м�ľ���
function Distance = CalDistance(City)
    Z = pdist(City);
    Distance = squareform(Z);
end