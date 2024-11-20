function [IMFs, residue] = emd(signal, maxNumIMF)
    residue = signal;
    IMFs = [];

    while (maxNumIMF > 0)
        IMF = residue;
        prevIMF = IMF + 1;
        
        while (~isMonotonic(prevIMF) && isNonZero(prevIMF))
            prevIMF = IMF;
            IMF = extractExtrema(residue);
        end

        residue = residue - IMF;
        IMFs = [IMFs, IMF];

        if (isZero(residue))
            break;
        end

        maxNumIMF = maxNumIMF - 1;
    end
end

function isMonotonic(signal)
    % Check if the signal is monotonic
    % Return true if it is, false otherwise
end

function isNonZero(signal)
    % Check if the signal is non-zero
    % Return true if it is, false otherwise
end

function IMF = extractExtrema(signal)
    % Extract the extrema from the signal
    % Return the extracted IMF
end

function isZero(signal)
    % Check if the signal is all zeros
    % Return true if it is, false otherwise
end

