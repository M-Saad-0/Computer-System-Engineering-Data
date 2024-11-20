function minima = islocalmin(signal)
    % Identify local minima in a signal

    % Calculate differences between adjacent samples
    diff_signal = diff(signal);

    % Find indices where the differences change sign from negative to positive
    change_indices = find(diff_signal(1:end-1) <= 0 & diff_signal(2:end) > 0) + 1;

    % Check if the corresponding signal values are smaller than neighboring values
    minima = signal(change_indices) < signal(change_indices-1) & signal(change_indices) < signal(change_indices+1);
end