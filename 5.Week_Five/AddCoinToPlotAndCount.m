function [coinvalue,x_plot,y_plot,col] = AddCoinToPlotAndCount(x,y,cls)
    % initialize radians for defining x_plot and y_plot using cos and sin functions
    rads = 0:2*pi/32:2*pi;
    % initialize parameters for radius and color of circle for each type of coin

    radiusDime = 22;
    radiusNickel = 30;
    radiusQuarter = 40;

    % use if-elseif statement to define x_plot, y_plot, col
    %   when cls is 1, we found a dime
    if cls == 1
        coinvalue = 10;
        col = 'red';
        radius = radiusDime;
    %   when cls is 2, we found a nickel
    elseif cls == 2
        coinvalue = 5;
        col = 'green';
        radius = radiusNickel;
    %   when cls is 3, we found a quarter
    elseif cls == 3
        coinvalue = 25;
        col = 'magenta';
        radius = radiusQuarter;
    end

    x_plot = x+radius*cos(rads)
    y_plot = y+radius*sin(rads)

    plot(x_plot,y_plot,col);
end
