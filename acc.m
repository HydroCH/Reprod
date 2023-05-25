function accrate = acc(P_m, T_th, T)
    if T<=T_th
        accrate = P_m;
    else
        accrate = 0;
    end
end
