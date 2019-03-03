%%
%¼¤Àøº¯Êý
function V = f(u, u0, n)
    for i = 1:1:n
       for j = 1:1:n
          V(i, j) = 1/2*(1 + tanh(u(i, j)/u0)); 
       end
    end
end