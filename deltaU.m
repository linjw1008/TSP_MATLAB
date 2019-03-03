%%
%º∆À„dU/dt
function dU = deltaU(A, B, C, D, U, V, Distance, n, tor)
    dU1 = zeros(n, n);
    dU2 = zeros(n, n);
    dU3 = zeros(n, n);
    dU4 = zeros(n, n);
    dU5 = zeros(n, n);
    
    for x = 1:1:n
       for i = 1:1:n
          dU1(x, i) = U(x, i)/tor; 
       end
    end
    for x = 1:1:n
        for i = 1:1:n
            for j = 1:1:n
                if i == j
                    continue
                end
                dU2(x, i) = dU2(x, i) + V(x, j);
            end
        end
    end
    for x = 1:1:n
        for i = 1:1:n
           for y = 1:1:n
               if y == x
                   continue
               end
               dU3(x, i) = dU3(x, i) + V(y, i);
            end
        end
    end
    for x = 1:1:n
        for i = 1:1:n
            for xx = 1:1:n
                for ii = 1:1:n
                    dU4(x, i) = dU4(x, i) + V(xx, ii);
                end
            end
            dU4(x, i) = dU4(x, i) - n;
        end
    end
    for x = 1:1:n
        for i = 1:1:n
            for y = 1:1:n
                if i == 1
                    dU5(x, i) = dU5(x, i) + Distance(x, y)*(V(y, i + 1) + 0);
                else
                    if i == n
                        dU5(x, i) = dU5(x, i) + Distance(x, y)*(0 + V(y, i - 1));
                    else
                        dU5(x, i) = dU5(x, i) + Distance(x, y)*(V(y, i + 1) + V(y, i - 1));
                    end
                end
            end
        end
    end

    dU = -dU1 - A/2 * dU2 - B/2 * dU3 - C * dU4 - D/2 *dU5;
%     dU
end
