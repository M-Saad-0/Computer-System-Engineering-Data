function extracted_watermark = audio_watermark_extraction_emd(watermarked_audio_file, watermark_length)
    % Audio watermark extraction using EMD
    
    % Load watermarked audio signal
    [watermarked_audio, sample_rate] = audioread(watermarked_audio_file);
    watermarked_audio = watermarked_audio';

    % Apply EMD decomposition
    imfs = emd(watermarked_audio);

    % Select IMF for watermark extraction
    selected_imf = 2;  % Select the second IMF (adjust as needed)
    extracted_watermark = imfs(selected_imf, end-watermark_length+1:end);
end