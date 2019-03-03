%%
%%能量函数
function ENERGY = Energy(A, B, C, D, V, n, Distance)
    E1 = 0;
    E2 = 0;
    E3 = 0;
    E4 = 0;
    E5 = 0;
    E6 = 0;
    
    %计算E1
    for x = 1:1:n
        for i = 1:1:n - 1
            for j = i + 1:1:n
               E1 = E1 + V(x, i)*V(x, j);
            end
        end
    end
    %计算E2
    for i = 1:1:n
        for x = 1:1:n - 1
            for y = x + 1:1:n
               E2 = E2 + V(x, i)*V(y, i);
            end
        end
    end
    %计算E3
    for x = 1:1:n
       for i = 1:1:n
          E3 = E3 + V(x ,i); 
       end
    end
    E3 = (E3 - n)^2;
    %计算E4
    for x = 1:1:n
       for y = 1:1:n
          for i = 1:1:n
              if i == 1
                  E4 = E4 + Distance(x, y)*V(x, i)*(0 + V(y, i+1));
              else
                  if i == n
                      E4 = E4 + Distance(x, y)*V(x, i)*(V(y, i-1) + 0);
                  else
                      E4 = E4 + Distance(x, y)*V(x, i)*(V(y, i-1) + V(y, i+1));
                  end
              end
          end
       end
    end

    fprintf('\t各项能量： \t%f \t%f \t%f \t%f \n', E1, E2, E3, E4);
    ENERGY(1) = E1;ENERGY(2) = E2;ENERGY(3) = E3;
    ENERGY(4) = E4;
    ENERGY(5) = A/2.0*E1 + B/2.0*E2 + C/2.0*E3 + D/2.0*E4;
%    F/2.0*E6
end