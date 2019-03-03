%%
%TSP
clear all;

City = [10 10; 10 25;  ...
    17 50; 17 70; 17 80; ... 
    30 5; 30 40; 30 65; ... 
    50 10; 59 55; ...
    70 50; ...
    90 10];

tor = 1;
A = 50;
B = 50;
C = 50;
D = 0.3;
t = 10e-3;
u0 = 10;
Iteration = 500000;
deltaE = 1e-12;

while(true)
    [ENERGY,Route,Time] = SolveTSP(A, B, C, D, City, tor, u0, t, Iteration, deltaE);
    IsCorrect = IsCorrectRoute(Route);
    [CityDistance, RouteDistance] = CalRouteDistance(Route);
    if ~IsCorrect
        continue;
    else
        fprintf('各段路径长度 \n');disp(CityDistance);
        fprintf('路径总长度 %fm\n',RouteDistance);
        break;
     end
end
