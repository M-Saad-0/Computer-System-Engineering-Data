function plotSignal(signal, x_axis, titleString, x_axisLabel, y_axisLabel)

    figure;
    plot(x_axis, signal);
    
    title(titleString);
    
    xlabel(x_axisLabel);
    ylabel(y_axisLabel);
    
    grid on;
end