function y = SignalResample(x, xFs, yFs)

    % Find the total time duration 'T'
    xTs = 1/xFs;
    T = (length(x)-1)*xTs;

    % Using 'T', define a time vector 'tx'
    tx = [0:1/xFs:T];

    % Using 'T', define the new time vector, 'ty' for our resampled time. 
    ty = [0:1/yFs:T];

    % Use interp1 to create y by resampling x
    y = interp1(tx,x,ty)
    
end