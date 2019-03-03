%%
%·µ»Ø³õÊ¼»¯×´Ì¬
function U = InitiateU(u0, n)
    for i = 1:1:n
        for j = 1:1:n
%            delta =  0.0001 * randi([-1000, 1000]);
 %           U(i, j) = -0.5 * u0 * log(n-1) * (1 + delta);
             delta =  0.001 * randi([-1000, 1000]);
             U(i, j) = 0.5 * u0 * log(n - 1) + delta;
        end
    end
end