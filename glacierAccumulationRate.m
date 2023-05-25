function accumulationRate = acc(P_m, T_th, T)
    % Constants
    densityWater = 1000;  % kg/m^3
    densitySnow = 300;  % kg/m^3

    % Check if T_th is provided, otherwise use default value
    if nargin < 2
        T_th = 4;  % degrees Celsius
    end

    % Calculate accumulation rate
    temperatureDifference = T - T_th;
    temperatureFactor = exp(0.09 * temperatureDifference);
    snowfallVolume = P_m / densityWater;
    snowfallMass = snowfallVolume * densitySnow;
    accumulationRate = snowfallMass * temperatureFactor;
end
% API's adapted code