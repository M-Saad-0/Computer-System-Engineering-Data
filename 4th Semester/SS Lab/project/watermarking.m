% Load the original audio signal
originalAudio = audioread('original_audio.wav');

% Load the watermark signal
watermark = audioread('watermark.wav');

% Normalize the watermark signal
watermark = watermark / max(abs(watermark));

% Parameters for EMD
numIMFs = 6;        % Number of Intrinsic Mode Functions (IMFs)
noiseStdDev = 0.05; % Standard deviation of noise to be added to IMFs

% Perform Empirical Mode Decomposition (EMD) on the original audio signal
[IMFs, ~] = emd(originalAudio, 'MaxNumIMF', numIMFs);

% Add the watermark signal to the last IMF
IMFs{end} = IMFs{end} + watermark;

% Add Gaussian noise to the IMFs
for i = 1:numIMFs
    IMFs{i} = IMFs{i} + noiseStdDev * randn(size(IMFs{i}));
end

% Reconstruct the watermarked audio signal
watermarkedAudio = sum(cat(3, IMFs{:}), 3);

% Save the watermarked audio
audiowrite('watermarked_audio.wav', watermarkedAudio, fs);

