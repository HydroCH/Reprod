function T_final = lapse(T_initial, delta_z, l)
    % Coefficient
    lapseRate = -0.6 / 100;  % C/m

    % Calculate final temperature
    T_final = T_initial + lapseRate * delta_z * l;
end

%This function takes three input parameters: 
%   T_initial (initial temperature in degrees Celsius), delta_z (change in elevation in meters), and l (glacier lapse rate in meters).
% The function uses a coefficient lapseRate of -0.6/100 C/m, which represents the rate
% at which the temperature decreases with increasing elevation.
% Inside the function, the final temperature T_final is calculated by adding the product of the lapse rate, 
% change in elevation, and glacier lapse rate to the initial temperature