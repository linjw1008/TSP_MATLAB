%%
%Çó½âÂ·¾¶
function [ENERGY,Route,Time] = SolveTSP(A, B, C, D, City, tor, u0, t, Iteration, deltaE)
    SIZE = size(City);
    n = SIZE(1);
    W = 20:-(20-1)/(n-1):1;
    Distance = CalDistance(City);
    V = zeros(n, n);
    U = InitiateU(u0, n);
    Time = 0;
    
    for i = 1:1:Iteration
        dU = deltaU(A, B, C, D, U, V, Distance, n, tor);
        U = U + dU * t;
        V = f(U, u0, n);

        EnergyRes = Energy(A, B, C, D, V, n, Distance);
        ENERGY(i+1,:) = EnergyRes;
        de = ENERGY(i+1,:) - ENERGY(i,:);
        dE(i + 10,:) = ENERGY(i+1,:) - ENERGY(i,:);

        if abs(dE(i + 10,5)) <= deltaE && i >= 1000 && abs(dE(i,5)) <= deltaE
            Time = i;
            break;
        end
    end
    
    DisplayRoute(V, City, n);
    Route = GenerateRoute(V, City, n);
    
end