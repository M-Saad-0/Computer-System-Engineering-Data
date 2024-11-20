function imfs = emd(signal)
    % Empirical Mode Decomposition (EMD)

    % Initialize
    imfs = {};
    residue = signal;

    % Main EMD loop
    while ~is_monotonic(residue)
        [upper_env, lower_env] = envelope(residue);

        % Calculate mean as the next IMF
        mean_imf = (upper_env + lower_env) / 2;

        % Compute residue
        residue = residue - mean(mean_imf) * ones(size(residue));

        % Store IMF
        imfs = [imfs; {mean_imf}];
    end

    % Add the final residue as the last IMF
    imfs = [imfs; {residue}];
end

function monotonic = is_monotonic(signal)
    % Check if the signal is monotonic

    diff_signal = diff(signal);
    monotonic = all(diff_signal >= 0) || all(diff_signal <= 0);
end

