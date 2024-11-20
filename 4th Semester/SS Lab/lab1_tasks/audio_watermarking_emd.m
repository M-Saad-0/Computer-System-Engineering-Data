function audio_watermarked_emd = audio_watermarking_emd(host_audio, watermark, selected_imf)
    % Apply EMD decomposition
    imfs = emd(host_audio);

    % Apply watermark to selected IMF
    imfs{selected_imf} = imfs{selected_imf} + watermark;

    % Reconstruct watermarked audio
    watermarked_audio = sum(cell2mat(imfs), 1);
end


