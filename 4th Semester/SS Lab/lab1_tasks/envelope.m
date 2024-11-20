function [upper_env, lower_env] = envelope(signal)
    % Calculate upper and lower envelopes of a signal

    % Initialize envelopes
    upper_env = zeros(size(signal));
    lower_env = zeros(size(signal));

    % Find local maxima and minima
    maxima = islocalmax(signal);
    minima = islocalmin(signal);

    % Calculate upper envelope
    upper_env(maxima) = signal(maxima);

    % Calculate lower envelope
    lower_env(minima) = signal(minima);

    % Interpolate between extrema
    upper_env = interp1(find(upper_env), upper_env(upper_env~=0), 1:numel(upper_env), 'pchip', 'extrap');
    lower_env = interp1(find(lower_env), lower_env(lower_env~=0), 1:numel(lower_env), 'pchip', 'extrap');
end
