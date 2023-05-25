function accumulationRate = glacierAccumulationRate(precipitation, snowfallTemperature)
    % Constants
    densityWater = 1000;  % kg/m^3
    densitySnow = 300;  % kg/m^3

    % Calculate accumulation rate
    temperatureDifference = snowfallTemperature - 0;  % Difference from melting point of ice (0 degrees Celsius)
    snowfallVolume = precipitation / densityWater;  % Assume constant density of water
    snowfallMass = snowfallVolume * densitySnow;
    accumulationRate = snowfallMass * (1 - 0.01 * temperatureDifference);
end

% This function takes two input parameters: precipitation (in millimeters) and snowfallTemperature (in degrees Celsius).
% It calculates the accumulation rate of the glacier based on the precipitation and snowfall temperature.
%The function uses some constants related to the properties of water and snow.
% The densityWater is the density of water, and densitySnow is the density of snow.