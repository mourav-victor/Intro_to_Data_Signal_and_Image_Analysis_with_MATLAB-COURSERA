function dist = standard_deviation_distance(v,x)  
    v_mean = mean(v);
    v_std = std(v);
    dist = (x - v_mean)/v_std;
end