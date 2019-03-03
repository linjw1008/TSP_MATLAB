%%
%判断路径是否合法
function IsCorrect = IsCorrectRoute(Route)
    
    IsCorrect = true;
    size1 = size(Route);
    tmp = unique(Route, 'row');
    size2 = size(tmp);
    if size1(1) ~= size2(1)
        IsCorrect = false;
    end
    
end