function meltRate = glacierMeltRate(temperature, snowDepth)
    % Constants
    thermalConductivityIce = 2.2;  % W/(m*K)
    latentHeatFusionIce = 334000;  % J/kg
    densityIce = 917;  % kg/m^3
    densityWater = 1000;  % kg/m^3
    specificHeatWater = 4186;  % J/(kg*K)

    % Calculate melt rate
    temperatureDifference = temperature - 0;  % Difference from melting point of ice (0 degrees Celsius)
    thermalConductivityEff = thermalConductivityIce * (1 + 0.01 * temperatureDifference);
    heatTransfer = thermalConductivityEff * temperatureDifference;
    snowVolume = snowDepth;  % Assume constant density of snow
    snowMass = snowVolume * densityWater;
    energyRequired = snowMass * latentHeatFusionIce;
    meltRate = heatTransfer / energyRequired;
end



% This function takes two input parameters: temperature (in degrees Celsius) and snowDepth (in meters).
% It calculates the melt rate of the glacier based on the temperature and snow depth.
% The function uses some constants related to the properties of ice and water.
% The thermalConductivityIce is the thermal conductivity of ice, latentHeatFusionIce is the latent heat of fusion for ice,
% densityIce is the density of ice, densityWater is the density of water, and specificHeatWater is the specific heat capacity of water.
% Inside the function, the temperature difference between the input temperature and the melting point of ice (0 degrees Celsius) is calculated. The effective thermal conductivity of ice is then computed based on
