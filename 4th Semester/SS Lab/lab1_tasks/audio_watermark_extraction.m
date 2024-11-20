function extracted_watermark = audio_watermark_extraction(watermarked_audio_file, watermark_length)

    watermarked_audio = audioread(watermarked_audio_file);

    extracted_watermark = watermarked_audio(1:watermark_length);

    extracted_watermark = extracted_watermark > 0.5;

end


